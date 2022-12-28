Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA33D6585E0
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 19:52:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232218AbiL1Swm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 13:52:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231266AbiL1Swl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 13:52:41 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BE21582A
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:40 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id v23so7155494ljj.9
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CygB/IBP7kKgyl+CB0K9jPQziXFfGBJh9wohJieNZIE=;
        b=Effu42plPtAOPfIlVDKsQ0q74R2KUMDHvtCyF3zm31nLA4HRW9YSmiMFr3Jg8zFmx3
         M6VyNuJPm7f6bPPlKiaHAG+KdYS/im3kN3cNfH4ME8SrPZk2IlMvi1DTvhHKPMpjpoMb
         TLhwevvKPMoJJSILw7BVbFSmhM3sHMMeUqGu/9Z+Bk1juSkU5Vokvs2EmLArmiz832A9
         zB1EjEabuS4Mw94zUj1Hd2QHNmEtW2NG+7DxAZkH7MGWJ71GWWkdMCedtBqWnOaSl2i5
         55CNXENkpH4dcx+0gjzoaq+1++5AxA6pb7xVYSa7rgs4M/EwVHMA3lNMrpUN+nRs6MTc
         h9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CygB/IBP7kKgyl+CB0K9jPQziXFfGBJh9wohJieNZIE=;
        b=TaPwlSmbfiMX1iT5PIjHLxNDiRYTd/Dl3kw1jN/vI6j06AiEjJaS7y3QsksP+BIMGN
         7DoIaEQWHjwgtIkP0UMHYRfR6nQbweH+/iCb2hNq8oteF2mQgwBelOm7RuVsRIc+8HzT
         lGRUaolyjLecoYi0Ol6sILAanU+FN0xZZL+S8xey6XDHuCv8D24a+tCrFfN0UtMzlCT3
         JsVT2Au7fXbd55SR8x1ypgHmW5g5roo1b3jzMM4p2qVw4bNIqrXNSasb077Yi8BgbUFL
         qToRB9K7HHIwOmYWSA7lbuBEzeoLqRBKAsEWRyjvNx3MpdyRCCaVKNK3C/2eRhiih3EJ
         a2tw==
X-Gm-Message-State: AFqh2kq4jXffXzC0NeCs6suXKVZ4Udis8SMnLjmfshzKPXCWtCBWtuY+
        DSDZrU8a4iDZFS7YdCoVNO8mlg==
X-Google-Smtp-Source: AMrXdXuDAT7XfAks4U71M1kJXyVIW13XligoL+JNKJkZeMCuj+mOvhCs857AnRs1Zor39crKjnnwbw==
X-Received: by 2002:a05:651c:c8e:b0:279:e1ba:8c66 with SMTP id bz14-20020a05651c0c8e00b00279e1ba8c66mr7347365ljb.27.1672253558686;
        Wed, 28 Dec 2022 10:52:38 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s7-20020a2e83c7000000b00279d206a43bsm2031893ljh.34.2022.12.28.10.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 10:52:37 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 00/16] clk: qcom: get rid of core_bi_pll_test_se
Date:   Wed, 28 Dec 2022 20:52:21 +0200
Message-Id: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
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

Drop core_bi_pll_test_se from all Qualcomm clock controller's bindings
and drivers. The clock is not used by anyone.

Changes since v1:
- Fixed error in the qcom,gcc-msm8998 example.

Dmitry Baryshkov (16):
  dt-bindings: clock: qcom,gcc-msm8998: drop core_bi_pll_test_se
  dt-bindings: clock: qcom,gcc-sdx55: drop core_bi_pll_test_se
  dt-bindings: clock: qcom,gcc-sdx65: drop core_bi_pll_test_se
  dt-bindings: clock: qcom,gcc-sm8350: drop core_bi_pll_test_se
  dt-bindings: clock: qcom,mmcc-msm8998: drop core_bi_pll_test_se
  dt-bindings: clock: qcom: gcc-sm8350: drop test clock
  dt-bindings: clock: qcom: gcc-sm8450: drop test clock
  clk: qcom: dispcc-qcm2290: get rid of test clock
  clk: qcom: gcc-msm8998: get rid of test clock
  clk: qcom: gcc-sc7180: get rid of test clock
  clk: qcom: gcc-sdx55: use ARRAY_SIZE instead of specifying num_parents
  clk: qcom: gcc-sdx55: get rid of test clock
  clk: qcom: gcc-sm8150: get rid of test clock
  clk: qcom: gcc-sm8350: get rid of test clock
  clk: qcom: mmcc-msm8998: get rid of test clock
  arm64: dts: qcom: msm8998: get rid of test clock

 .../bindings/clock/qcom,gcc-msm8998.yaml      |  6 +-
 .../bindings/clock/qcom,gcc-sdx55.yaml        |  9 +--
 .../bindings/clock/qcom,gcc-sdx65.yaml        |  8 +--
 .../bindings/clock/qcom,gcc-sm8350.yaml       |  2 -
 .../devicetree/bindings/clock/qcom,mmcc.yaml  |  2 -
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  4 +-
 drivers/clk/qcom/dispcc-qcm2290.c             |  6 --
 drivers/clk/qcom/gcc-msm8998.c                | 13 ----
 drivers/clk/qcom/gcc-sc7180.c                 | 16 -----
 drivers/clk/qcom/gcc-sdx55.c                  | 64 ++++++++-----------
 drivers/clk/qcom/gcc-sm8150.c                 | 17 -----
 drivers/clk/qcom/gcc-sm8350.c                 | 15 -----
 drivers/clk/qcom/mmcc-msm8998.c               | 25 --------
 include/dt-bindings/clock/qcom,gcc-sm8350.h   |  1 -
 include/dt-bindings/clock/qcom,gcc-sm8450.h   |  1 -
 15 files changed, 33 insertions(+), 156 deletions(-)

-- 
2.39.0

