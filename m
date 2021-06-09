Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7653A134B
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239510AbhFILs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:56 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:38611 "EHLO
        mail-wr1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239466AbhFILsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:45 -0400
Received: by mail-wr1-f48.google.com with SMTP id c9so16444153wrt.5
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2oJBCb/IEp6HCT0Khc41E+ZKW3BEVh2wQ7Q+Btm9aLE=;
        b=u33UTezcqWw3EwAL8es1PrN9BNk7b9P6aXfTUXOzGWKzRU6LGDhufMDBOfMYaBaYT4
         j+iPZkh2PBwNtEMxwiJpskl5YbN7timv2lOCyKcRx77nrM176NuN5g+yB7ccIjUe71wo
         /ml5VXI12qXCAVDRpt3XDYylJsVS9SWUGGnBT9Zka4lUB2zTJ7cERD4MYes/g9WcBGLT
         YSuPRi1FN0kRIEAtMFSuMVB33yYz3IdtyNe30kSAuuzOGiiSFT63DL4msLO0oW9hPNN4
         UjltDjinK7zo/jy+pfcl1DTHlLUfEeuQt9BpWdPeWHuOJv0pOsbe8ukg1eibPAy8BLnf
         tx7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=2oJBCb/IEp6HCT0Khc41E+ZKW3BEVh2wQ7Q+Btm9aLE=;
        b=NQNKxBKYT04NfEW32Bx+r2rtBhyuKmWwgXZck/ekRaA+u2Jbo+X68TGvDbyRFUfYiP
         UoiDHM0BfPwHuwa6MhQtxtewevDsBMU4bw36pCI0iTPxsvII1uRv/ckr1xT4WGGOd7oR
         GDzXLaolqlRoa0do3g119XwqIlliKMtkhkhwUcA1GW/6xhtxixT2AtyVc6wI2SB0dw+a
         oKbRRscDVXYaLIeS6cNM/byWCrNzcE/GBu4fQugtR1q9Qh63D0uKTcZ3EHIQs1YIJwJk
         dRv+Rc5katfC4+FPcp1cubXDsww/z+h7XzLlrGmTx8ChEqaUYEg5UkV3z2RhB9+/cXrF
         uiFw==
X-Gm-Message-State: AOAM532z8W4IAGq9pFGSYaO/Kh3FmyjX+jfm8Qk6oiNYBTfPOpMRfCh/
        2R/OT4vhwDylL8D8iLeTLV6g3g==
X-Google-Smtp-Source: ABdhPJwu3dPsiYPGloJtXLHsOdDjrEjSlsgc0e2EjWGqoM/VtNdqkJ4OceOVsDvXUIFHi1wPvQEQHA==
X-Received: by 2002:a5d:6a41:: with SMTP id t1mr21296407wrw.113.1623239150445;
        Wed, 09 Jun 2021 04:45:50 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id l2sm23037103wrp.21.2021.06.09.04.45.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:50 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 17/31] arm64: zynqmp: Add nvmem alises for eeproms
Date:   Wed,  9 Jun 2021 13:44:53 +0200
Message-Id: <9b860b47ec3ca64340b4d29317e92b667236d7d1.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use nvmem alias to point to eeprom memory which contains information about
board. The change is done based on discussion in the link below.

Link: https://lore.kernel.org/r/CAL_JsqLMDqpkyg-Q7mUfw-XH67-v068Q6e9wTq2UOoN=0-_coQ@mail.gmail.com
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 3 ++-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 1 +
 5 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 1a45e4946dd4..339a12b255c1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index d7ecfcadd08b..4c328569c3ac 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -23,6 +23,7 @@ aliases {
 		ethernet0 = &gem3;
 		i2c0 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
@@ -146,7 +147,7 @@ i2c@0 {
 			 * 512B - 768B address 0x56
 			 * 768B - 1024B address 0x57
 			 */
-			eeprom@54 { /* u23 */
+			eeprom: eeprom@54 { /* u23 */
 				compatible = "atmel,24c08";
 				reg = <0x54>;
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index 403a8ea6a36f..99d172867f6a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -23,6 +23,7 @@ aliases {
 		ethernet0 = &gem3;
 		i2c0 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 186d2e00d4a0..dbb8bfbb5c7f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index e646246a3b14..85e9d0e2f9bd 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &dcc;
-- 
2.31.1

