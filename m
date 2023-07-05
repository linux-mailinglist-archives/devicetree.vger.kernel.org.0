Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D47F748817
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 17:33:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbjGEPdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 11:33:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbjGEPc7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 11:32:59 -0400
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D2B170B
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 08:32:58 -0700 (PDT)
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-345ff28865aso18253445ab.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 08:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688571177; x=1691163177;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/rvWHF9U8sfQkc3CHaYD6TnGiSef+e8bi34L1T0Ri7U=;
        b=hEs6mCiV+S1AnPKCVLbBE6J014SZWIODVvapzfbeenW0gN/iXuO1qnx6m4EVrrQMEs
         r545g8PUEyssBevFXcKdLATN7+Yfy1aQ93cCJ9qYBxEvTbdGE0tAhtIGmke8OIu3QLvP
         KXq4/qFLyfgeJKQ1cm0RikOnO/KqM/mW6gDHnS4lPeBC9XRd+fImAu8aizE/lTG0F5xa
         y0TCl04bix9TKwRiEI+fOfQ5h1N1vc+kPCJWQ+s9TX9MOf4GnuX7vdSwSGBpppuoDOK5
         DjtZhiM8BrPqYH1UxmWdioA2yvHQXc+EfO8s6JuGUu4cwM1cw0xsQieeC8rXe0X+nGfT
         2iVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688571177; x=1691163177;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rvWHF9U8sfQkc3CHaYD6TnGiSef+e8bi34L1T0Ri7U=;
        b=RJP1CnikpxGcPjr+rueZem7EolgoEg3SzMuGWaSC1fi6C5axIU9i+s6IR9BbDMzdOR
         vJXBVPJ6mfkyvV8Gy3ryT4SrwJ8uXC3Cgc2eS3A5ZvxVaSmnoHWLBNzfLSXhVnUXGpiH
         GD8YFnUvAPeX0Q/pmZ0JKthwf1HwX2oQWC9Vdy2tLQP3uPyRQ1bfIQcPe19aWuTOnIBv
         TBkL5y977aVNghiTvvhU12sKmj1pd7S3O3b79E5alOez+EhJQV7kq9UD67sVmMvr8NIg
         /AJUz7QHQX0uLL5/s9fW2WBuyuAgFfvp/mHg+i+ZT84CvXLh82l3tInsYXn4HirMZq2c
         bqJw==
X-Gm-Message-State: ABy/qLa94TmWCktHOKcrZJsU3yHVTO1VPQr7EnpKHGEgwayGeYxgZC02
        HtS+lyatHLF43r1IGaQuvHmQ07XVhf/o8w==
X-Google-Smtp-Source: APBJJlHVYcYNj0AWN+jIyjipazVXkXoBBdFwA36KNizeZYaZwrjyLVFXi00cia6u5eW2AWjDPiK3fA==
X-Received: by 2002:a92:c604:0:b0:345:ca59:1546 with SMTP id p4-20020a92c604000000b00345ca591546mr16856498ilm.10.1688571177537;
        Wed, 05 Jul 2023 08:32:57 -0700 (PDT)
Received: from kvasir.. ([65.140.126.83])
        by smtp.gmail.com with ESMTPSA id t9-20020a92c909000000b00345b53bdea4sm6290491ilp.37.2023.07.05.08.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 08:32:57 -0700 (PDT)
From:   Dan Haab <riproute@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Dan Haab <dan.haab@luxul.com>
Subject: [PATCH] ARM: dts: BCM5301X: Add Wi-Fi regulatory mappings for Luxul devices
Date:   Wed,  5 Jul 2023 09:32:51 -0600
Message-Id: <20230705153251.739236-1-riproute@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dan Haab <dan.haab@luxul.com>

This allows setting FullMAC firmware regulatory domain.

Signed-off-by: Dan Haab <dan.haab@luxul.com>
---
 .../dts/broadcom/bcm47094-luxul-xap-1610.dts  | 37 +++++++++++++++++++
 .../broadcom/bcm47094-luxul-xwr-3150-v1.dts   | 36 ++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
index 6875625869d9..afc635c8cdeb 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
@@ -64,6 +64,43 @@ &gmac0 {
 	nvmem-cell-names = "mac-address";
 };
 
+
+&pcie0 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	bridge@0,0 {
+		reg = <0x0000 0 0 0 0>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		wifi@0,0 {
+			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+			reg = <0x0000 0 0 0 0>;
+			brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
+		};
+	};
+};
+
+&pcie1 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	bridge@0,0 {
+		reg = <0x0000 0 0 0 0>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		wifi@0,0 {
+			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+			reg = <0x0000 0 0 0 0>;
+			brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
+		};
+	};
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
index 789dd2a3d226..e28f7a350117 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
@@ -81,6 +81,42 @@ &gmac0 {
 	nvmem-cell-names = "mac-address";
 };
 
+&pcie0 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	bridge@0,0 {
+		reg = <0x0000 0 0 0 0>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		wifi@0,0 {
+			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+			reg = <0x0000 0 0 0 0>;
+			brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
+		};
+	};
+};
+
+&pcie1 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	bridge@0,0 {
+		reg = <0x0000 0 0 0 0>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		wifi@0,0 {
+			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+			reg = <0x0000 0 0 0 0>;
+			brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
+		};
+	};
+};
+
 &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
-- 
2.34.1

