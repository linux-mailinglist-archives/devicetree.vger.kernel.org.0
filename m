Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B427661E37
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234305AbjAIFOI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:14:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbjAIFOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:14:05 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CBDDBC15
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:14:04 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id s22so7758946ljp.5
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PvdkWVVFT++i2HrXBK25wLmmBQIyNJvJJ78RUMtwfHQ=;
        b=cMmJD80AQE5+uGOgBtAn20gwsELKhIR5IRx28DwD9gcV/j376g1au5p3+zmmlWRRoJ
         ik5BtT0BPcSiCHxmJCPV3zFErCP/brX6c6gIGzCZbMnyGk7KD5hclqpxrZmee4mSO2za
         YzNsWNh3pENDCfe3KqxSjl22TY/kKSe0E+BN0ZSgBVfbzcaW+EIgX6BQgBGmdXn6HbtX
         KTm5AMr8S4HsVlNK0nPmZD8diV2d9jvlhnUMeTOCS59Zs12CTRBZpqxgtO7jGS1WlJcz
         7XPoBH1YRvijCI8OxnoPKxWAoePIb1JpcoH/qzrnhqJvd+jsKcul6+PQDTJ3LOGyGYz2
         ac6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvdkWVVFT++i2HrXBK25wLmmBQIyNJvJJ78RUMtwfHQ=;
        b=OjY1eokdyjtqQo4sAyQMKYOL1ba0/MCUkjmFXfg8tI931b1C60pnW8ncHyaAZdCRBn
         mEAcOaYqsNGtMX7d0t4I1TEa+C7RqHXV/XFIOkff3QV0asNN7nt4vdoGQAFqqdXtlozn
         i/Uw6tq/NNL3mfe1fMCXaPRgviIn2aZHAkpdxE1PwpiJN0qWP6U4EhcuwTv/92hdzy+v
         s438IGTU21B8pbvFmlvr213Hz0G3/FM6t3nq1csXPSMIysyBrWnW+ByjE7XGmN9IzhHJ
         PBWihuePqUg90xE6p/1C0talNLCKjLK71TKahxQJvjXfeDSmGTjI8b1jydjk+89zECNR
         1bKw==
X-Gm-Message-State: AFqh2kpXrW+WnRC/vUWqojTx6y8k8BFwdas6rj3t/BVTdZDHKwgIcvC+
        Xf+fafsxhEr4EpsnC8+yOfeaCA==
X-Google-Smtp-Source: AMrXdXtdwSRQ4dPucdNAQqPmdkBsTj0C9tXRHKfE+ngpkDjMyh9Kw6hDCs2C7izQqkMAG/GiGql+5Q==
X-Received: by 2002:a2e:92cf:0:b0:27f:a604:22b8 with SMTP id k15-20020a2e92cf000000b0027fa60422b8mr15051285ljh.40.1673241242904;
        Sun, 08 Jan 2023 21:14:02 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w4-20020a19c504000000b004b5812207dbsm1426880lfe.201.2023.01.08.21.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:14:02 -0800 (PST)
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
Subject: [PATCH 0/6] dt-bindings: display/msm: rename mdss and mdp nodes
Date:   Mon,  9 Jan 2023 07:13:56 +0200
Message-Id: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
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

Finish the process of renaming display-related nodes on Qualcomm
systems. Fix it in the schema that MDSS (Mobile Display SubSystem)
devices are named `display-subsystem' and both MDP (Mobile Display
Processor) and DPU (Display Processor Unit) nodes are named
`display-controller'.

Dmitry Baryshkov (6):
  dt-bindings: display/msm: rename mdss nodes to display-sybsystem
  dt-bindings: display/msm: rename mdp nodes to display-controller
  arm64: dts: qcom: rename mdss nodes to display-subsystem
  ARM: dts: qcom-msm8974: rename mdss node to display-subsystem
  arm64: dts: qcom: rename mdp nodes to display-controller
  ARM: dts: qcom: rename mdp nodes to display-controller

 .../devicetree/bindings/display/msm/dpu-common.yaml   |  8 ++++++++
 .../devicetree/bindings/display/msm/mdss-common.yaml  |  8 ++++++++
 .../devicetree/bindings/display/msm/qcom,mdp5.yaml    |  3 +++
 .../devicetree/bindings/display/msm/qcom,mdss.yaml    | 11 +++++++----
 arch/arm/boot/dts/qcom-apq8064.dtsi                   |  2 +-
 arch/arm/boot/dts/qcom-msm8974.dtsi                   |  4 ++--
 arch/arm64/boot/dts/qcom/msm8916.dtsi                 |  4 ++--
 arch/arm64/boot/dts/qcom/msm8953.dtsi                 |  4 ++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi                 |  4 ++--
 arch/arm64/boot/dts/qcom/sc7180.dtsi                  |  2 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi                  |  4 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi                  |  2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                  |  2 +-
 13 files changed, 40 insertions(+), 18 deletions(-)

-- 
2.39.0

