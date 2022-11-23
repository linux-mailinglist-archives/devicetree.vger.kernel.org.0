Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC45A636C18
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 22:08:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237373AbiKWVIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 16:08:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238976AbiKWVHX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 16:07:23 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0589C97AAE
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:07:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bp15so29907105lfb.13
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v0A9RS9WTIAG2lt1QtTE8t0FlIRUG4CfcC0TMQSUbrY=;
        b=OlLe32Q7esYlagWdYgvqaaO7qhmshYM8OtCqr+j9I+xK/dw34fk/8Aqicw3BcPvaZ/
         1PCv2AxP/VlKMF2iwb002W0G3prAqiIHdun1LZsEUmG8uLJ/CJ6Un8Kj0keI00PCk08n
         i2U8gVm9BpvwrhLuQG7CIIf9EPzSV0oudxv5dl+Xqe+xhAlohvG4rYrMYE2geLt6jfFb
         ZRx7549DNxoku9IpQXYrBFDh0vs2mPZcFTLruShebPgXLUclk9YF3ucB/9vzvINaJvYp
         Mzcr2s3LVqHOjEUBe/FiL4zQodidSM/Nasz3T5gq20+S4EAQllxKONFAyVHBXcZoEej9
         T3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v0A9RS9WTIAG2lt1QtTE8t0FlIRUG4CfcC0TMQSUbrY=;
        b=6gukfWq9aZHXOF0EeyzaG82ruNR5zEeeBw1/ImTKxyoAXxmZ53GRb5oRbL7GMJG4hI
         KEkjNJ4GlFaKL72QNCYDNyOJEc0JVMOeMyhy75PTZwFGPCgdQLlI6TMV4btsu5Ok9BHc
         Hs/Iw3cKLxJ+DpUxNqSs1cQyz6XSXeTXv9qn7F4vV+BD1VJ4NJv333/rWgacouOM3khx
         sD6C+4j4I91uE22NQaXSK6WdLRhRo1wxRAKAT9RaXICBowZdwkI7C2Al1V7tH2vBHD0W
         B7OFeN18nqs8K9UTFTUuXIN+mJbIoBn9aTqUThijdcgUmGyry3aZ1LLiMBTtXynn5boj
         tXpg==
X-Gm-Message-State: ANoB5plhejKlGyrVP1QjAfOZSDAkt5UYOTNM+4F6hckyjS8EUKZNEcVa
        2aUg/mCsqB/11TvWtAjQZifrcw==
X-Google-Smtp-Source: AA0mqf75hVPqSKxibnxFEsIPqYTLibqLSPku8NPj30wsuDlj+TSP2+pWTMc7yYwJd2S8M4bkwpKu9w==
X-Received: by 2002:a05:6512:3c8e:b0:4ab:714b:7d1b with SMTP id h14-20020a0565123c8e00b004ab714b7d1bmr9670025lfv.621.1669237641402;
        Wed, 23 Nov 2022 13:07:21 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2415a000000b0048a8c907fe9sm3024119lfi.167.2022.11.23.13.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 13:07:21 -0800 (PST)
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
Subject: [PATCH v3 0/5] arm64: dts: qcom: sm8450-hdk: enable HDMI output
Date:   Wed, 23 Nov 2022 23:07:15 +0200
Message-Id: <20221123210720.3593671-1-dmitry.baryshkov@linaro.org>
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

Add device tree nodes for MDSS, DPU and DSI devices on Qualcomm SM8450
platform. Enable these devices and add the HDMI bridge configuration on
SM8450 HDK.

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

