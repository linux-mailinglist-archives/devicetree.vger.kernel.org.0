Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCA617684F8
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 13:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjG3LPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 07:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbjG3LPn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 07:15:43 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7AD1730
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:15:40 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c10ba30afso51627266b.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690715739; x=1691320539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=60SWNJaNV4tC0O+dHQ6OkEZk+glu++Ik9FCyrUU58Lk=;
        b=HxX+d5RYKg8L7BfQAP0Pc+GsXgpgr86jB0DPj3Qcm8yE2+C0EVQ/grUOnjNs5/aq6d
         qHTCkA2R1Uu83AepVmP+KmENuCJbZtsht34v64gqp7iY79DnkhhQObC1AcTjAdYHbtlK
         iClklxqLxMmDQ2K37xrh9lePd9oF+7g8mkiSUlkZYOxlq5LWGQGASWabODHOgzynLeLk
         kwafgBdQSicgdGiJcbEftWsgUr+mlWr5gy8NLSfeki7I8HsdFbaQXzQxHyIrBM2nakxA
         N7EjPqEuE0W1trYflhK5uXvEJE04aJMrCJXhaJoehiVgQJoX5AKx2FUuePzZQzA5Z6n5
         iqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690715739; x=1691320539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60SWNJaNV4tC0O+dHQ6OkEZk+glu++Ik9FCyrUU58Lk=;
        b=iv9V12nLwPrHpU5BODOD3bJIhrarr+YF2DTT1qiOacUXy/O90Jbhhs/wchXQNP4yPf
         Sga1sQloPmaEHembIc/fnsOPgA6PXyr54vDNVY5xsQleGdPjQx4uw2oPWdHp8NyYrBKV
         dxAhi54FZQWFSJFslXt9WF2t/+28XiMQnUa9yDpnnGQQaDqt3ak4wmq9GVcoKEKtinqH
         esgAoBoh+V2niPTn/d5yZQJvltkAQ+5+q1HOytuNy+ZUCR7orgAQAKK6nMu57FV+y4lS
         y8HAGFYLXQPMaov5mjifXDuf+Xg1Zyeu4POVbB7lkuQKZeABJkuKafqsm619/v5wHKRl
         xWKQ==
X-Gm-Message-State: ABy/qLYSWX5motvxco0JZx2MDSM9/Nl6EEl0FJjFm1ExmvMukW6BCAFM
        QjZxcYmw5NjUtCRQvm9846anTrinw5G1ggLEmZI=
X-Google-Smtp-Source: APBJJlFXBaGmENNJpHK3sP89cHAxgA5CghPTpwI7R9ank1cMWDM137kN2j6bPnnYiX0+7W0CQpFaqw==
X-Received: by 2002:a17:906:8a54:b0:99b:ce6d:fc90 with SMTP id gx20-20020a1709068a5400b0099bce6dfc90mr4598020ejc.2.1690715738867;
        Sun, 30 Jul 2023 04:15:38 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id z10-20020a170906714a00b00985bdb7dd5fsm4471018ejj.201.2023.07.30.04.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 04:15:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: st: spear: split interrupts per cells
Date:   Sun, 30 Jul 2023 13:15:36 +0200
Message-Id: <20230730111536.98164-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each interrupt should be in its own cell.  This is much more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/spear1340.dtsi |  8 ++++----
 arch/arm/boot/dts/st/spear13xx.dtsi | 24 ++++++++++++------------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/st/spear1340.dtsi b/arch/arm/boot/dts/st/spear1340.dtsi
index d54e10629a7d..51f6ffd08b42 100644
--- a/arch/arm/boot/dts/st/spear1340.dtsi
+++ b/arch/arm/boot/dts/st/spear1340.dtsi
@@ -63,8 +63,8 @@ i2s-play@b2400000 {
 			compatible = "snps,designware-i2s";
 			reg = <0xb2400000 0x10000>;
 			interrupt-names = "play_irq";
-			interrupts = <0 98 0x4
-				      0 99 0x4>;
+			interrupts = <0 98 0x4>,
+				     <0 99 0x4>;
 			play;
 			channel = <8>;
 			status = "disabled";
@@ -74,8 +74,8 @@ i2s-rec@b2000000 {
 			compatible = "snps,designware-i2s";
 			reg = <0xb2000000 0x10000>;
 			interrupt-names = "record_irq";
-			interrupts = <0 100  0x4
-				      0 101 0x4>;
+			interrupts = <0 100 0x4>,
+				     <0 101 0x4>;
 			record;
 			channel = <8>;
 			status = "disabled";
diff --git a/arch/arm/boot/dts/st/spear13xx.dtsi b/arch/arm/boot/dts/st/spear13xx.dtsi
index 913553367687..3b6897084e26 100644
--- a/arch/arm/boot/dts/st/spear13xx.dtsi
+++ b/arch/arm/boot/dts/st/spear13xx.dtsi
@@ -39,8 +39,8 @@ gic: interrupt-controller@ec801000 {
 
 	pmu {
 		compatible = "arm,cortex-a9-pmu";
-		interrupts = <0 6 0x04
-			      0 7 0x04>;
+		interrupts = <0 6 0x04>,
+			     <0 7 0x04>;
 	};
 
 	L2: cache-controller {
@@ -141,10 +141,10 @@ fsmc: flash@b0000000 {
 			       0xb0820000 0x0010	/* NAND Base ADDR */
 			       0xb0810000 0x0010>;	/* NAND Base CMD */
 			reg-names = "fsmc_regs", "nand_data", "nand_addr", "nand_cmd";
-			interrupts = <0 20 0x4
-				      0 21 0x4
-				      0 22 0x4
-				      0 23 0x4>;
+			interrupts = <0 20 0x4>,
+				     <0 21 0x4>,
+				     <0 22 0x4>,
+				     <0 23 0x4>;
 			st,mode = <2>;
 			status = "disabled";
 		};
@@ -152,8 +152,8 @@ fsmc: flash@b0000000 {
 		gmac0: eth@e2000000 {
 			compatible = "st,spear600-gmac";
 			reg = <0xe2000000 0x8000>;
-			interrupts = <0 33 0x4
-				      0 34 0x4>;
+			interrupts = <0 33 0x4>,
+				     <0 34 0x4>;
 			interrupt-names = "macirq", "eth_wake_irq";
 			status = "disabled";
 		};
@@ -263,8 +263,8 @@ i2s@e0180000 {
 				compatible = "st,designware-i2s";
 				reg = <0xe0180000 0x1000>;
 				interrupt-names = "play_irq", "record_irq";
-				interrupts = <0 10 0x4
-					      0 11 0x4 >;
+				interrupts = <0 10 0x4>,
+					     <0 11 0x4>;
 				status = "disabled";
 			};
 
@@ -272,8 +272,8 @@ i2s@e0200000 {
 				compatible = "st,designware-i2s";
 				reg = <0xe0200000 0x1000>;
 				interrupt-names = "play_irq", "record_irq";
-				interrupts = <0 26 0x4
-					      0 53 0x4>;
+				interrupts = <0 26 0x4>,
+					     <0 53 0x4>;
 				status = "disabled";
 			};
 
-- 
2.34.1

