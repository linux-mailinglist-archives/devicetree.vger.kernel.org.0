Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87772524D76
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353944AbiELMtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353973AbiELMta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:30 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC44024DC7E
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:21 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w24so6114335edx.3
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ko9Su/75NK6EGUguCwaBtbcpvuAyD9W5527i5Vs8bj8=;
        b=DPtfHdCxQyPjMWiV48UAakFbrVlTVijW71FcHtaln2ZL8t17ZxoszZivDMJ6hnlh9K
         gpUJC4Eq7pk4YQ244e8UVwwmJxhauhxSooZu84WsiPGPYM040zTYwuACi4rJDoCYKRK8
         mrvbXTmCqfu9MA794MdXLFZfmMRbdZ4y22nRqnPtdrsZ+7jLiSf5/hOJFTSZghblZ7N+
         MghE37FekuBDKBWuCd3L0vf2NiGHwH/6YZoj5T1NqihWuMZn0VchJ8xuVZJ3WVNRj98Z
         gkhTxC9feCyi0b3ZslJELMh7SUmDkVsr1x4IGtN6ze080zOhtG0w0XBAT1p9A9PxvL1g
         h0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ko9Su/75NK6EGUguCwaBtbcpvuAyD9W5527i5Vs8bj8=;
        b=lAaO+n/nf0o/EkPHMT6u70T2Lbncsr/GJauCRLj5YrHFJv6sf35XBT3AhQl6TFsiNo
         SmF5REYgE91hzDNEjIFkBoviBU/OQD2oIWjbfyI5ZI28WGXJJgpOvu3eI2IW3AZ1yyK5
         yKt6Gu/0lXYUJO55pDILSUHML0675d0RpslFDDonx1bRkMCFqvTlQOYt+lVDQaKN7Zgg
         3eJKXQFT0JXksa38w7qHJTHpn0xnFcmAULwh5JcC8/ErIltGnVIcWQecVNWSScGExJyz
         9XEdoHsk57hynEFBcuqN6w2ASfgzQiBJuBfxRCeutEfE0NFKMp1T4aWg+B1Me3JI8rnd
         UAjw==
X-Gm-Message-State: AOAM532y9eJVpMgYOknC5E1z8zRaNu1vmnLplT+gz3vZNoLTe7LAWudu
        O9ZDKX+jHK0XOoWcfcXeVYPMbw==
X-Google-Smtp-Source: ABdhPJxvLFLd/qQ+0VVcM620/Hgm80BrqP2iC39LQgdeotHa7tWzpbNQ2Cwd0iajqVENtmpmdAgFqQ==
X-Received: by 2002:a50:ab57:0:b0:428:9f9b:d8e3 with SMTP id t23-20020a50ab57000000b004289f9bd8e3mr21884275edc.305.1652359760305;
        Thu, 12 May 2022 05:49:20 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:19 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 06/11] arm64: dts: marvell: uDPU: align LED-s with bindings
Date:   Thu, 12 May 2022 14:49:00 +0200
Message-Id: <20220512124905.49979-6-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to bindings they LED-s should be prefixed with "led" in this
use case, so fix accordingly.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 4ae1688e6627..f216777acacc 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -31,32 +31,32 @@ leds {
 		pinctrl-names = "default";
 		compatible = "gpio-leds";
 
-		power1 {
+		led-power1 {
 			label = "udpu:green:power";
 			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
 		};
 
-		power2 {
+		led-power2 {
 			label = "udpu:red:power";
 			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
 		};
 
-		network1 {
+		led-network1 {
 			label = "udpu:green:network";
 			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
 		};
 
-		network2 {
+		led-network2 {
 			label = "udpu:red:network";
 			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
 		};
 
-		alarm1 {
+		led-alarm1 {
 			label = "udpu:green:alarm";
 			gpios = <&gpionb 15 GPIO_ACTIVE_LOW>;
 		};
 
-		alarm2 {
+		led-alarm2 {
 			label = "udpu:red:alarm";
 			gpios = <&gpionb 16 GPIO_ACTIVE_LOW>;
 		};
-- 
2.36.1

