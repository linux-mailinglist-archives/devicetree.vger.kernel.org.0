Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A6CE756765
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 17:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbjGQPTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 11:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbjGQPTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 11:19:15 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03EEB103
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 08:19:13 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb5bcb9a28so7243498e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 08:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689607151; x=1692199151;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XihfBswXwLBU5koXjyBjWrHqV9uRQHPvDY83RX4DoHY=;
        b=HgNoiuLE84+GinSTqbSdq28VHVz0aj7SX6ISwPKtGCSkCip9kyr3GLq47604WWBAv8
         cNth2aLEE5jHLMYMV9DucKYHFknTUPUFDrXd64Npsa52KDpwN77j05PkXk/T9P5lLsIQ
         bVDGqjz7SKEoIaySrn7MYjjTqUssxxHVxC+8/J4Bf/rolR3PgcU8jpXloeGAskzYHxMn
         yF4bV9Zu1buy2f1RB0ZXG0IM3B5MESdV94Nk1dOek5LWTS0L+qFw8ciFm317216dnrSc
         m23LVoaYkzs8YewhZOLyCVXNphTcRm4UZIdanL12aAFScNlx/sJqflOG2G7cR2VAgc7+
         PJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689607151; x=1692199151;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XihfBswXwLBU5koXjyBjWrHqV9uRQHPvDY83RX4DoHY=;
        b=Yz0+DkbJLZhHJvsXkeKD0CFKw2NoamFWclI7HOZH1A9y+ON+ah6ZzD6lGGpmerlHOn
         FfSYhPD2PcPnehyk2qWrDKLNkN7DvEIh6aeJNvisRWl2LM6Jhg38eZr7oaia5A96tk2U
         pJURDkxtU2afdQWx06EvR5AVwu7zKVlg1kdp0eifXH6NLkPw+VZIQa8LEBMdRtovkUkG
         h1RdboP/IcR5OzpewViuA1G/71XU+hxT74LKsM8G4QwW0nywCiyE39V5qBgFzvnLOpLN
         OIPVVITQ+iN9fceB2+ZAttnHISHb3kTYO11uCo+bo+bhsSTlrGb1SUaETPmk6GOeKjhK
         Uybw==
X-Gm-Message-State: ABy/qLaDR33aMsETQ5P/H06fX6oyk7fZFBn39Ml+iekJMU7cuv64KU+C
        11FcUzAph/T6Edlhh6rMLO6DZw==
X-Google-Smtp-Source: APBJJlGOtnAOhdCE+iX25a9G72ozcufRcXwg/cOq3fBHzPN/qevvbquyt3zQLNUEg3DI0tdXZVYL+g==
X-Received: by 2002:a05:6512:446:b0:4fb:8eec:ce49 with SMTP id y6-20020a056512044600b004fb8eecce49mr7627389lfk.31.1689607150886;
        Mon, 17 Jul 2023 08:19:10 -0700 (PDT)
Received: from [192.168.1.101] (abyj181.neoplus.adsl.tpnet.pl. [83.9.29.181])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b004f26d63f823sm2873949lfh.237.2023.07.17.08.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 08:19:10 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 00/15] Unregister critical branch clocks + some RPM
Date:   Mon, 17 Jul 2023 17:19:07 +0200
Message-Id: <20230717-topic-branch_aon_cleanup-v1-0-27784d27a4f4@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOtbtWQC/y2NUQqDMBBEryL73YBRMLRXKUXWda0LYROSKgXx7
 l2kn2+YN3NA5SJc4dEcUHiXKkkN/K0BWlHf7GQ2hq7t+jb44D4pC7mpoNI6YtKRIqNu2Q33MJD
 vFw6ewPQJK/97NqBbjBbmwot8r7/n6zx/sjvjSX8AAAA=
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689607149; l=3625;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Jh2Pm4OQu9lmpeh/JOIF5+88JeDKQ7w+nRxBV+Y9MgU=;
 b=EUeSFSHJFb7La6v+Ca119npp+SUq3EkB5fdllnWXDXVE84/pdVUYqkAtAJPs91wk9a2lCVttW
 /FXQrp+aI4MCK6d/8HsIQGDXlXxfZPcjrC4XZmcYea7s4EPgg4Dpm8I
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Qualcomm SoCs, certain branch clocks either need to be always-on, or
should be if you're interested in touching some part of the hardware.

Using CLK_IS_CRITICAL for this purpose sounds like a genius idea,
however that messes with the runtime pm handling - if a clock is
marked as such, the clock controller device will never enter the
"suspended" state, leaving the associated resources online, which in
turn breaks SoC-wide suspend.

