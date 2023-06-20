Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1400C73757E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 22:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbjFTUAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 16:00:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbjFTUAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 16:00:53 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E07E0199F
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-570877f7838so43538587b3.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687291239; x=1689883239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b561XsJ6D4W+Tgu7XE7/ihz2QRXqrOkn0mOzXDVa3Zk=;
        b=J7L/wCi2lKho4QPX5SDr+EFwoRZsLGvHa8bdlin/ThPLtv9y+forcFRvhfMUqLMoYP
         gWd2vq9zoYHwRPq8dU6HSkWwCRSEulA9H5P1WhheIu+7Dqty4qewwN/cdd5GlRdO//XC
         FSb+pTjjCcfyE3UdpQw6yiFTA7zX4tl+k6g/GnLlJTiLcI33cRF3YZ0Wa302+JLpBWVU
         M+MSGO7yI4X6xUD251iF4RBQ4rwga3yqbMscGr15eCZcE2IC21sG8fqpRIrDK1N6AgH+
         z1BErcjrsVoIRZnyNWw9N8BrJHGzp6464sNPXywXe02Em7ES1bufYgYeug+EVJW3OZab
         xGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687291239; x=1689883239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b561XsJ6D4W+Tgu7XE7/ihz2QRXqrOkn0mOzXDVa3Zk=;
        b=iMFba4YrL/iMEanTeuyAyoJRcviSmowz2TrA1PNdA0dTM+f1Y6mT0ifxkUI9B+34t7
         nZsyFGnJ5WIdRmbebFdGxukQY+/pFSTFn2VJtkO+S2AQb/SAqkd0l92Nq2COGT+hLr4A
         zd3WCuM9GAYxG57RFG748EY57d428duYGDC8WayIWOaDuAnyK5ffTO2PlLPuebJnqDbJ
         +T8vWtLYS8P2perdozb7FTkVqzT7mmkkNEKglZzO2cMgPl2E6xjVX4qJLr8KJZnrfcLA
         DFiNT92cmO9iOARdkR45dR7jdcXk7lGPdoLMXjHPc0R2heUHJf320I2aTQlYJelO+51L
         72ag==
X-Gm-Message-State: AC+VfDxx5L45WiCFGG38iCNkfVJxprH9n4SoqwTlC3DDQBrbKf2T4ZU6
        G12G40yYJ7jZu4k4HoxfZ0g=
X-Google-Smtp-Source: ACHHUZ4ObvQXzCqhJKsc4yjWNzpEz1SBkfYjN73jHHKfAMhZ/Jjbctpoh2O3F5wOgJIWyrzubvQOQQ==
X-Received: by 2002:a81:4fce:0:b0:565:e48d:32cf with SMTP id d197-20020a814fce000000b00565e48d32cfmr14206412ywb.7.1687291238930;
        Tue, 20 Jun 2023 13:00:38 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y201-20020a81a1d2000000b00569eb609458sm664197ywg.81.2023.06.20.13.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 13:00:38 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
        andre.przywara@arm.com, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date:   Tue, 20 Jun 2023 15:00:20 -0500
Message-Id: <20230620200022.295674-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230620200022.295674-1-macroalpha82@gmail.com>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
MIME-Version: 1.0
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a default pinctrl for the pwm function.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index b001251644f7..e5977524abe2 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -414,6 +414,11 @@ mmc1_pins: mmc1-pins {
 				bias-pull-up;
 			};
 
+			pwm_pins: pwm-pins {
+				pins = "PB4";
+				function = "pwm0";
+			};
+
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC1", "PC2", "PC3";
 				function = "spi0";
@@ -441,6 +446,8 @@ pwm: pwm@1c21400 {
 				     "allwinner,sun7i-a20-pwm";
 			reg = <0x01c21400 0xc>;
 			clocks = <&osc24M>;
+			pinctrl-0 = <&pwm_pins>;
+			pinctrl-names = "default";
 			#pwm-cells = <3>;
 			status = "disabled";
 		};
-- 
2.34.1

