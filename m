Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626AA781726
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 05:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233737AbjHSDWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 23:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244699AbjHSDVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 23:21:40 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F1D4686
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:21 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bb07d274feso1206485a34.0
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692415275; x=1693020075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z/Dvf5J2W+dZcHiH9yALjXTmoYSYs7yz2wkFkkkkdBY=;
        b=PHNM4NNYN5+B2GVygVLP6A94JV9cGnr+I/uLU0XL0nYeZ6aU6Mtuy2oW7Nvz0mwM5I
         COvnfr5iYY4WFePVFwTsr/AIpOwidNLEBOGfwrAujc37JpUwn8ZnRk+2QnwQYIWKp3d5
         THCjaLDUgwgLREpacs8xnGSy1N1VXP+XevNFfUMWHVLBM7Rm52YwDDu0QCHLjUKTtPo1
         vTyHwsRZ+FVvjwJ0hV4Lxnmj56q8H0ENDj4dMOPfKpvazVzYB3+VW2NSOjPlEAyc6zom
         4HlvxPBfWMhT1ASeCF8Eohq/SDLvMl3DotXzIFF1SklisP6NP1iLazNuZDuNrLPII1gj
         CPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415275; x=1693020075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/Dvf5J2W+dZcHiH9yALjXTmoYSYs7yz2wkFkkkkdBY=;
        b=HXHcT6NcsvJzIWehQcwqRb1IFrB6nEYQ1eLo9d0JvLT5DAYNc41ArN+qMg8K2bRP2x
         boKtDS5G7WE+EMgpfVVX70ESkHZpiQPYYWQa2BM9R9TSZYGVsdOcsE5UUktrszv+H2GD
         bgO0YPMBO4nXKLcrVMz/UvMAKdEQ5Q76x5ZlFXOzC6ULjI1MixSxEzl2gxNxcHfxQ8Kl
         c4Iq6118ppuwS+U4HLpXDe5TmoH6RpM3owXbVzQI9P5g9qHNBrHXYhiGryxPcjBBpwG6
         PN4tw/TMRLxplTIPeMcHvTr/Jc/ipfvy98POcIbv1ohqUbNKAJXlvobBGLb+/FTrh4HD
         SZdQ==
X-Gm-Message-State: AOJu0YwelL+yH5zRUKcFJbG6xXf82trf51Y1Rp1Wqt/MLHDyeBtLGn+K
        3jVMuYTaWrJf4o8k92dUBbc=
X-Google-Smtp-Source: AGHT+IG/9YOVbLxlVphT0VeiNbPsfc7ET1KTyyK/qudI6UXkUWrgM+1D902JqB5+jj1LiwSmhUP4Gw==
X-Received: by 2002:a05:6870:9a04:b0:1bb:b337:fdc7 with SMTP id fo4-20020a0568709a0400b001bbb337fdc7mr1314631oab.59.1692415275460;
        Fri, 18 Aug 2023 20:21:15 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ch16-20020a056871c41000b001c02f12abd0sm1728265oac.38.2023.08.18.20.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:21:15 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, me@crly.cz,
        uwu@icenowy.me, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/4] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date:   Fri, 18 Aug 2023 22:21:03 -0500
Message-Id: <20230819032105.67978-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230819032105.67978-1-macroalpha82@gmail.com>
References: <20230819032105.67978-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add pinctrl nodes for pwm0 and pwm1.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index 2b76a5b8ec19..3276b3b5de19 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -414,6 +414,18 @@ mmc1_pins: mmc1-pins {
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			pwm0_pins: pwm0-pins {
+				pins = "PB4";
+				function = "pwm0";
+			};
+
+			/omit-if-no-ref/
+			pwm1_pins: pwm1-pins {
+				pins = "PB5";
+				function = "pwm1";
+			};
+
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC1", "PC2", "PC3";
 				function = "spi0";
-- 
2.34.1