This series aims to solve that on a couple SoCs that I could test the
changes on and it sprinkles some runtime pm enablement atop these drivers.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (15):
      clk: qcom: branch: Add a helper for setting the enable bit
      clk: qcom: Use qcom_branch_set_clk_en()
      clk: qcom: gcc-sm6375: Unregister critical clocks
      clk: qcom: gcc-sm6375: Add runtime PM
      clk: qcom: gpucc-sm6375: Unregister critical clocks
      clk: qcom: gpucc-sm6115: Unregister critical clocks
      clk: qcom: gpucc-sm6115: Add runtime PM
      clk: qcom: gcc-sm6115: Unregister critical clocks
      clk: qcom: gcc-sm6115: Add runtime PM
      clk: qcom: gcc-qcm2290: Unregister critical clocks
      clk: qcom: gcc-qcm2290: Add runtime PM
      arm64: dts: qcom: sm6375: Add VDD_CX to GCC
      arm64: dts: qcom: qcm2290: Add VDD_CX to GCC
      arm64: dts: qcom: sm6115: Add VDD_CX to GCC
      arm64: dts: qcom: sm6115: Add VDD_CX to GPU_CCC

 arch/arm64/boot/dts/qcom/qcm2290.dtsi |   1 +
 arch/arm64/boot/dts/qcom/sm6115.dtsi  |   3 +
 arch/arm64/boot/dts/qcom/sm6375.dtsi  |   1 +
 drivers/clk/qcom/clk-branch.h         |   7 ++
 drivers/clk/qcom/dispcc-qcm2290.c     |   2 +-
 drivers/clk/qcom/dispcc-sc7280.c      |   2 +-
 drivers/clk/qcom/dispcc-sc8280xp.c    |   2 +-
 drivers/clk/qcom/dispcc-sm6115.c      |   2 +-
 drivers/clk/qcom/dispcc-sm8250.c      |   2 +-
 drivers/clk/qcom/dispcc-sm8450.c      |   2 +-
 drivers/clk/qcom/dispcc-sm8550.c      |   2 +-
 drivers/clk/qcom/gcc-qcm2290.c        | 136 ++++++++---------------------
 drivers/clk/qcom/gcc-sa8775p.c        |  18 ++--
 drivers/clk/qcom/gcc-sc7180.c         |  16 ++--
 drivers/clk/qcom/gcc-sc7280.c         |  14 +--
 drivers/clk/qcom/gcc-sc8180x.c        |  20 ++---
 drivers/clk/qcom/gcc-sc8280xp.c       |  18 ++--
 drivers/clk/qcom/gcc-sdx55.c          |   2 +-
 drivers/clk/qcom/gcc-sdx65.c          |   2 +-
 drivers/clk/qcom/gcc-sdx75.c          |   4 +-
 drivers/clk/qcom/gcc-sm6115.c         | 155 ++++++++--------------------------
 drivers/clk/qcom/gcc-sm6375.c         |  34 +++++---
 drivers/clk/qcom/gcc-sm7150.c         |  16 ++--
 drivers/clk/qcom/gcc-sm8250.c         |  12 +--
 drivers/clk/qcom/gcc-sm8350.c         |  14 +--
 drivers/clk/qcom/gcc-sm8450.c         |  14 +--
 drivers/clk/qcom/gcc-sm8550.c         |  14 +--
 drivers/clk/qcom/gpucc-sc7280.c       |   4 +-
 drivers/clk/qcom/gpucc-sc8280xp.c     |   4 +-
 drivers/clk/qcom/gpucc-sm6115.c       |  57 ++++++-------
 drivers/clk/qcom/gpucc-sm6375.c       |  38 ++-------
 drivers/clk/qcom/gpucc-sm8550.c       |   4 +-
 drivers/clk/qcom/lpasscorecc-sc7180.c |   2 +-
 drivers/clk/qcom/videocc-sm8250.c     |   4 +-
 drivers/clk/qcom/videocc-sm8350.c     |   4 +-
 drivers/clk/qcom/videocc-sm8450.c     |   6 +-
 drivers/clk/qcom/videocc-sm8550.c     |   6 +-
 37 files changed, 245 insertions(+), 399 deletions(-)
---
base-commit: 2205be537aeb1ca2ace998e2fefaa2be04e393e4
change-id: 20230717-topic-branch_aon_cleanup-6976c13fe71c

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

