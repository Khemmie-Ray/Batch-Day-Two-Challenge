"use client";
import Image from "next/image";
import styles from "./page.module.css";
import { Wallet } from "@coinbase/onchainkit/wallet";

export default function Home() {
  return (
    <div className={styles.container}>
      {/* <header className={`${styles.headerWrapper} flex justify-between`}> */}
      <header className="flex justify-between">
        <div>
        <Image
          priority
          src="/sphere.svg"
          alt="Sphere"
          width={20}
          height={20}
        />
        </div>
        <Wallet />
      </header>

      <div className={styles.content}></div>
    </div>
  );
}
