Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F07CC34D43B
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:46:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbhC2Pp6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230362AbhC2Ppa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 11:45:30 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B2DAC061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:45:30 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id o10so19107048lfb.9
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BM87CZz5ajHfcccj4121mwV1hUSr4Zl1iWcn0fRljo4=;
        b=nNunVV2lYHhyvB6WxgzLahmurC6AKEDGqC5OJWLfQ8BQYZYTntpBdTN8M8aW8VorVC
         1r5SWmG9RHfVUHFaR626g7iDkxhPh7l87p9MZsu432a6U8B3YZqeNDQbZlDJlBAKwsX3
         2VIjqeUMmKroculx8I8nnCAgh0Q1+6erwS4vDByM9uH8132iFamLWPgOwPo4orQ+Rjhg
         /oakDrv2mNMA9HxYQj2B5NLVsdsnluIyhrXW6a0SzRqC3PCdEJe1KQeTbFT8zOjEFy9E
         0/LHv/PoOxQTTrpp7v7UFeAYmSl4R5paGMJSeRjGrn2Fvu3kvwUer6T7V9EXfQtR5H1t
         i1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BM87CZz5ajHfcccj4121mwV1hUSr4Zl1iWcn0fRljo4=;
        b=tjbJAS9j/o3Mr2BQV7O/eSeFlSCJhyQwZ72aPoiMIi+8unsmb/65hGkhA65D+8Fpr9
         JnIiG72gFrrRQRiAD9IacRQEUQHcgHkmg2ttSdkchktE1jaD9ZRHh1jK/iKAxpqfiIav
         +BMn7Td39wgPyyM3HDXRw5siNl8v6hwP8hDPcl2i9nNUwQ9PaEpSFK6E+S6qshvhySYw
         /Pb8+ORGr5pbfIn16gGqRhc8cHLX+pR4EpId14jbaSXJ2t+z6VBAky7IF77ShcTwEdth
         vkoi4qD8MNot3e/47vkIcUMD5+FWY1eGLHmhSLvvBcIGDMW0fs6O56pgSXDp2awwLKG7
         F1RA==
X-Gm-Message-State: AOAM532pQuQ4KqbnA1u/FT/q+t5inSzwYw1oYzouoSqr1v7LpHD1eFu9
        D8avfo94DQYCy/TWuwV2cMz1dBIiUNrN4Q==
X-Google-Smtp-Source: ABdhPJyaUliTub/C+LhR0aIJwRh/kDC5p6nJipCE+m9niyLf5iW5S1nslMbey+2s+3A2klTtrbcP5g==
X-Received: by 2002:a19:68c:: with SMTP id 134mr17539238lfg.155.1617032728693;
        Mon, 29 Mar 2021 08:45:28 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id h7sm1870965lfg.246.2021.03.29.08.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 08:45:27 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux] arm64: dts: broadcom: bcm4908: add Ethernet MAC addr
Date:   Mon, 29 Mar 2021 17:45:14 +0200
Message-Id: <20210329154514.29510-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

On most BCM4908 devices MAC address can be read from the bootloader
binary section containing device settings. Use NVMEM to describe that.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Related Ethernet bindings fixes:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210329140317.23343-1-zajec5@gmail.com/
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210329153328.28493-1-zajec5@gmail.com/

This commit will introduce a new warning / error:
arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dt.yaml: partitions: partition@0:compatible:0: 'brcm,bcm4908-firmware' was expected
        From schema: Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml

Binding fix avoiding above is in progress, see:
[PATCH RFC] dt-bindings: mtd: allow NVMEM cells in BCM4908 partitions
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210329150723.26584-1-zajec5@gmail.com/
---
 .../broadcom/bcm4908/bcm4906-netgear-r8000p.dts    | 14 ++++++++++++++
 .../broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts    | 14 ++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index 41e8fbf095c6..2dd028438c22 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -74,6 +74,11 @@ led-wifi {
 	};
 };
 
+&enet {
+	nvmem-cells = <&base_mac_addr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &usb_phy {
 	brcm,ioc = <1>;
 	status = "okay";
@@ -130,8 +135,17 @@ partitions {
 		#size-cells = <1>;
 
 		partition@0 {
+			compatible = "nvmem-cells";
 			label = "cferom";
 			reg = <0x0 0x100000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x0 0x100000>;
+
+			base_mac_addr: mac@106a0 {
+				reg = <0x106a0 0x6>;
+			};
 		};
 
 		partition@100000 {
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index b049a12a4133..169fbb7cfd34 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -44,6 +44,11 @@ brightness {
 	};
 };
 
+&enet {
+	nvmem-cells = <&base_mac_addr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &usb_phy {
 	brcm,ioc = <1>;
 	status = "okay";
@@ -128,8 +133,17 @@ partitions {
 		#size-cells = <1>;
 
 		partition@0 {
+			compatible = "nvmem-cells";
 			label = "cferom";
 			reg = <0x0 0x100000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x0 0x100000>;
+
+			base_mac_addr: mac@106a0 {
+				reg = <0x106a0 0x6>;
+			};
 		};
 
 		partition@100000 {
-- 
2.26.2

