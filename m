Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F19577496F2
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 10:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231431AbjGFIA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 04:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233956AbjGFIA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 04:00:27 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7246B1725
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 01:00:26 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fba8e2aa52so4040965e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688630425; x=1691222425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zWpH1FvGpiFFPL3Zk5MB4gar3abtPZq+nswg1l+SqSg=;
        b=z8CF+23V8/iN9B9tos0KT/eKSlOJXhZaFRjqcobvmHkTtx8IIGPAXZqNO0Z9d5RUAe
         I6VfUzkrptGnMATJX60aX79fNdHW7RtIOvR/Ktt5vyHPW0VL00Oo1REG76SAh9/Q29mZ
         cVGp1op86QVIvT+UNPCJZ6U9N4SrHcVWr2boReW1ClXDHtVN0okuoYSl2zB5qt7eSTo7
         glKl3IFrKPRHpy/fO4n8RGqkoKt1ZWQIOs5/FZ00nriX4a5K4whqhR0iIYny/vBKzb5l
         KDURPEwtW6UiZzhAysSDh+dseroQYX3fi/P7BiGJ9kyP2l3J8D4XE5NG0XNBPhlHroTL
         LcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688630425; x=1691222425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zWpH1FvGpiFFPL3Zk5MB4gar3abtPZq+nswg1l+SqSg=;
        b=EqzBy73nQAz3XZL/ZZgmDchs5o7VKw1ZPdPt0nj3DHg509DlRjhcQzCK6+z3PfM70X
         hw6f0BIVBnsIhWw4GEtsJYxhXaP8QB/6GyGOglW5uaEOmpZtf5PTliU8Gtlp9QxZfb6O
         WYiFfqqPuIIHrRIBlhYXgYyJU6q5nmsTUG8ZpPvZlDrb4q4c+SJc8dk05WSYTIeogYMv
         x7Fzv0YSIPenC+Pyr70iU6wPrLA1ONuZB6R6CmlH3S+xYJpcaeYUsYqJqZDLR+USV4uT
         jSGLpNJgf90eaxk2KwtOaVaPm6LTsG/ZWZ6xwJLvoedKXIILYKSu4aQLvNKNEV3KSy5E
         JFVA==
X-Gm-Message-State: ABy/qLbYvK5jEI9GeixDapSbrmY/m56znzpJDX1eAqMn2EjZuXR2IkBR
        szFtxbwPSwsWpK8s7tV2L6C21A==
X-Google-Smtp-Source: APBJJlE4gWjcP7W0gh/5EZLG8ViE/6K0tZw10eioLU/v1QWdFBHHFFTEa7t0sYd/ac1rM8ha9/xDWQ==
X-Received: by 2002:a05:600c:293:b0:3fb:e2af:49f6 with SMTP id 19-20020a05600c029300b003fbe2af49f6mr678506wmk.39.1688630424904;
        Thu, 06 Jul 2023 01:00:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003fbb1ce274fsm5587375wmn.0.2023.07.06.01.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 01:00:24 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Thu, 06 Jul 2023 10:00:21 +0200
Subject: [PATCH 3/3] arm64: dts: amlogic: drop cooling-[min|max]-state from
 pwm-fan
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230706-topic-amlogic-upstream-dt-fixes-take3-v1-3-63ed070eeab2@linaro.org>
References: <20230706-topic-amlogic-upstream-dt-fixes-take3-v1-0-63ed070eeab2@linaro.org>
In-Reply-To: <20230706-topic-amlogic-upstream-dt-fixes-take3-v1-0-63ed070eeab2@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1423;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=mTxrGBgcrLVvxfWXqT39OrtK8xzaQJmrQf3lTHsiMu8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkpnSVVlcqsYAlsspnNSpabIPV0CUsiTF7uT/6cBbG
 rIDdZdiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZKZ0lQAKCRB33NvayMhJ0dwuD/
 wPzwYHtKFu5wR0PYy9KwbUaetfp9VjtWrDRPP+zZV1/9ZYekIqbMITt+s7/+CILqWg+KgtIaoGieMl
 Tw9ewazOmGsAnNiJUgs3z9Ft6NpR2tPNHb3wPG+TFvnnM+HqmaKNkeTle2RH0UeBuwlsCv3rIhcOpd
 ZFesU/nPeW6vQW2EPtz4IjHH8gXplRzTPMUciWc9pNUEGm9lQOwThNFYXz2I08Ll1YFM+cRKF2tfaR
 jmM6nuqMzn/a3Txe560cr8iRb5H9NHTzslFtvUae4zif0wTpFMXhi3Fai/G2jsHzXMeeOBDEXz5XrC
 GMNRzEpl4zDrbXEmNihN7awahAGtKLL8gXgLqDwd1rKilzVnCjNvCI7Qe0VY2Mq0bQvA7/F9N0k1tF
 cVH4Ntph2LWpLZiJclHPElVe3rE75bI3uC0vZLmIXL2CpoccQYJPxIQEPNChMQBnIVxOqIAicwzkab
 QsX8O/w3sdZm0O0lhU/qW0VegQcfkgEEgtriSg+wG5hl3s+jjWQkmWC6DG95YEa/fKhdIa/FuqwZIQ
 I2H7dq5h0rlQ/JjDehSYuW/4NDA1eLfx8NedH5F+4N5OKCg3qkruvgqLi0Z92OCG0lhb17iN1xSJa4
 1lbTZiTTRvOoCRWODT6E/JDpp0eoK4xzgGP3B6W4CkAKz+3YJsTTsMZJoCYg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop the invalid cooling-min-state & cooling-max-state from the
pwm-fan node defined in the bananapi dtsi and odroid-hc4 DT.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi | 2 --
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 83709787eb91..42f30112b56a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -47,8 +47,6 @@ emmc_pwrseq: emmc-pwrseq {
 	fan0: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
-		cooling-min-state = <0>;
-		cooling-max-state = <3>;
 		cooling-levels = <0 120 170 220>;
 		pwms = <&pwm_cd 1 40000 0>;
 	};
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
index 74088e7280fe..846a2d6c20e5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
@@ -19,8 +19,6 @@ aliases {
 	fan0: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
-		cooling-min-state = <0>;
-		cooling-max-state = <3>;
 		cooling-levels = <0 120 170 220>;
 		pwms = <&pwm_cd 1 40000 0>;
 	};

-- 
2.34.1

