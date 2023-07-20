Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B87375AD93
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 13:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbjGTLzv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 07:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjGTLzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 07:55:48 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C622D2D4E
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 04:55:30 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e99584a82so963177a12.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 04:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689854128; x=1690458928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FaKi4ZdZUtJEcRH2VQUasUpLlz0S4gllAJGWJZONK9I=;
        b=t+9L9sVzgxjgqpGtaFiq0a0uj9RPCA3dq5J5FRPErV/DrKSTuGItnIFDoWjx7lElE1
         qFKO/8DzD9qf7pNMZ9TfBuE/esIuIDVJWwEAWtxvcsCbR89tEg+S5v8b2+Sl4tNRBfyG
         +UUeyR/RLn+nT/wvj8510jdb51pchXVltGqHV/1uphdNGviYn+x/PLDgZpk5zVIHIwzS
         EpPsjkQoSyZa5UGshO+gmigg8lEdQBtEjXam+Bcg90prLT7cj/F3FmmSlJ/gEQYhLNUd
         YIiffvMueNEkp85/IsjKsU6rvlEowTc8+M9N5B748g+H1iFpXONLu/wX5jo3Iib/+NXs
         URCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689854128; x=1690458928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FaKi4ZdZUtJEcRH2VQUasUpLlz0S4gllAJGWJZONK9I=;
        b=HHo02Twv5KeATnxWWkp+Hpg2CQ+g3ZKdF/dL2vuBJV2EyFXYiXKvHA8alLr9PNu0AV
         eG7yIQwGi7BlDkhW+mWs3+exUIHcK3fhHEcYNk3wfQaYE5ByFrDl/1ksE/De+nJtw5rM
         OxBiudsabwbxy3A93GC3mIkPIVtZnCx1kYUYoNeOYO8kCZiLZ8VOCRIH/tcBsXhf3+Y2
         CNiPNKh0rrzKCv36aEgeXmpdR2fTUMOOlvZxBW54sXBUvrSfld3izbk2/xp9+dDaWfw8
         a11WsawCzHIk55gkE33+/ek41GWcZM8mcgXa/GVmtQb7BZkYip6+QpW8uEGZOeAKgUpy
         QUug==
X-Gm-Message-State: ABy/qLaWgpcNC2A5lJByI7T4qzyZ+f3JMGBc3b2NZFYLM77MqbXVje5k
        r5dZD50kdyo0PcQr9PO9KlnBfn1vcMNiMHNIvh4=
X-Google-Smtp-Source: APBJJlHgW/jlER570n5CY2OMt4hniDBz0t7obp+rYjMjBZz5OkSfncicMpmdklddr82WYg9BuQOOoA==
X-Received: by 2002:a17:907:6da0:b0:98e:1c4b:10bb with SMTP id sb32-20020a1709076da000b0098e1c4b10bbmr6439192ejc.35.1689854127814;
        Thu, 20 Jul 2023 04:55:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id qt10-20020a170906ecea00b00988e953a586sm606466ejb.61.2023.07.20.04.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 04:55:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: st: href-tvk1281618: fix touchscreen VIO supply
Date:   Thu, 20 Jul 2023 13:55:23 +0200
Message-Id: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to bindings and Linux driver, there is no VDDIO but VIO
supply:

  ste-hrefprev60-tvk.dtb: synaptics@4b: Unevaluated properties are not allowed ('vddio-supply' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi b/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
index 37e59403c01f..469e61c9a349 100644
--- a/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
+++ b/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
@@ -192,7 +192,7 @@ synaptics@4b {
 				#size-cells = <0>;
 				reg = <0x4b>;
 				vdd-supply = <&ab8500_ldo_aux1_reg>;
-				vddio-supply = <&db8500_vsmps2_reg>;
+				vio-supply = <&db8500_vsmps2_reg>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&synaptics_tvk_mode>;
 				interrupt-parent = <&gpio2>;
-- 
2.34.1

