Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6729B7010DD
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 23:18:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240294AbjELVSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 17:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240097AbjELVSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 17:18:03 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 248481999
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 14:17:32 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f24ddf514eso8033389e87.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 14:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683926249; x=1686518249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uUhDgDcWbIG+XLDN9eB0Nh2ME/1BLFb5ILno2mhyKus=;
        b=pNZ+t41UinFVJQnXRkHfpdOj0Kt8od6+mwWkdi1FPyFQ6PGJThglvK5C1Kqts3TpwC
         kPgLA9SU2xNCT/nnS2VhxnQxvn/FjhKsUv+nOv1c57nwKnMT64DACWfnXBePr2rKobbN
         Nb0uNVn6xPT9nTx3yvtaI6cjBecUzwG2nMttpyTFlAcQ2YdCLPWFthdG2AZzHwde3tI+
         vTnDxW+yhYwL6xx1Iq8Tryk1R6D2X1GrYdcBf2CKQ28Ui7oHu/Wn1dgg45EsBK1Lk1Lo
         GOBeFhuoVYJYwAqbZoQzFkxqFSZGgNUVSqjBQPQ79dKr1e4pRObIeFgnvBS0ExwGYNES
         rBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683926249; x=1686518249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUhDgDcWbIG+XLDN9eB0Nh2ME/1BLFb5ILno2mhyKus=;
        b=gk4tUFjusneey6W/2JrGQVLZ+C50x11JtIjGP073Rl07WEUc/Qz8kE4Pth1aZ2yQ0+
         6Em2RcImUL4/xMzwl23BvNC8E/Uiw8j7Hz+mYlKyhcJY62QXgxxqGH9CZtJfYzKGbCT5
         UAVylYf0NfYQc/bqhfKi22fVOas4iOuO6ASV4ksZnbweMfZXrKF1mH/6QYdm+Ap7x8SA
         sGy7qc6HhsQtwPDhbl9Prsd7yCw8sw2wNwiTPfDOaSwxl5wPdfC2HbrySBYKxUn36x0B
         hiMOTW2sb362RyOAsHiIvhyUirYJUqp380EXBALj8fTS+OHyKnf+ug5hr0+gYmNXNXYZ
         c0eA==
X-Gm-Message-State: AC+VfDzNx0f6rpiNXxF+GCrilLa2vNB0kdWVNIzUbUSRTs1oGxZzaqxp
        FELM0aRU/QCQhajgm1j9S9cBuw==
X-Google-Smtp-Source: ACHHUZ5SH/REpqxNgmPPlNVAkbNiWBa9hoYMYSCTT6dPO/Ol1yd4TokDfYnoB1P2Q5QJb2EXVtQTdQ==
X-Received: by 2002:a19:760b:0:b0:4eb:3b4c:50ac with SMTP id c11-20020a19760b000000b004eb3b4c50acmr4117876lff.65.1683926248891;
        Fri, 12 May 2023 14:17:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w4-20020ac254a4000000b004edafe3f8dbsm1590363lfk.11.2023.05.12.14.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 14:17:28 -0700 (PDT)
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
Subject: [PATCH v3 00/10] clk: qcom: convert mdm9615 to parent_hws/_data
Date:   Sat, 13 May 2023 00:17:17 +0300
Message-Id: <20230512211727.3445575-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series concludes the conversion of Qualcomm clock controller
drivers to using the parent_hws/parent_data and declaring all the used
clocks in DT.

Changes since v2:
- Fixed gcc-mdm9615 schema example (Krzysztof)

Changes since v1:
- Dropped clock-names property in favour of using the index parent data
- Fixed Taniya's email (Krzysztof)
- Added Cc:stable to the pll8 patch (Konrad)

Dmitry Baryshkov (10):
  dt-bindings: clock: qcom,lcc.yaml: describe clocks for
    lcc,qcom-mdm9615
  dt-bindings: clock: drop qcom,lcc-mdm9615 header file
  dt-bindings: clock: provide separate bindings for qcom,gcc-mdm9615
  clk: qcom: gcc-mdm9615: use ARRAY_SIZE instead of specifying
    num_parents
  clk: qcom: drop lcc-mdm9615 in favour of lcc-msm8960
  clk: qcom: gcc-mdm9615: use proper parent for pll0_vote clock
  clk: qcom: gcc-mdm9615: use parent_hws/_data instead of parent_names
  clk: qcom: gcc-mdm9615: drop the cxo clock
  ARM: dts: qcom-mdm9615: specify clocks for the lcc device
  ARM: dts: qcom-mdm9615: specify gcc clocks

 .../bindings/clock/qcom,gcc-mdm9615.yaml      |  47 ++
 .../bindings/clock/qcom,gcc-other.yaml        |   3 -
 .../devicetree/bindings/clock/qcom,lcc.yaml   |  34 ++
 arch/arm/boot/dts/qcom-mdm9615.dtsi           |  19 +-
 drivers/clk/qcom/Kconfig                      |  14 +-
 drivers/clk/qcom/Makefile                     |   1 -
 drivers/clk/qcom/gcc-mdm9615.c                | 261 ++++----
 drivers/clk/qcom/lcc-mdm9615.c                | 572 ------------------
 drivers/clk/qcom/lcc-msm8960.c                |  19 +-
 include/dt-bindings/clock/qcom,lcc-mdm9615.h  |  44 --
 10 files changed, 260 insertions(+), 754 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml
 delete mode 100644 drivers/clk/qcom/lcc-mdm9615.c
 delete mode 100644 include/dt-bindings/clock/qcom,lcc-mdm9615.h

-- 
2.39.2

