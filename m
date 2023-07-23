Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A317775E4A7
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 21:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjGWTyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 15:54:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjGWTyc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 15:54:32 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C5871A2
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:28 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98377c5d53eso596198066b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690142067; x=1690746867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PU68Y14u0oDuProMFWvbvX6JIUrkSISsGTW44C/+FgY=;
        b=L+EOZS4jc2/QsuQO46uC9NQ4YOXH7SsDuht4n6kBlr31LnJtwQbMlj8VtwHEKgpaKh
         imKkt+bjCuSeIQv5mzYvtOs7QhvtwWtaprv9qUA9oohA6GBOr8uCEXxEFN713YkcxcKD
         jLCgbZFrPhbRMRLqet5gNDkYs5p3Tu8MM8eHDhweraHUqcw8p4jdNVwfs9lyDqxgF7bc
         HY1HREhXRi6WNa1kwUMNZzVNoeuMz0Fr7WGexD19yExIfmUDJ/MNjiQXO3x8cYiLL/MO
         1hKR0HOX0opA1q/vAO/qJ5cIbmFT8zwmSp8XNea7Dikc2Hoh7gsZVO/2mISIJ3HY5tos
         BOAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690142067; x=1690746867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PU68Y14u0oDuProMFWvbvX6JIUrkSISsGTW44C/+FgY=;
        b=OAIpwVBCCDEdCpV3K1v41b9HtcbAVglbWzM3i4s1plNeuUN/HRze3X2GVSei1fy7oE
         ueJVPWldRqUQ7ZjFXlxJUawA9jmJyeiC2XVKycJfTPF+kcdUszxzjSrRN6VN7rusV+He
         1At/eKrlqEF1M8+Wc5zRlmbTqAy0J+a6bvAJ8K1Sg1aJW9+9xxt9k4wwTkxSID5vXICb
         zjC0FEVx+pGBWKIVzI5qQwFoLJM/IUOj9wITR4CLXTnhR8aKPOFgcnZ0Kvah9QJy4wFh
         SQzH0SVXO4TZluqj5DkvsrlGxur/rK6sWrrpoGp5yGirn+OvP2AyndrkMM+x1mb88Eqn
         gwlw==
X-Gm-Message-State: ABy/qLZyzB5v+pj7ml7l0t7Aew2aAK5a2eHhFmwVNdC6NOFDnqDWqHfL
        9z8TDyheVLFy/zI5Zhiipw0=
X-Google-Smtp-Source: APBJJlHu8pUuAFjd0AXWrTV/Wnufh9/k7YY/CilmUIPp01mcvM0tilv3B3ctMMujrc6MTVbkfL9UEQ==
X-Received: by 2002:a17:907:2cf7:b0:993:f8b2:d6fa with SMTP id hz23-20020a1709072cf700b00993f8b2d6famr6906987ejc.21.1690142065381;
        Sun, 23 Jul 2023 12:54:25 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id pk4-20020a170906d7a400b00993004239a4sm5560046ejb.215.2023.07.23.12.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 12:54:25 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] ARM: dts: BCM53573: Describe BCM53125 switch ports in the main DTS
Date:   Sun, 23 Jul 2023 21:54:15 +0200
Message-Id: <20230723195416.7831-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230723195416.7831-1-zajec5@gmail.com>
References: <20230723195416.7831-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM53125 always has 5 ports with GPHYs (for LAN/WAN ports) and 2 IMP
ports. It seems the best place to describe that in the main .dtsi.
Device specific bits can go to device .dts files. This will help
avoiding some code duplication.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcm47189-tenda-ac9.dts  |  7 -----
 arch/arm/boot/dts/broadcom/bcm53573.dtsi      | 26 ++++++++++++++++++-
 2 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts b/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
index 06b1a582809c..3ac6cac541ca 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
@@ -111,34 +111,27 @@ &switch {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "wan";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan1";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan3";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "lan4";
 		};
 
 		port@8 {
-			reg = <8>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm53573.dtsi b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
index eed1a6147f0b..083304736fb3 100644
--- a/arch/arm/boot/dts/broadcom/bcm53573.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
@@ -192,10 +192,34 @@ switch: switch@1e {
 
 					status = "disabled";
 
-					/* ports are defined in board DTS */
 					ports {
 						#address-cells = <1>;
 						#size-cells = <0>;
+
+						port@0 {
+							reg = <0>;
+						};
+
+						port@1 {
+							reg = <1>;
+						};
+
+						port@2 {
+							reg = <2>;
+						};
+
+						port@3 {
+							reg = <3>;
+						};
+
+						port@4 {
+							reg = <4>;
+						};
+
+						port@8 {
+							reg = <8>;
+							ethernet = <&gmac0>;
+						};
 					};
 				};
 			};
-- 
2.35.3

