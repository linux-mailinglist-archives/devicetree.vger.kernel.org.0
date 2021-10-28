Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5D743DBA3
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 09:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbhJ1HGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 03:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbhJ1HGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 03:06:13 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4669FC061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 00:03:47 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b12so3886398wrh.4
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 00:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tYJf3pPXy66b6fOeFSuwXiQ13fKQDUAgQENZhWkIem0=;
        b=pp6s8C2MnjyDkTBNBkmTo91foNk3zr0KIlSe/h+ScJQSuVSn5RIpnlMjwUF8rRJnAn
         0sakS0pMa5m9GXqERtRNB0As3ROYmhA1IGWtpmzN3pEuABqtvwJqOe8axJ5PjJXfYca2
         +u7bIud0OjwLEvQuLAcmva0Wu6qGlMjKaQ3czMTk7rwIilv/6zPpskLiJ3ZhSHS1Ywcb
         3e/BXL1Om2SUgmPhqhhyRvYDS8XQxCICe0vPvTSHOo1+efutMWhexkUKETy+ZZLDiL0v
         4x592WhTGR84o0987uCjbvXbfQde+kNqBTk4d0ywVkxWrAqqitPPCQig8Vf4X85T/M2e
         waLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tYJf3pPXy66b6fOeFSuwXiQ13fKQDUAgQENZhWkIem0=;
        b=DVVJBCOx1oQ2BtEA3iAsytsWt3h6064NT6dK80KxZitloyOIT8oFQOewbLNspO0Gd4
         /1cEfIQHKic0lXeWPPk4MQ1qbwacOlvRcmcISuKxO24v82++LtRX7GLNKd0AArqIVAO/
         JPpk35K7L8PTHCi8k1Chb0HTlOs8tnBSjjxbnvMaaWPAtnVjKPwJF0ZL62yfCtZXi12/
         pYiAti8DLExQor2BtLBf9a9l7vR/AHx3pBLr02214p7avTlhBQP091kklye/MzOWS5UT
         hRip/DlOgoQaLk3qlz5X6C88MfiACQ3NRA6zgQxLA0DKFyPaN+Xdyn+GNjH2gEWl70tc
         SBlw==
X-Gm-Message-State: AOAM533YUuZFseIEd5z3bp1W0aZRYZ8PxSFiirGFxxL4W/1XslmEfORm
        T4AR36u0pJK3DzpVZ7dpPbA=
X-Google-Smtp-Source: ABdhPJx82lbZL/Ko7/2tCtLAVKWmH9SkWfTr4pyYw6eZs5gcLHZ+PAeiJTo+6Fcj1g/kal3POynyJA==
X-Received: by 2002:adf:d1c2:: with SMTP id b2mr3324666wrd.73.1635404625873;
        Thu, 28 Oct 2021 00:03:45 -0700 (PDT)
Received: from debian64.daheim (p5b0d7857.dip0.t-ipconnect.de. [91.13.120.87])
        by smtp.gmail.com with ESMTPSA id y5sm2469651wrd.75.2021.10.28.00.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 00:03:45 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1mfzRw-0003IE-Vy;
        Thu, 28 Oct 2021 09:03:44 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthew Hagan <mnhagan88@gmail.com>
Subject: [PATCH v1] ARM: BCM53016: MR32: convert to Broadcom iProc I2C Driver
Date:   Thu, 28 Oct 2021 09:03:44 +0200
Message-Id: <20211028070344.12652-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

replaces the bit-banged i2c-gpio provided i2c functionality
with the hardware in the SoC.

During review of the MR32, Florian Fainelli pointed out that the
SoC has a real I2C-controller. Furthermore, the connected pins
(SDA and SCL) would line up perfectly for use. Back then I couldn't
get it working though and I left it with i2c-gpio (which worked).

Now we know the reason: the interrupt was incorrectly specified.
(Hence, this patch depends on Florian Fainelli's
"ARM: dts: BCM5301X: Fix I2C controller interrupt" patch).

Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Rafał Miłecki <zajec5@gmail.com>
Cc: Matthew Hagan <mnhagan88@gmail.com>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 62 ++++++++++------------
 1 file changed, 28 insertions(+), 34 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index c58e75dde7b3..6ae74c3d85c3 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -84,40 +84,6 @@ blue {
 			max-brightness = <255>;
 		};
 	};
-
-	i2c {
-		/*
-		 * The platform provided I2C does not budge.
-		 * This is a replacement until I can figure
-		 * out what are the missing bits...
-		 */
-
-		compatible = "i2c-gpio";
-		sda-gpios = <&chipcommon 5 GPIO_ACTIVE_HIGH>;
-		scl-gpios = <&chipcommon 4 GPIO_ACTIVE_HIGH>;
-		i2c-gpio,delay-us = <10>; /* close to 100 kHz */
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		current_sense: ina219@45 {
-			compatible = "ti,ina219";
-			reg = <0x45>;
-			shunt-resistor = <60000>; /* = 60 mOhms */
-		};
-
-		eeprom: eeprom@50 {
-			compatible = "atmel,24c64";
-			reg = <0x50>;
-			pagesize = <32>;
-			read-only;
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			mac_address: mac-address@66 {
-				reg = <0x66 0x6>;
-			};
-		};
-	};
 };
 
 &uart0 {
@@ -228,3 +194,31 @@ fixed-link {
 		};
 	};
 };
+
+&i2c0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinmux_i2c>;
+
+	clock-frequency = <100000>;
+
+	current_sense: ina219@45 {
+		compatible = "ti,ina219";
+		reg = <0x45>;
+		shunt-resistor = <60000>; /* = 60 mOhms */
+	};
+
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		pagesize = <32>;
+		read-only;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mac_address: mac-address@66 {
+			reg = <0x66 0x6>;
+		};
+	};
+};
-- 
2.33.1

