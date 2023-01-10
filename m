Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F8D6638D9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 06:54:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbjAJFym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 00:54:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229848AbjAJFyi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 00:54:38 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1F0C228
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 21:54:36 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id y25so16655288lfa.9
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 21:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jabBOsJuAOXz5E6THeGhybq8PYs1uczTB0v4S2evLMk=;
        b=h4RQqHNEfkj41nymtOI+D7jgMNy01AWBjtC1b8wD2De98Pof3DcabgU4VlfKWSLYVC
         5Pok6PncltK1wMh63eJ0OdcZWrMZ3VlMaGf8m/YmRLdNFdUA38MoXV/9sdtLb4ugg5cf
         g4IYKzHkmSQ+fma2gQaDR+nYIaYiLKZ94owYJdkk+9ZRg5DLU6kNkfqM3dt4cXbjjSW2
         aHd4j/gwKs6NeTAwX/OyODxIAKTDpH9qUySV1iGj4/qtA88RSPXZfFQQqrHYaaNPDEXy
         4UJvkxL8r4u2x8f9MgIVfTm7j796eDO+hxJIfe7oTKurU6sc1nSUGviYoDLbwENjsnEp
         O5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jabBOsJuAOXz5E6THeGhybq8PYs1uczTB0v4S2evLMk=;
        b=pGG4iPVWcnD1/sInh1NZGFA5uSCoDzWXTaFBUSQ5eBGrezx0hPZtNdyQ6FYXIpO/93
         +OqDHQ/ACW5zbykTm+LLdOmlzQpaeNMKOMPhU0Px2CMLnEZMKzUWbmS/iNU4gfk1KOB3
         6m5VUhu/qpmCTUFngBL2yOcd/XMtnSUduYvWYjnJ0R279+WPHNbOnoS1pjqjb08JOBQd
         0761R6qUxskmsNVNgpVcwIM3A+vE6+kxXWi8gBWa8CD8ouB/CpcIQqa7MWYdu5WHqEh5
         7XNrBdPZO0ur8wi27W3dJ8MQSvwLbAiy3HKtugJRCFZrAZN4oW9uuNBhDHvbxij3Q77W
         ISYA==
X-Gm-Message-State: AFqh2kq38a6OlSSRy514cE/rNxTZznJ0mftCSkAmYsUD6xajilmxn/G3
        5JTkNr0e4bjHn8uzpgYWprziZQ==
X-Google-Smtp-Source: AMrXdXv/efda3LfIKeTP9mZZ+E5CKIcJvbRv192lmiNh2BuVQ9hoOhuA7Gf/Cwp16+bWmKg2rCXl0Q==
X-Received: by 2002:a05:6512:ba8:b0:4ca:98ec:7d9a with SMTP id b40-20020a0565120ba800b004ca98ec7d9amr22111640lfv.15.1673330074947;
        Mon, 09 Jan 2023 21:54:34 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id h37-20020a0565123ca500b004b52aea5ff8sm1987227lfv.30.2023.01.09.21.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 21:54:34 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Subject: [PATCH 1/3] ARM: dts: qcom: msm8974: Add compat qcom,msm8974-dsi-ctrl to dsi1
Date:   Tue, 10 Jan 2023 07:54:31 +0200
Message-Id: <20230110055433.734188-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

Extend the secon DSI interface with the SoC-specific compat entry,
following the change for the first DSI interface.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 14737a3300d1..3c725ada52c0 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1686,7 +1686,8 @@ dsi0_phy: phy@fd922a00 {
 			};
 
 			dsi1: dsi@fd922e00 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,msm8974-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0xfd922e00 0x1f8>;
 				reg-names = "dsi_ctrl";
 
-- 
2.39.0

