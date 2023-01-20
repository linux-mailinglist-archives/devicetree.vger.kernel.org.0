Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A904D67593F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 16:54:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231151AbjATPyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 10:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231613AbjATPyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 10:54:35 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3EA5E0510
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:24 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so1152403wmq.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mf56U2LGshYysSaYGXGyuaHdAe5MD09p7C8iwc4aNG0=;
        b=QzTA4olLg602r7XbSEqu+dK0TZbgsKC0kwuRblFy/3k8TEC/nIz0JRDRt16AzuXeDt
         OPBtbD5lWaprDghMV51poGr4At9LlM7PMiVMAKswvbzu6Og2te0jRNbwIlfEM/iNxITn
         kuMqlIR1jCNJL1uCtK3WFBXLsVE6RsaSbPApyuWn3+w4+QxGx+zuvzyEZSl9xomET1Kp
         OgNVohmhW+uuBhl3+lBJJsInykFTk9LWuIhsdpZRznJiJqLO1x1YBiLj4vFUzyT3wv0c
         kVxXdzzt6cBKTiW4GqIb/V3Ts5rxQyO4iaJyMPGo+XE1S651zazx8vcP44tyPGxc4MfK
         lYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mf56U2LGshYysSaYGXGyuaHdAe5MD09p7C8iwc4aNG0=;
        b=zfm6x2x2ln+K5BoDCXyFOqpbuweRc9x3MmsL2iUHvkj8MVFP6eGjEieqsCTVz1tjLy
         bYT6pELpRmG1XSvMzkU44c6OiNmovySFfZRgLl5hxlRPVbbOPkq/xyluXhcV9fX1DvBB
         g0+Lm1bf17Vg91pxtwmocEXpTPCa+x9aNqWAeVB3AUQAZsyXmSIVpcgoyhON634nsSbd
         wmKKAuvMLDOIhcd7yCMXbJlbkIxR2wiWQU/M0XVvwoYFtwRzXErNpH+S8Uhb/idCKLjy
         kdBHRm4u1qs3e1TQthjVCa0bIQuos06TjUDwPoj+sMOFvGTrRe6oW7bf/mIhaOXDvu+L
         4paQ==
X-Gm-Message-State: AFqh2kpWtX3cDAn1Nb/XdtE15WREr/vA1ZkjjcPAPQ8ftvqRmfG43Azs
        DsS+6GxPCMSbAfyQL/6mfu/DpQ==
X-Google-Smtp-Source: AMrXdXt+ccFyvzLeQyxgjPTA8izbIYjjfeUKk9n/XpRzdZK6BQdudDHtaXza1bJ2ix/cwd7Q89fzUg==
X-Received: by 2002:a05:600c:35c1:b0:3db:1424:e781 with SMTP id r1-20020a05600c35c100b003db1424e781mr9837689wmq.23.1674230063183;
        Fri, 20 Jan 2023 07:54:23 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n42-20020a05600c3baa00b003d96efd09b7sm3349596wms.19.2023.01.20.07.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 07:54:22 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Inki Dae <inki.dae@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/11] ARM: dts: exynos: add backlight supply in P4 Note
Date:   Fri, 20 Jan 2023 16:54:00 +0100
Message-Id: <20230120155404.323386-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
References: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LCD backlight  should have a supply.  Use same regulator as LCD, to
silence warning:

  exynos4412-p4note-n8010.dtb: backlight: 'power-supply' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-p4note.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
index e41cf3ed362d..201c38edd48f 100644
--- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
+++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
@@ -245,6 +245,7 @@ backlight: backlight {
 		pinctrl-0 = <&led_bl_reset>;
 		pinctrl-names = "default";
 		enable-gpios = <&gpm0 1 GPIO_ACTIVE_HIGH>;
+		power-supply = <&panel_vdd>;
 		pwms = <&pwm 1 78770 0>;
 		brightness-levels = <0 48 128 255>;
 		num-interpolated-steps = <8>;
-- 
2.34.1

