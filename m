Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B55F5543AED
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 19:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233299AbiFHR6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 13:58:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233221AbiFHR6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 13:58:10 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E9C1A04B5
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 10:58:09 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id m20so42888107ejj.10
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 10:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QbJTJTqHr0dGBNMfH/ZjjS3sOVzFeL1a0tr4KzjWyV0=;
        b=psWG4rm33xp9iIifihbZVEExr2EAmbM20xjY0pAR8WwtNhMxagYXvAi9pWVUDwNrI8
         vGOod8PCvh34Ljn+wbbX6lmUAWnbtN9BuzwSMDFnAePdCju76kTSmzs6nIlbX4Pr/aXa
         /YMjaOUkir+eraRyJZxI1A3TonlLGC06QzQDFp4DFrtxtTsqXeUgS5GmKLlDlYTKwGC/
         fSydHDXi/+owYAYRdakplPTfjC0gFhqS57aC2CmHU61WIagpEqdmXghJyYNX47TNEeV+
         dGh9f0hL7fk2ao6QAci9BZDHv6DrWjCFAjtUyWFXnjfBPwtJ4qweVEwgWV6RT4Qu48dS
         rITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QbJTJTqHr0dGBNMfH/ZjjS3sOVzFeL1a0tr4KzjWyV0=;
        b=B2KVdBlDiTY3RSmt7haj+7Ol+SFJYxuL+QiHSHqqZK1GdNrCXn5R/g5im+AdYtPR8p
         oPGsXJQvsfhBRpu7VZ/H3x0s9FhW8ffoVd8O1CzKiAVWjusPxd1PmZ3F7p+E5JNrlxv1
         XIi5efzaicBTRYN1mKMljta/uc/sLY+VjztITdJInyd4T1J/GoAhN5NJkWrZQ4G8SOON
         em6RemCg+DvKLXLkqBmyYNOZ57TEAdNr3rxO37HTC0VvY0EVzco9T6O+6BUKxMn2ACF8
         qE1KFt78KE+9SahO5ZRHJoOaYISMTf8ZFay2tRGzPhZFZO8tyPKjIcgwNl70pZDt0ghd
         KTXg==
X-Gm-Message-State: AOAM5332K5LKsSPs5Xn4jLTED8sKlcwe1ejbv3268rMD+V0HSulSHRMk
        A+Qiv/dzBsPOBDWI546Gomz/0A==
X-Google-Smtp-Source: ABdhPJyFUDSXM6s+ZSQ95mVNYOzqXV1dcg7jtz9JufLoE4uvIXrWSPrIQqxE9VuZ0sm39Ahgcyr9lA==
X-Received: by 2002:a17:907:a420:b0:6ff:1541:8d34 with SMTP id sg32-20020a170907a42000b006ff15418d34mr8389103ejc.447.1654711087678;
        Wed, 08 Jun 2022 10:58:07 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id j25-20020a50ed19000000b0042bcf1e0060sm12417111eds.65.2022.06.08.10.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 10:58:07 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] arm64: dts: renesas: Add missing space after remote-endpoint
Date:   Wed,  8 Jun 2022 19:57:28 +0200
Message-Id: <20220608175728.1012550-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing space after remote-endpoint in r8a774c0.dtsi and
r8a77990.dtsi before the typo spreads to other files.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi | 4 ++--
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
index b6aeb22e88364587..90588bbff7e0b8e8 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
@@ -1281,7 +1281,7 @@ port@1 {
 
 					vin4csi40: endpoint@2 {
 						reg = <2>;
-						remote-endpoint= <&csi40vin4>;
+						remote-endpoint = <&csi40vin4>;
 					};
 				};
 			};
@@ -1309,7 +1309,7 @@ port@1 {
 
 					vin5csi40: endpoint@2 {
 						reg = <2>;
-						remote-endpoint= <&csi40vin5>;
+						remote-endpoint = <&csi40vin5>;
 					};
 				};
 			};
diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index d3302120263762f1..4c7c7feed7026778 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1324,7 +1324,7 @@ port@1 {
 
 					vin4csi40: endpoint@2 {
 						reg = <2>;
-						remote-endpoint= <&csi40vin4>;
+						remote-endpoint = <&csi40vin4>;
 					};
 				};
 			};
@@ -1352,7 +1352,7 @@ port@1 {
 
 					vin5csi40: endpoint@2 {
 						reg = <2>;
-						remote-endpoint= <&csi40vin5>;
+						remote-endpoint = <&csi40vin5>;
 					};
 				};
 			};
-- 
2.36.0

