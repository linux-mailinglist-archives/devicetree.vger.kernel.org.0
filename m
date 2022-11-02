Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7E3561717E
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 00:13:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiKBXNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 19:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbiKBXNO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 19:13:14 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20829597
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 16:13:12 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id h12so200010ljg.9
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 16:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uSZbtUrumgTcxUg6hHxu4JdqNGMhW+St+6BoWj9AtF4=;
        b=QWt5bE8GoKSTTe/12Fs3pjrZDO66jgMoUnihmGU+vi3vEz3SP9OP8UBz98g69t1Ft2
         xkPX9UVN3qgTPlf/KV+s/wqndJwJTa2V0ZSLFU/kGijn9finrOppSL3lM4MgEGCjPIrt
         6JesASoR9g8ECQHnweaQvHtZTS8HVDAlDh7ZIi5zT9tXqoVEWWB0qajBTypNMTTGm398
         yVLAmrfYy3kZ9+JSms+ygi95vGu/99VG4Zr0SV/9GncofTTkKabI7nqcX7OTs3yYr5HJ
         q2xYs9WRD0hjVaWgUMtOCNzC9n75MlFhFcLUsyCNATAf6j82hbwpFafcp32xpy+6Lin7
         QE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSZbtUrumgTcxUg6hHxu4JdqNGMhW+St+6BoWj9AtF4=;
        b=NeXy0+2Ns718blMu5GQpPPNCDkCum1Du0pBUkKBOQRz4ibkiFz0lsjenUUnX3GuWws
         IMyYRuMOZY2KiV32nd8/SOCV4vwVx7iwShXDvbfYCZVeMD/aK48nrlMvgtGMfHwq4oi9
         yOTuVjNmGKvhO/25Np7aT7JwRvA9+e8go7rg/We09d7wz+PPwR9wkQ5FTCcF16Etr4G7
         pQTpV7quzJtNjziFsjyNYzVqPDSd+jKMro9qhMKkBJ98yVEV5mkbTmEnyB0hbLZIRL01
         V/XoDHoh99dEd0SXDWK01zzv9qMiv9xYyN5zkc5Z+NfXCkALnyFK1zudjMiQLVqtW1nA
         prLA==
X-Gm-Message-State: ACrzQf22ept7lzWdiGvr4I2je+81WI/EwN7KxKEF9Ex+5kLIPwNEoDnK
        /o3a8U4xmUHtBePZf5ziVzM4oQ==
X-Google-Smtp-Source: AMsMyM51xOPV6VD0ssIJh3+v+lQCDuf6J7gYV288GMSp2BNb3pLPFS1Fkom80EzbVJYExX6qGy0eow==
X-Received: by 2002:a2e:a163:0:b0:277:159b:4da2 with SMTP id u3-20020a2ea163000000b00277159b4da2mr10169593ljl.502.1667430791072;
        Wed, 02 Nov 2022 16:13:11 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id m6-20020a056512114600b004b0a1e77cb6sm1636134lfg.139.2022.11.02.16.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 16:13:10 -0700 (PDT)
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
Subject: [PATCH v2 0/8] drm/msm: add support for SM8450
Date:   Thu,  3 Nov 2022 02:13:01 +0300
Message-Id: <20221102231309.583587-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This adds support for the MDSS/DPU/DSI on the Qualcomm SM8450 platform.

Change since v1:
- Fixed the regdma pointer in sm8450_dpu_cfg
- Rebased onto pending msm-next-lumag
- Added DT bindings for corresponding devices

Dmitry Baryshkov (8):
  dt-bindings: display/msm/dsi-controller-main: allow defining opp-table
  dt-bindings: display/msm: add sm8350 and sm8450 DSI PHYs
  dt-bindings: display/msm: add support for the display on SM8450
  drm/msm/dsi: add support for DSI-PHY on SM8350 and SM8450
  drm/msm/dsi: add support for DSI 2.6.0
  drm/msm/dpu: add support for MDP_TOP blackhole
  drm/msm/dpu: add support for SM8450
  drm/msm: mdss add support for SM8450

 .../display/msm/dsi-controller-main.yaml      |   3 +
 .../bindings/display/msm/dsi-phy-7nm.yaml     |   2 +
 .../bindings/display/msm/qcom,sm8450-dpu.yaml | 132 +++++++
 .../display/msm/qcom,sm8450-mdss.yaml         | 349 ++++++++++++++++++
 drivers/gpu/drm/msm/Kconfig                   |   6 +-
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    | 224 +++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h   |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |  12 +-
 drivers/gpu/drm/msm/dsi/dsi_cfg.c             |   2 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   4 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   2 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     | 132 ++++++-
 drivers/gpu/drm/msm/msm_mdss.c                |   5 +
 15 files changed, 864 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-dpu.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml

-- 
2.35.1

