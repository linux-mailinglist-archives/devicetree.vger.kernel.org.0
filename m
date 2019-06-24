Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1BE5509B7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 13:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729096AbfFXLY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 07:24:28 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38395 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729787AbfFXLY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 07:24:28 -0400
Received: by mail-pg1-f196.google.com with SMTP id z75so4346640pgz.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 04:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=cPO95tQ02ItJUXKI0dlIoUOx9gg/Y99XsbDXMsh4yyo=;
        b=JPNxft3APis+w63JZCUevjDC4FQtwDYcNWMo5bWBOLjBiw7leJlkdff0ToQiDXNy2f
         eT1qyEHIOFYlUtBmnICfl7Zj0PoedCNri3AuuzCCnTGCUbEuEbj0JbIug0kQyGBFpVJ5
         rB3WESNwo3RlmIwwBJnJGiLlzTfYcKWoW4ih19orBUKAa8r+BoiDPTYueKGYmcu1ivb3
         5mKHWuYgG7+5Rd03JpM/cjyHTsPrrQw+Q6ZfhC6geHyGgDIasIhWCKikRNPLmuGBNfwh
         XQ5F9jl+vPPyoOst6mRAMO1qlj/AASwLG3jdugDZfjqkZIjvsxjAtkgHqpESO75owI1e
         WWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cPO95tQ02ItJUXKI0dlIoUOx9gg/Y99XsbDXMsh4yyo=;
        b=Iw90l41vFPtrrsnMWRTFKjogeuvwETXz5dKLKuM3ZT/+q8J/KoFg9uSMpqEnipkiDV
         u5cXvMclWuRenhVvuigFhQd2P2FBVAv9s7nkUzlIIvHQZZZmgrWVp8TltDGdiaAVKzyf
         mBbfj5g8od2i9at6InhUGHYw22+KzQq04pKvRctAs6pVUnfh8n3CdSKsZbLfWLBVB8n3
         +GyJT3Bj/zfkkNkKzEzc1GA9Sp2DimSyatv0FJNFR9+oWJLLQPC/FLMyumnENr9g30se
         kPNjqoOWT2h3xA1GSgdZTrZkFL8de//ZN2M7PBpki+zve77JuFgQ0k/ePlmjIx8xDPWf
         bN2g==
X-Gm-Message-State: APjAAAXZK9PHRCW1C65yKwZDMkLNmRHNEGkV4AbaONXFYjYa4eEEXWsC
        ePRc63CcZ/R7N+otxKgQfvle6A==
X-Google-Smtp-Source: APXvYqxMZQ4aLs+DdHurIPQVyUtL6Vwf4JhyCVXzEEUkRFr418zSvSkIzfy4Hf9658l7TWn9tUBPlg==
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr23689463pje.123.1561375467383;
        Mon, 24 Jun 2019 04:24:27 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id b24sm10635119pfd.98.2019.06.24.04.24.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 24 Jun 2019 04:24:26 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] riscv: dts: Re-organize SPI DT nodes
Date:   Mon, 24 Jun 2019 16:54:13 +0530
Message-Id: <1561375453-3135-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per the General convention, define only device DT node in SOC DTSi
file with status = "disabled" and enable device in Board DTS file with
status = "okay"

Reported-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 3 +++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..270f6e8 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -203,6 +203,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <51>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
@@ -213,6 +214,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <52>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
@@ -222,6 +224,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <6>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 4da8870..73e2af6 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -43,6 +43,7 @@
 };
 
 &qspi0 {
+	status = "okay";
 	flash@0 {
 		compatible = "issi,is25wp256", "jedec,spi-nor";
 		reg = <0>;
-- 
1.9.1

