Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02230634ADA
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 00:13:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235296AbiKVXMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 18:12:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235218AbiKVXMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 18:12:42 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E711AF2A
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:38 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id p8so25715100lfu.11
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1gWrn0pcXs3uSjKX4NQp7ZNjC8bDzD46IGCBdiL8A4=;
        b=hurVIlBGZMTymS/LMR33lOAvHLflxlLtSaY1ntMBPP1Y13KywoAQr3aZN3P8YFpquD
         3KYMAw6fVOg+6R320wOS39+NY9lq5Dibe+TWcUm70+ypU4z3uKcseJ5AJ130HyV6ZJ2W
         uu7U9xfQHVUcWBLI5RSHlB/TS9mKGDK6nDt3vsIux+6mpMkLWWgu/fnM27aR0O/DvFoh
         DbaVxOr32HdZGi/ocNd4ogO6FcDTAZPPK9AmCdiNwqbCxnWS/UanxtgyrV3Em4IQW5I1
         AKnt4jnTCgiap/FrFjPZ3EoAslHPoNM6Qttcw2T1iBMYuW6/Vfl7PqEJjG/z9o54bDd5
         XOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J1gWrn0pcXs3uSjKX4NQp7ZNjC8bDzD46IGCBdiL8A4=;
        b=P962s4CLDCHntYIB+T3tTwuKmIF9YKJIMw4A6znh4dtiFAunrAJZD8uqx+W7qmkZRz
         xDu7m+cR96d1e0NGFbf6SYm0Qwmu5z3eyq8qTWpETjSldn2la1QAwCjS1xkDJRcki6Ut
         Z5YSxVi4fkteGK0UBpaIv1LlU3k22m7b94nshaMuv0/M3jmMdyxvDWgVg5Lb6RYhvwSm
         wtLaaRZNoEWD5nAvwUs1XuhiYoGMY3PeXu0EChTT1laARDw9R4s6JHcB8ef3QBtGUSFG
         2C6mjm7LeEo7HJL+dsKMriDLen4aSTukAAtB+9MEJOtbhk4oDeKuO8p5maAunJ/Nl2Jn
         bWiw==
X-Gm-Message-State: ANoB5pkdM12l5gV/1kIaBScidpq+ONpu2oyT5IUb+0myMzfQXcqUuA4W
        1aR7tazzmgM17xBSFAt8ACBHpw==
X-Google-Smtp-Source: AA0mqf6aXeYuDtL1qHbnUTh+9VAOhAsOxSLMS8lmOymFs2SMmb+EUbwpUVZh/N2anuTmHGazZBLXng==
X-Received: by 2002:a05:6512:12ca:b0:4aa:e519:a065 with SMTP id p10-20020a05651212ca00b004aae519a065mr3593416lfg.455.1669158756344;
        Tue, 22 Nov 2022 15:12:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbkzhtyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:8a1a::1])
        by smtp.gmail.com with ESMTPSA id q18-20020ac246f2000000b00497feee98basm2617541lfo.274.2022.11.22.15.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:12:35 -0800 (PST)
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
        freedreno@lists.freedesktop.org
Subject: [PATCH v4 00/11] drm/msm: add support for SM8450
Date:   Wed, 23 Nov 2022 01:12:23 +0200
Message-Id: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This adds support for the MDSS/DPU/DSI on the Qualcomm SM8450 platform.

Dependencies for the DT bindings: [1].

[1] https://lore.kernel.org/all/20221024164225.3236654-1-dmitry.baryshkov@linaro.org/

Change since v3:
- Reworked the dpu-common.yaml / mdss-common.yaml to require properties
  from the same schema where they are defined (Krzysztof)
- Reworked PHY register settings to make it easier to understand
  (Konrad)

Change since v2:
- Rebased onto msm-next-lumag
- Cleaned up bindings according to Krzysztof's suggestions

Change since v1:
- Fixed the regdma pointer in sm8450_dpu_cfg
- Rebased onto pending msm-next-lumag
- Added DT bindings for corresponding devices

Dmitry Baryshkov (11):
  dt-bindings: display/msm: *dpu.yaml: split required properties clauses
  dt-bindings: display/msm: *mdss.yaml: split required properties
    clauses
  dt-bindings: display/msm: mdss-common: make clock-names required
  dt-bindings: display/msm: add sm8350 and sm8450 DSI PHYs
  dt-bindings: display/msm: add support for the display on SM8450
  drm/msm/dsi/phy: rework register setting for 7nm PHY
  drm/msm/dsi: add support for DSI-PHY on SM8350 and SM8450
  drm/msm/dsi: add support for DSI 2.6.0
  drm/msm/dpu: add support for MDP_TOP blackhole
  drm/msm/dpu: add support for SM8450
  drm/msm: mdss add support for SM8450

 .../bindings/display/msm/dpu-common.yaml      |   4 -
 .../bindings/display/msm/dsi-phy-7nm.yaml     |   2 +
 .../bindings/display/msm/mdss-common.yaml     |   2 +-
 .../display/msm/qcom,msm8998-dpu.yaml         |   7 +
 .../display/msm/qcom,msm8998-mdss.yaml        |   3 +
 .../display/msm/qcom,qcm2290-dpu.yaml         |   7 +
 .../display/msm/qcom,qcm2290-mdss.yaml        |   3 +
 .../bindings/display/msm/qcom,sc7180-dpu.yaml |   7 +
 .../display/msm/qcom,sc7180-mdss.yaml         |   3 +
 .../bindings/display/msm/qcom,sc7280-dpu.yaml |   7 +
 .../display/msm/qcom,sc7280-mdss.yaml         |   3 +
 .../bindings/display/msm/qcom,sdm845-dpu.yaml |   7 +
 .../display/msm/qcom,sdm845-mdss.yaml         |   3 +
 .../bindings/display/msm/qcom,sm8250-dpu.yaml |   7 +
 .../display/msm/qcom,sm8250-mdss.yaml         |   3 +
 .../bindings/display/msm/qcom,sm8450-dpu.yaml | 139 +++++++
 .../display/msm/qcom,sm8450-mdss.yaml         | 352 ++++++++++++++++++
 drivers/gpu/drm/msm/Kconfig                   |   6 +-
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    | 224 +++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h   |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |  12 +-
 drivers/gpu/drm/msm/dsi/dsi_cfg.c             |   2 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   4 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   2 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     | 141 +++++--
 drivers/gpu/drm/msm/msm_mdss.c                |   5 +
 28 files changed, 930 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-dpu.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml

-- 
2.35.1

