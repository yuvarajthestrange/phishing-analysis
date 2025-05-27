import sys
import os
import email

def extract_headers(eml_path, output_dir):
    with open(eml_path, 'r', encoding='utf-8', errors='ignore') as f:
        msg = email.message_from_file(f)
    
    os.makedirs(output_dir, exist_ok=True)
    
    basename = os.path.splitext(os.path.basename(eml_path))[0]
    output_file = os.path.join(output_dir, f"{basename}_headers.txt")
    
    with open(output_file, 'w', encoding='utf-8') as out_f:
        for header, value in msg.items():
            out_f.write(f"{header}: {value}\n")
    
    print(f"Headers extracted and saved to: {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python extract_headers.py <path_to_eml_file> <output_analysis_dir>")
        sys.exit(1)
    
    eml_path = sys.argv[1]
    output_dir = sys.argv[2]
    extract_headers(eml_path, output_dir)
