Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7460F36211F
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 15:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244071AbhDPNie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 09:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240255AbhDPNie (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 09:38:34 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6855EC061574
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:09 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id x20so14526565lfu.6
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GWSOjlZXxwUSOU910bqL41nHp+qOEswR2OpnvakbvcY=;
        b=jNv2sQj+VJOaJRskvRBUEPXthNx/oI49HsHGJdpfUq6xHHfnj3uV9cna37tsb+RvLt
         kv0jkIBJdH2WPVtRs1A4wxNDAxqd+P+/1GB1EWI71fY9ddND6/Bt/kakcjfsiga2A4Vm
         bEHewC/ih6NG5gzBci10TSfgrnhlKB0ysJLbnQRFsVd5jE+R9xH4GbHLIYA1qDx81hTV
         6TuCWzXLUe5WPUhJnkPTduXUCLeAFLCzQgeNCD/iocE3k1s2dqgfNGDIpBgkVflFL18J
         YBqGN/4H7uG+ySU0XcASYODRw398iFWRmgjnF9w9CTZVISJegdrPLozGxibQzh77TUNH
         Erjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GWSOjlZXxwUSOU910bqL41nHp+qOEswR2OpnvakbvcY=;
        b=lI39sbNF4iip/aIHfVqIoSlKyOwgHkQlp6dqOq4N3YzxPOaoC7UT1j0qNbyRvQMBSn
         JFRkTcSu1/iRsfiTHEioalh8LQcDtLAn6Oyz/CpdX01ZHCcI0ZNd4wWjEh6leiki8Q71
         XQ3GVAEn+PKZ+u/mmG4MPCI7L+AF8/doPb7hY7xrLwVRBubh2I7JOZhT3AvqyEoAkQ8d
         9iw1bc5xs7SFTJ/dpnHenySNEUpCrvxap7dZ7qfUHFGu41WgI12vqsJdIn/uzdTsjl2h
         wPFoMKAkuDKtqn1dS7OdTUVuB8untx5t0c2nDy7Bh6YSSvIvgvWjvnATORcc8MJQYVct
         JXnQ==
X-Gm-Message-State: AOAM530vzFv4EAnvkM9FQt6s04TbYINGFezTFPQrx/2gfOOo4LXwn11a
        9JpfFTpMeRPrV2mg5thjesY=
X-Google-Smtp-Source: ABdhPJwDpFTOasWglgAMKOcLyBZoZn6Zn+AdLaqjJXM6BXI12XZV7j21Zz4Lb7ijTToRTGUfU04veQ==
X-Received: by 2002:a19:e309:: with SMTP id a9mr2982831lfh.222.1618580287294;
        Fri, 16 Apr 2021 06:38:07 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y14sm948405ljy.18.2021.04.16.06.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 06:38:06 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux 1/6] ARM: dts: BCM5301X: Fix NAND nodes names
Date:   Fri, 16 Apr 2021 15:37:48 +0200
Message-Id: <20210416133753.32756-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches nand-controller.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts     | 4 ++--
 arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi          | 4 ++--
 arch/arm/boot/dts/bcm5301x.dtsi                   | 2 +-
 arch/arm/boot/dts/bcm953012k.dts                  | 4 ++--
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index 8636600385fd..c81944cd6d0b 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -24,8 +24,8 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
-	nand: nand@18028000 {
-		nandcs@0 {
+	nand_controller: nand-controller@18028000 {
+		nand@0 {
 			partitions {
 				compatible = "fixed-partitions";
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
index e635a15041dd..a6e2aeb28675 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
@@ -25,8 +25,8 @@ memory@0 {
 		      <0x88000000 0x08000000>;
 	};
 
-	nand: nand@18028000 {
-		nandcs@0 {
+	nand_controller: nand-controller@18028000 {
+		nand@0 {
 			partitions {
 				compatible = "fixed-partitions";
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi b/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
index 925a7c9ce5b7..be9a00ff752d 100644
--- a/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
+++ b/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
@@ -6,8 +6,8 @@
  */
 
 / {
-	nand@18028000 {
-		nandcs: nandcs@0 {
+	nand-controller@18028000 {
+		nandcs: nand@0 {
 			compatible = "brcm,nandcs";
 			reg = <0>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 7db72a2f1020..092ec525c01c 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -501,7 +501,7 @@ rng: rng@18004000 {
 		reg = <0x18004000 0x14>;
 	};
 
-	nand: nand@18028000 {
+	nand_controller: nand-controller@18028000 {
 		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
 		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
 		reg-names = "nand", "iproc-idm", "iproc-ext";
diff --git a/arch/arm/boot/dts/bcm953012k.dts b/arch/arm/boot/dts/bcm953012k.dts
index 046c59fb4846..de40bd59a5fa 100644
--- a/arch/arm/boot/dts/bcm953012k.dts
+++ b/arch/arm/boot/dts/bcm953012k.dts
@@ -49,8 +49,8 @@ memory@80000000 {
 	};
 };
 
-&nand {
-	nandcs@0 {
+&nand_controller {
+	nand@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-on-flash-bbt;
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 9354077f74cd..b69c87d7d9a2 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -269,7 +269,7 @@ nand@1800 {
 			interrupt-names = "nand";
 			status = "okay";
 
-			nandcs: nandcs@0 {
+			nandcs: nand@0 {
 				compatible = "brcm,nandcs";
 				reg = <0>;
 			};
-- 
2.26.2

