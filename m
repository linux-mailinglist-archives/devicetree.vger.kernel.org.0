Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0178634B27
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 00:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235292AbiKVXhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 18:37:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235000AbiKVXhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 18:37:03 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE7C9DB84
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:37:01 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id f13so4285786lfa.6
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jiQzjk4U2HBL8m9nCmdH0QqbW0qnEDB7JZce1irB8qw=;
        b=gGKAQKdv563C0u+WXaCrTOxSt4oi0Gzo9xbEyK0chJ5EkTcKRvEG7Chp7zHxOYhqBU
         xuNHeX+I2qzo1Bb65t4nCoto3D19Npd11LkQvCygMMcnblKMIbwQbZe66b1NfkaRBqtU
         NjP7rEVEXms5uh0ocz6cA72tmeEtp/7+DR4ub5CEW/zJTzFn1cxlxxfw6tcDfaQfFr3N
         PiXhHoDN38B5dqHk3D3MlUy68kYLCgGelhayXsDx7XmGEmxoRn3u7UVp5H4+5Nbm9H9K
         x7qG8BPSG/JBj02t2RUFCCNYdVZJj41myreXKfbExEFnTo03HpIYmNkz7iFD5no7/XuX
         6H4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jiQzjk4U2HBL8m9nCmdH0QqbW0qnEDB7JZce1irB8qw=;
        b=APmlLLza1pQQrAA7oBTEJuLkAt9oXhdqljY4+/UgQjbBOgvoOsvDsL5YIgszTMc/SD
         6sz4fYCk5NI9hbXQ+3GhNNIWrCb9LxI9T3nC1n2jKpBRwOpkOFaNXgLndIEcUeAWR3G3
         uD3R/CiuEBOqMjg4AI3n7ga+Bj33w6zVdE2TP6WeGxzZFQ6lWYke187BwBT/U6Wx5HSt
         s7oZjownGEiNtDwz6cm1UFZMlqWfLsIfRHm3jaBIHocsOMcT1Hq+EMXR4CyhIs4REZyl
         JUccS90AWgCMIIfY50GN52/RVcIxI2foFyfJk0vyG1atqmZfFI8jVq3Q95jGWGMeFhoX
         Igug==
X-Gm-Message-State: ANoB5pnEfWIBy9cutB+nDx1QqYlG0PCQwLUTZfYuqJJSejMoRpV/rXVR
        YwF4n+pSqpJIaf4plxN3l1/edA==
X-Google-Smtp-Source: AA0mqf4rbwu1mUCXJ+V4n19yRGiu6bs/kFIOG1QwdiwAGz+l+K+/1xXJzZ04Qsd1evUe7LbbLVzz7g==
X-Received: by 2002:a05:6512:32d0:b0:4b4:b5ed:c71f with SMTP id f16-20020a05651232d000b004b4b5edc71fmr8410539lfg.227.1669160220307;
        Tue, 22 Nov 2022 15:37:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbkzhtyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:8a1a::1])
        by smtp.gmail.com with ESMTPSA id h3-20020ac250c3000000b00492c463526dsm2666454lfm.186.2022.11.22.15.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:36:59 -0800 (PST)
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
Subject: [PATCH v2 0/5] arm64: dts: qcom: sm8450-hdk: enable HDMI output
Date:   Wed, 23 Nov 2022 01:36:54 +0200
Message-Id: <20221122233659.3308175-1-dmitry.baryshkov@linaro.org>
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

Add device tree nodes for MDSS, DPU and DSI devices on Qualcomm SM8450
platform. Enable these devices and add the HDMI bridge configuration on
SM8450 HDK.

Changes since v1:
- Reorder properties, making status the last one
- Rename opp nodes to follow the schema
- Renamed display-controller and phy device nodes
- Dropped phy-names for DSI PHYs
- Renamed DSI and DSI PHY labels to include mdss_ prefix
- Renamed 3v3 regulator device node to add -regulator suffix

Dmitry Baryshkov (3):
  arm64: dts: qcom: sm8450: add RPMH_REGULATOR_LEVEL_LOW_SVS_D1
  arm64: dts: qcom: sm8450: add display hardware devices
  arm64: dts: qcom: sm8450-hdk: enable display hardware

Vinod Koul (2):
  arm64: dts: qcom: sm8450-hdk: Add LT9611uxc HDMI bridge
  arm64: dts: qcom: sm8450-hdk: Enable HDMI Display

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 119 ++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi    | 304 +++++++++++++++++++++++-
 include/dt-bindings/power/qcom-rpmpd.h  |   1 +
 3 files changed, 412 insertions(+), 12 deletions(-)

-- 
2.35.1

