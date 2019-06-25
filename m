Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C36152822
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 11:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728846AbfFYJcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 05:32:06 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:35414 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728676AbfFYJcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 05:32:05 -0400
Received: by mail-pf1-f193.google.com with SMTP id d126so9184946pfd.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 02:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=rpStZmf35igMxqzLeEFybCYnhueTgWtLq21mpmx87uQ=;
        b=lkRwaw1IUMjbuUdyCAHnbKBURaBkrUi37P3tS5gdfFTLedE3E79iT3ke2SHKBg9PZm
         uweWcx3f9W4ua0SkJy+FupZMmVyBSYFKPFi9TcCe0MkoPpHZbR5dmglZFXbAhYkSrmnb
         BHcQbrIRPav9Z2p0iJVqRb4I77GZkvtwdUJa+IrkhY/+rI/YTiDQRIydfn+QT2sa4JZc
         Dk9+PbIY9ZlIFXzHVy8A6FjkvRx+e3nPJdDfvuVSdtFy31mZ52P7vlfrcEy3LJP1+C/6
         Qpmw3cWv3L4O+jzdx8M0fqy32+Glba3bvb7tPgX4rwZktSZTJVoY7oGY3jC81O9tQTJP
         TJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rpStZmf35igMxqzLeEFybCYnhueTgWtLq21mpmx87uQ=;
        b=uSr66FEIGh+aHSMDoVnd4QpHqluPTjL4TEVzIPPckGHRSo25Q3Lpauuk+Azx5UNKic
         QRR1R93nFMTEge3dsk4hJhheuiDZ3x8ytu4GP74fs31tlr0DaWkZOxRBjPJ3qfIi0IJJ
         CtPXRDJyVLkRlWwInKVdZo60fhweDPdmkQVSZwc7AC7Z0uepBmJhn4JJkUXUWm8McCpt
         ZRuYzTJ5Q/v43s+N6WRMIyEMD248Ij6KdAJAgkiWbwBlN0qzL5ihJjWgIQoGiVS3rM6E
         roJ55m7cydVUNwOczY7VsiM7Inl4BmG0fBSFaC8ak+YucmX4o93PlRRVMSbRRTPjp7qX
         bwjA==
X-Gm-Message-State: APjAAAU43+Tegr5tBwqHtVEXSQ1hAGqd0WEckOlEBUX5W1niGtIhez0D
        s6mYTyEa0skCa+s5QA25PiAJbg==
X-Google-Smtp-Source: APXvYqzbAg5MBG2Xe6ojTiLwa+O3LoQWCgWKX7EW8u/iOuynr270+kNo1TQksKvvhwhqxIO76r/FpQ==
X-Received: by 2002:a63:d218:: with SMTP id a24mr38650537pgg.419.1561455125207;
        Tue, 25 Jun 2019 02:32:05 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id q19sm16634877pfc.62.2019.06.25.02.32.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 25 Jun 2019 02:32:04 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] riscv: dts: Re-organize the DT nodes
Date:   Tue, 25 Jun 2019 15:01:31 +0530
Message-Id: <1561455091-29488-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per the convention for any SOC device with external connection,
define only device DT node in SOC DTSi file with status = "disabled"
and enable device in Board DTS file with status = "okay"

Reported-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          |  6 ++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 13 +++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..cc73522 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -177,6 +177,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <4>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 		};
 		uart1: serial@10011000 {
 			compatible = "sifive,fu540-c000-uart", "sifive,uart0";
@@ -184,6 +185,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <5>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 		};
 		i2c0: i2c@10030000 {
 			compatible = "sifive,fu540-c000-i2c", "sifive,i2c0";
@@ -195,6 +197,7 @@
 			reg-io-width = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi0: spi@10040000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -205,6 +208,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi1: spi@10041000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -215,6 +219,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi2: spi@10050000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -224,6 +229,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 4da8870..0b55c53 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -42,7 +42,20 @@
 	};
 };
 
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+};
+
 &qspi0 {
+	status = "okay";
 	flash@0 {
 		compatible = "issi,is25wp256", "jedec,spi-nor";
 		reg = <0>;
-- 
1.9.1

