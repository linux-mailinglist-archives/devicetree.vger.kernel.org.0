Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DCB046E4CB
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2019 13:12:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727865AbfGSLLV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jul 2019 07:11:21 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:34681 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727552AbfGSLLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jul 2019 07:11:20 -0400
Received: by mail-pg1-f196.google.com with SMTP id n9so8101474pgc.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 04:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IKhuottjSxGgkbg5ejXRJ13eEQQXYdAPGmSw9/+AZpM=;
        b=f0rfqSr8iPuQsrcdJa7bP1GKgSw6HqJLzd3G8kjOeeNfce2hkPx2LHfLaJkctQQWke
         rwx70Ut7Mo2fXlmmQV9u6ige+fNLdxpOsqDXRtzjTQZWsKG6WabWBqJfKkcZigWGpSst
         3BaZwFEFlTzxaIvyEgZ/WDWHbd2GqUQvW1DlF2vVaEK9lEuDUeF/sGDdDYywVkHoMZdW
         FxmDYgLAOGpLPZFxWZnZ3jfFSuge4/HUzDzIbEi2mNUlAh0lxTWRtN953REBKy8zgGtj
         4b8C3ElW6Z+VuHXNq7UhUc0qr/B5rp5hsUKwy6K7YH4RrpsQVrxkUuFQGZO5vzdHgdH2
         mTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IKhuottjSxGgkbg5ejXRJ13eEQQXYdAPGmSw9/+AZpM=;
        b=mv8Ynj545/0ZhP5W1SzItd0BGMnRSVpVPESVjpfIGunv8wTssAgvLIwfJ+5T0W38as
         ryODlAm10Izhe+vy4EDGPSmZggusvaEUGxuOmLwjIAXejekcjHsDP7W7/I/wGYUbDvNE
         gnXc51Qkb4oEstn+6f8wyso5P8CzqZ2J1vZ3cBtpgLP8LfL6EdNqTmi0XYsBsqtAnF5Q
         DOuEq0MFx2lQ7HKiAG3qJU9Bq0XVJhD3JrGBZGk0OdIOeV2sngUmux4G8Ka69/pKdWur
         2948Hq98zdYEckzjnUyEk2OddfWfUalB1hGBKdu8mSDXZ3nG3laMXQVwXKEeDps3EGBe
         Te+Q==
X-Gm-Message-State: APjAAAWkI5VSeOI/tOTHlhg1M8EtiH9WOV8n3lFk5f4ycqtCRUtStQ4j
        EdAstIH8qO5XmERAOmZ1vzvYxw==
X-Google-Smtp-Source: APXvYqzZbKp8wDFScLKLbk1R27CUweZE7G31LV4oG/v3a7WShdgFSbpMho8p4fb5WJQzUoI3VtccEQ==
X-Received: by 2002:a17:90a:5887:: with SMTP id j7mr56584685pji.136.1563534680244;
        Fri, 19 Jul 2019 04:11:20 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id i9sm10196872pgg.38.2019.07.19.04.11.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Jul 2019 04:11:19 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     davem@davemloft.net, robh+dt@kernel.org, paul.walmsley@sifive.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        nicolas.ferre@microchip.com, ynezz@true.cz,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver
Date:   Fri, 19 Jul 2019 16:40:31 +0530
Message-Id: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 +++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index cc73522..588669f0 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -231,5 +231,20 @@
 			#size-cells = <0>;
 			status = "disabled";
 		};
+		eth0: ethernet@10090000 {
+			compatible = "sifive,fu540-c000-gem";
+			interrupt-parent = <&plic0>;
+			interrupts = <53>;
+			reg = <0x0 0x10090000 0x0 0x2000
+			       0x0 0x100a0000 0x0 0x1000>;
+			local-mac-address = [00 00 00 00 00 00];
+			clock-names = "pclk", "hclk";
+			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
+				 <&prci PRCI_CLK_GEMGXLPLL>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 0b55c53..85c17a7 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -76,3 +76,12 @@
 		disable-wp;
 	};
 };
+
+&eth0 {
+	status = "okay";
+	phy-mode = "gmii";
+	phy-handle = <&phy1>;
+	phy1: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
-- 
1.9.1

