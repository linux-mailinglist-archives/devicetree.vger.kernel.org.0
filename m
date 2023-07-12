Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4EF27507B8
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232766AbjGLML5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:11:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232839AbjGLML4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:11:56 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A67B9E4D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:54 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b63e5f94f1so8803841fa.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163913; x=1691755913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBc4Z1Y1zebVUroJaOG/o6ErZXTZ6AcqVlSzVZrpB88=;
        b=nJNmpfEk8S76fbVGigNfGc0BvtLNFJdjd+r3VwE/1hrlLt8ZhhK4lyCxHqPtG8nQof
         u5/cfAMjKOyGcp5pMQbgsLb5kgU6j6rXVB2nN/0pOsqP5PQOODwedY9YX2kJ42er42K6
         Qnv+AImFdjLwwv6UVxuIKB5HlHs3ANZrqASyJnCxEK2pBXIzFdbLAe0wf34kbcxuOig/
         N+XyBSgFv1KwJfvK5Jlb0J1QVAz7qmIpuUQvgtZiKOWvK65pqTvbgrKs+AOXcPHFh2hN
         P93iEal7y+9G4Mche2pDWI3wdVIRu43pKpU3Rthbif5rpyJxZG8IRHVZPx5MChcji4G4
         NfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163913; x=1691755913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBc4Z1Y1zebVUroJaOG/o6ErZXTZ6AcqVlSzVZrpB88=;
        b=XyVtTacNKJdRx0fm57FZtO3J9Pep/RIJGb+cSgS9d5Ft0bmHOpVJ15s04/ZIeMYNA+
         n4DretYXb7PVtyAjNfOhh03SF1xHG0VlHzi7rWhyYtkcaElMASLqncLp+ony8gSXM6tS
         MU+hE4CAG+96Pov1/mWy9bYTIVWyikOp927ChE6rGasaQNgNpXhkYOEhp7t5bmbZ6hHe
         mUHAh7C/3F6RGj2yXezpu6wH3ynbvN9bmoprAE4diix/XzlIbBLypMZ6Nyu0S6QDAnj+
         baRkg8BR+A+3Hi5tS77KIQjL8fJR6Q6ej//ssAvsvlxsiIFd3Aj7brgkKC9wls3TUHNS
         eqJg==
X-Gm-Message-State: ABy/qLbEDDtUoeO6JGTEDjGJq4fQJ7vTTocCJ1NuIvil6NyO/7YFmQlt
        uwkYjL7Ucjq4vl0WT4Hv21SZPA==
X-Google-Smtp-Source: APBJJlGtEozDIiwGo5Hr5stOPzTjNEVsokSgpKgX9YqK8Yt5hsuXek3dga4YrnOV3hAUl2bg67YYCQ==
X-Received: by 2002:a2e:a608:0:b0:2b6:9f95:8118 with SMTP id v8-20020a2ea608000000b002b69f958118mr789748ljp.7.1689163912826;
        Wed, 12 Jul 2023 05:11:52 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id p14-20020a2ea40e000000b002b6c8cf48bfsm913135ljn.104.2023.07.12.05.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 05:11:52 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: sm8450: provide MDSS cfg interconnect
Date:   Wed, 12 Jul 2023 15:11:45 +0300
Message-Id: <20230712121145.1994830-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
References: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the MDSS cfg-cpu bus vote on the SM8450 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 595533aeafc4..0b01f3027ee3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -13,6 +13,7 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8450.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
@@ -2672,8 +2673,12 @@ mdss: display-subsystem@ae00000 {
 
 			/* same path used twice */
 			interconnects = <&mmss_noc MASTER_MDP_DISP 0 &mc_virt SLAVE_EBI1_DISP 0>,
-					<&mmss_noc MASTER_MDP_DISP 0 &mc_virt SLAVE_EBI1_DISP 0>;
-			interconnect-names = "mdp0-mem", "mdp1-mem";
+					<&mmss_noc MASTER_MDP_DISP 0 &mc_virt SLAVE_EBI1_DISP 0>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "mdp1-mem",
+					     "cpu-cfg";
 
 			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 
-- 
2.40.1

