Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE2AB6C7B65
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 10:29:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbjCXJ3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 05:29:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbjCXJ24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 05:28:56 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 787F330F3
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 02:28:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id o7so1057631wrg.5
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 02:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679650134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1ntWqPvbl8kGAf5jmOavKVWVNA9yjNdYOTT1NeTQto=;
        b=dMTb6gr1isL4ipIYJvx95bwe4tCkL/ZqlaFP1ZfdIDa2+jhvUYgjctubziv9PWUHQM
         QDECGJL5Vc1eIBa7fB1PCK5xOS0oinwg9FLumubAqCCYMQlN2hfx3cxf9dS5U1Ho8Ltv
         Z1hbt12e424IMDNXLD/4vHM9YUqFKtroqx/BIgqL036R0KOuWhgg7kJormSF10RuS5nc
         zSAbkLO9BJfL2jPZhbAxiaZulRapmDeR+bzu5cyPfSVh7IBS41xWpy/wa8e7rBF6jEZb
         GojHPE/KN4l8uKVQeRq8/GX/vf2zpLVzG/E+UcmTk5Htko+CLiNATFv8iH5PC+QI2Etx
         9trQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679650134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1ntWqPvbl8kGAf5jmOavKVWVNA9yjNdYOTT1NeTQto=;
        b=xRBVF9+kzsh4ku8jE2ZbBpGhrWTIqlgcszoznCfzXK9G/o/QtFiaHs2Vqi2Pgb92lo
         DR7CYC8FmneJu5fql/X0vvyoz+Wxf+4w+/UmqVmBWIlqRxjraRejmCyLQT6XB9XjRfWz
         qvTSZdvVfW5XdE7+X4GOPUm6WjWT5lWwO8CvwdspI+Nif/+eJ9a8uWp6Fn5zA91QNP+c
         8MfpdpT+OWZ8QoSLioH/CLfqukeNgjFug/90mraDqXOhIkFyiMYliEpU35ZqQZSyP7gJ
         HlnSs2a61Lg/hWcZD5iBwmKZIkV4zmfX2WH4SguCdGd866d2RYTRA6V8E0qLVh0yjCK3
         QFxA==
X-Gm-Message-State: AAQBX9cVhrgTi4ooRr4pJOl8o09E4BvIvhcFfxP38LYKIFbl6Yrgz+tm
        a9KO0AImCgJq6RRPToDdtlO5Yw==
X-Google-Smtp-Source: AKy350Y6IKD0M0ELlHzawvspKtRuzZByYiL1aaAivca8f7Uw9pUugHmlK5tLkfVOzSHjpHvXZki7lA==
X-Received: by 2002:a5d:5586:0:b0:2ce:b7a1:c1a9 with SMTP id i6-20020a5d5586000000b002ceb7a1c1a9mr1443129wrv.2.1679650133993;
        Fri, 24 Mar 2023 02:28:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id v14-20020adfe28e000000b002c5a790e959sm18029980wri.19.2023.03.24.02.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 02:28:53 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 24 Mar 2023 10:28:49 +0100
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8450: fix pcie1 gpios
 properties name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v2-4-0ca1bea1a843@linaro.org>
References: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v2-0-0ca1bea1a843@linaro.org>
In-Reply-To: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v2-0-0ca1bea1a843@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the final "s" to the pgio properties and fix the invalid "enable"
name to the correct "wake", checked against the HDK8450 schematics.

Fixes: bc6588bc25fb ("arm64: dts: qcom: sm8450: add PCIe1 root device")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index bcb51e612261..398661498920 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1908,8 +1908,8 @@ pcie1: pci@1c08000 {
 			phys = <&pcie1_lane>;
 			phy-names = "pciephy";
 
-			perst-gpio = <&tlmm 97 GPIO_ACTIVE_LOW>;
-			enable-gpio = <&tlmm 99 GPIO_ACTIVE_HIGH>;
+			perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
 
 			pinctrl-names = "default";
 			pinctrl-0 = <&pcie1_default_state>;

-- 
2.34.1

