Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11E46F9B79
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232019AbjEGU2q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:28:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231301AbjEGU2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:28:45 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66F4F35BF
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:28:44 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ac89e6a5a1so30248171fa.0
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683491323; x=1686083323;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LFULAHottHyIiJ/qnKwuTIZZXUlarclQ80PbJxT8P6o=;
        b=I/dtP5NmpVn4Z5lspvVGMjytuzEpdN/5Rb4zQXK89Or4lkX4McpPn7VtRMLwRLsLLA
         rZQGikf62hvxPxpNWi3e/oP8aroAbal7h26OOTq4u48NgfQiMzd1V/cNoszb7qjqINhV
         Er7sZ42DKyE28rv7oO5QmT7SkMlnATvb/Py6zcMTncQ6d/jpqyDRSL+zxbzJieCTlG5N
         LhTVokUrsXKpQkFsCCVWnTXljz6+Xtks+jey4mGKWKyP7zepeX59xH+7QsWPyahTQ6dm
         c1/qSG3AfayxWgaNbvGooY+ZTY5yoOKqL8TzSwgsCYKRRjHWDJFGG0l5He9tVqIc/DBX
         +4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683491323; x=1686083323;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFULAHottHyIiJ/qnKwuTIZZXUlarclQ80PbJxT8P6o=;
        b=EinDnMCT6fHpTZ4bWeYUEso+cEb6twXJf8VwiQoyWq4sG0lntCgDbzexQyF9O4+rSK
         3VpAhRPEnHEkqcTsvh3mquoarHwPABPqwhJZr5Q4b05xdly7wCTqY1GnAWIl8dBrGLyb
         bKml7h3Rl2WI2Ij13HBHn7g6Q4FopnlQ04biDXFejFeaSGfjrmvAS8z8Xm6gE5ntbPSD
         vBwADeUwMj0BE4qk9fhKaBPaxHJkZbPCHyYRayMnJSWi4dkB9mLBDq+s0omV3Mm5fZtm
         l72DZCmqYwh69Pz3NR9HlpLErXg9xDP3NcNXUL1qMQJ1IxECb7ELLaesyJTa7UgWI2J+
         0chg==
X-Gm-Message-State: AC+VfDz3H+OISwMUt6RRl5ci5ESJU3eQgrG7A8rcnevWfGud87nZo3JO
        u9uzYMoZQ7DOOiTUl17IF9RT2g==
X-Google-Smtp-Source: ACHHUZ4Jv+wTxeXCPJjjYK0WrVRacQaoSLrjJFlnb00KVGhyYWlOa2vtQspehH+mxvxa3opWFN5C3Q==
X-Received: by 2002:a2e:9f4f:0:b0:2ac:767c:ae14 with SMTP id v15-20020a2e9f4f000000b002ac767cae14mr2370588ljk.19.1683491322710;
        Sun, 07 May 2023 13:28:42 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f25-20020a2e9199000000b002a8bb52d994sm928043ljg.25.2023.05.07.13.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 13:28:42 -0700 (PDT)
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
        freedreno@lists.freedesktop.org
Subject: [RFC PATCH v1 0/3] drm/msm: add support for HDMI on msm8974
Date:   Sun,  7 May 2023 23:28:38 +0300
Message-Id: <20230507202841.2339127-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support for the HDMI output on the msm8974 platform. It
was tested on the apq8074 dragonboard device.

I'm sending this as an RFC for two reasons:
- The series depends on the other patchset ([1]), which got no feedback
  yet.
- I'm looking at refactoring the HDMI PHY support. I tink it makes
  little sense to land the PHY driver when we know that it is going to
  be reworked during the same development cycle.

[1] https://patchwork.freedesktop.org/series/117431/

Brian Masney (1):
  drm/msm/hdmi: add msm8974 PLL support

Dmitry Baryshkov (2):
  ARM: dts: qcom: msm8974: add support for the HDMI output
  ARM: dts: qcom: apq8074-dragonboard: enable HDMI output

 .../arm/boot/dts/qcom-apq8074-dragonboard.dts |  30 +
 arch/arm/boot/dts/qcom-msm8974.dtsi           |  90 ++-
 drivers/gpu/drm/msm/Makefile                  |   1 +
 drivers/gpu/drm/msm/hdmi/hdmi.h               |   6 +
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c           |   4 +-
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8974.c      | 689 ++++++++++++++++++
 6 files changed, 818 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_pll_8974.c

-- 
2.39.2

