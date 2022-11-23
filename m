Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 358CE636C19
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 22:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237514AbiKWVID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 16:08:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239072AbiKWVH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 16:07:26 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67DDC9CF45
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:07:25 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id a7so1951535ljq.12
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PEqiDsYEiDO00tgdMLKsNoJpUA3u2krxNv3MdZBB8lA=;
        b=O6qYidow5Njs1Xc0c/xzRnI23D0NoTJl3aGsoZE5FaLHAt4eL64AXcKS664gTzW9Pr
         PgfbwhV/ZrIG4mkHjdypZk1/QPKgFBmQVs2dEtfe3eXVRvFFZJ9pguIHeuX5sM4CiVHq
         bOEM588FynQohToKxb+TT0+gfpxA54fku+TSZ1+YtnuWIBTtsWpBS1cfMNE74uLClu/0
         teyqZ8wb1UUZbHnmy21+ir7+FnpUwBj7orT2fI4WAGXOonZGe575zbFCXQ+hRveGvjwD
         EPiDwRnOYXvyzmj+zQzwz2zzzkTlne5GjI9LumQbEje08+O+mUFaytVgaOfEmFfdQlc7
         0jng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PEqiDsYEiDO00tgdMLKsNoJpUA3u2krxNv3MdZBB8lA=;
        b=MuZTwWckgp6ntApHNx/jbBjCkcOVL6qA53xyEn3kd/rmfon9OeTAium4YjWdCqjJBM
         WuO3E3LjSAaMJmk8KuosrWS1zDDpEeoNzNuD+c2BjGZM9nP9D8k3Dm9evQ0yWuMG0Q08
         Fehtv4+si7dgIJb1lHX8+2AOOjGAHpKy8BfU6rluRtpdS8pfYcV6a2AWfVvsH6VOTq+W
         z8nJemSRoD+MQmIVpcjnKOHZtPAZVFWE0ZhbPvEs/sRyiT+Si+4Ayp3bsRad/eQS7kBz
         P7ZnUa8BlBIyZLzE66mvJVOAZTLRTYrds0KAmB5GD03+CS85vPlM+fV5DQChaVs81GgK
         PJGA==
X-Gm-Message-State: ANoB5plZUVWTLNLbfTEy3HO9kKwThcrW+2TvAiGOIQ+tPIG4A8QKFrxw
        ILrIyqEIKMTA9euWLvt3+hbbAA==
X-Google-Smtp-Source: AA0mqf71uC4J6jcyKHOaLZ49f9m0APWIhySt+5xGk5IO/WZTjqjldm4PDtYvVyybKpbWKXZzUR4Orw==
X-Received: by 2002:a2e:b4b7:0:b0:277:f86:ddc6 with SMTP id q23-20020a2eb4b7000000b002770f86ddc6mr9843299ljm.131.1669237643831;
        Wed, 23 Nov 2022 13:07:23 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2415a000000b0048a8c907fe9sm3024119lfi.167.2022.11.23.13.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 13:07:23 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v3 3/5] arm64: dts: qcom: sm8450-hdk: enable display hardware
Date:   Wed, 23 Nov 2022 23:07:18 +0200
Message-Id: <20221123210720.3593671-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123210720.3593671-1-dmitry.baryshkov@linaro.org>
References: <20221123210720.3593671-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable MDSS/DPU/DSI0 on SM8450-HDK device.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 2dd4f8c8f931..75b7aecb7d8e 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -349,6 +349,28 @@ vreg_l7e_2p8: ldo7 {
 	};
 };
 
+&dispcc {
+	status = "okay";
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l6b_1p2>;
+	status = "okay";
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l5b_0p88>;
+	status = "okay";
+};
+
+&mdss_mdp {
+	status = "okay";
+};
+
 &pcie0 {
 	status = "okay";
 	max-link-speed = <2>;
-- 
2.35.1

