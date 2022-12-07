Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD106645120
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 02:28:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiLGB2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 20:28:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiLGB2H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 20:28:07 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 411D8286D1
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 17:28:06 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 1so12798712lfz.4
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 17:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bfrgb8LmygfZn98WhFUeywPOLMjR7f+hzTMKV7Woi74=;
        b=mdd8dfqV16Bi1k3ovMs3c2p2XNU0oKk3XwBCg7DQfxE3iHVPJBGVx73xkZPw+/F1qj
         vlIjnCbRLHq8wy8yeldNalMGRS5VkJD9TuEgnPCrz1CvUau+pwoGDK3ZYQB4Uq2QSGi0
         6Yef2o0wwf8wMDZwAiFx1JlBNNYClSB3NdV0yIIz0/DPH/13nTP0qhB6LbhZh2pwMGSZ
         DRTHUSWzVdoMUdlfD2upZlxtJCEif+EzGOG/YcOyA2YFmm7LcYlFNVeXqV1BOjK8eJLf
         D0G97OgPyp8FAueY7rNw92IdrLRW3qRk/tnbZISITRyKm/K3aHqif68ivdJfCRYxXbdi
         p8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfrgb8LmygfZn98WhFUeywPOLMjR7f+hzTMKV7Woi74=;
        b=2D8kcPjAnKspnuzcfqzR/e8+yd4hp7bNyawSpoqoGZAFOBX2qCex3HNTOCOkxDsxOO
         HG2iNKTrLdApExP1LJuSFwZPEKM0K53NSBouVMUng4dJiji62gzq+03jHeHLFQMcZw6b
         AGuaT8aM+Xkfjr0lWTTaivI0n2HU9LYC67IHdK4dq2CE9vRs68bHEUFPu41+r5OadbOL
         mL/Mpjps2rc1PVQp8P1HFPp4DiB0+YeuJ42tOBLBIHM70pCwBhABNWzGIjctzmVEAXH+
         Dj3j832yV3wzWbBY/sJe2SU962TDiUWOw0v6zibPecQ9TClpd5NWSv1KNSXdbLs1fPnG
         e7IQ==
X-Gm-Message-State: ANoB5pkeg3rxKjHv7+H2dZQGIhdPzoMxGTYsfuZ2IlBpPyA4yL0kDw1c
        lMH81P43A4I8lKV6WM5RjMsmxg==
X-Google-Smtp-Source: AA0mqf4RwQzhEUSeU7ewYGfbNrc0S+6QgfPge42Yi9h+mSEhUzs8nFr/i4pnZuGpqSazHuu+/x1ykA==
X-Received: by 2002:a05:6512:340d:b0:497:456d:890 with SMTP id i13-20020a056512340d00b00497456d0890mr22844683lfr.687.1670376484641;
        Tue, 06 Dec 2022 17:28:04 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n26-20020a05651203fa00b004b5626ef9f4sm1461157lfq.262.2022.12.06.17.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 17:28:04 -0800 (PST)
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
Subject: [PATCH v4 0/5] arm64: dts: qcom: sm8450-hdk: enable HDMI output
Date:   Wed,  7 Dec 2022 03:27:58 +0200
Message-Id: <20221207012803.114959-1-dmitry.baryshkov@linaro.org>
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

Changes since v3:
- Renamed mdss node to display-subsystem@ (Krzysztof)
- Dropped empty line from the patch4 (Krzysztof)
- Renamed HDMI connector endpoint to hdmi_connector_out

Changes since v2:
- Dropped clock-names from mdss device node
- Fixed pinctrl configuration used by lt9611uxc (Krzysztof)

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

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 117 +++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi    | 303 +++++++++++++++++++++++-
 include/dt-bindings/power/qcom-rpmpd.h  |   1 +
 3 files changed, 409 insertions(+), 12 deletions(-)

-- 
2.35.1

