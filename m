Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1018E565CE0
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 19:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230488AbiGDRY6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 13:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiGDRY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 13:24:57 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFCD6E0B0
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 10:24:55 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id y16so16758829lfb.9
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 10:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y9t/oQcvRmz3WhGtE4QkZvx/Vuhm1DbGGfq7PacKjWM=;
        b=MnWXVBEp2cvjbGwfa5IDCxynvA+suhFxknrdtt1J08RRgy6S6HuHm8Zld3VNAsQYvQ
         RFGT9xQj2yJ2uyK/qUiY0HE9z82CK4ZFHwn00M8OWW9QQPnLrvRdbnoJV/8dYCg29i7K
         7H8zGZJ1m8dI6FZMwIRQBN3b3OhTgp6/ZV2rOYy9Vtwl0+8pJc+wnkgFs1IGNQazL38S
         714pSk/pqFqSXe0Z+LF5UmbE2ZGMnaL7mmBRrHGh3jOoZzJ/UVuMiacchiPHqdd/79gr
         pgVPxfcgWqMNQozs4ASYOz18dtdhd3Hackw4+gF6h6cTVDTteaPaZn5+vMivqTKAvC8x
         R2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y9t/oQcvRmz3WhGtE4QkZvx/Vuhm1DbGGfq7PacKjWM=;
        b=U0KDX1BK+koMdhX2tiLdWsantsks68GJbqfebvtn1HrgZEQBwYjXjuL2SOpnZF9l8Z
         EhN8ezEwsuColfdhAjkpG+W9SLkCCfWuLZkZ6PgTLhpZLvoKXeCycWaF5PmEbfHySkLd
         cd37LooPgaf3EFGMzZHnu9MxKLva0iJvVcspnuOgHrkclCZCz4JRuMsZ5ENlJpV3Ewfd
         ofWPhZ1AfvO9f42WrPuv64S8pIoX9qB73LOsBLrQ20/BqilgX88SYEBd9yM1ffhOGAeM
         UUEnabqewngFSl4s3Q7hT+6U5B1XEyyulh46lK3e+E6YCnJYmM8dypZ64ewmAZ2xNoG7
         X82g==
X-Gm-Message-State: AJIora8AjmdtRmVLURHWrT4oMWss0YfhnSKtCBCNI7pKhO59fKzfCJEG
        9nwYMNHXqnxZKc36OBotGaRniw==
X-Google-Smtp-Source: AGRyM1vWOr4pN6T6pY74ffz2lTptrH4RLT8Z/4DZztsPmdlNFPrtYi6D7NudEdM4XhNOBtbqnrMV2w==
X-Received: by 2002:a05:6512:c21:b0:47f:6392:dcf5 with SMTP id z33-20020a0565120c2100b0047f6392dcf5mr20362693lfu.117.1656955494368;
        Mon, 04 Jul 2022 10:24:54 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u15-20020ac2518f000000b0048152c51812sm2339596lfi.154.2022.07.04.10.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 10:24:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 0/7] clk: qcom: gcc-msm8916: modernize the driver
Date:   Mon,  4 Jul 2022 20:24:46 +0300
Message-Id: <20220704172453.838303-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update gcc-msm8916 driver and bindings to use DT-specified clocks
rather than fetching the clocks from the global clocks list.

Changes since v3:
 - Describe that ARRAY_SIZE conversion fixes the issue in the driver
   (noted by Marijn),
 - Rephrase commit message for the move of GPLL/parent tables patch
   (suggested by Marijn),
 - Fixed the placement of gcc_mss_q6_bimc_axi_clk clock (again, Marijn).

Changes since v2:
 - Use xo-board for the XO rather than RPM clock. This will be sorted
   out separately (requested by Stephan Gerhold).

Changes since v1:
 - None.

Dmitry Baryshkov (7):
  dt-bindings: clk: qcom,gcc-*: use qcom,gcc.yaml
  dt-bindings: clock: separate bindings for MSM8916 GCC device
  clk: qcom: gcc-msm8916: use ARRAY_SIZE instead of specifying
    num_parents
  clk: qcom: gcc-msm8916: move GPLL definitions up
  clk: qcom: gcc-msm8916: move gcc_mss_q6_bimc_axi_clk down
  clk: qcom: gcc-msm8916: use parent_hws/_data instead of parent_names
  arm64: dts: qcom: msm8916: add clocks to the GCC device node

 .../bindings/clock/qcom,gcc-msm8916.yaml      |   61 +
 .../bindings/clock/qcom,gcc-msm8976.yaml      |   21 +-
 .../bindings/clock/qcom,gcc-msm8994.yaml      |   21 +-
 .../bindings/clock/qcom,gcc-msm8996.yaml      |   25 +-
 .../bindings/clock/qcom,gcc-msm8998.yaml      |   25 +-
 .../bindings/clock/qcom,gcc-other.yaml        |    1 -
 .../bindings/clock/qcom,gcc-qcm2290.yaml      |   25 +-
 .../bindings/clock/qcom,gcc-sc7180.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sc7280.yaml       |   21 +-
 .../bindings/clock/qcom,gcc-sc8180x.yaml      |   25 +-
 .../bindings/clock/qcom,gcc-sc8280xp.yaml     |   21 +-
 .../bindings/clock/qcom,gcc-sdm845.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sdx55.yaml        |   21 +-
 .../bindings/clock/qcom,gcc-sdx65.yaml        |   21 +-
 .../bindings/clock/qcom,gcc-sm6115.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sm6125.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sm6350.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sm8150.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sm8250.yaml       |   25 +-
 .../bindings/clock/qcom,gcc-sm8350.yaml       |   21 +-
 .../bindings/clock/qcom,gcc-sm8450.yaml       |   21 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |   14 +
 drivers/clk/qcom/gcc-msm8916.c                | 1020 +++++++++--------
 23 files changed, 669 insertions(+), 870 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-msm8916.yaml

-- 
2.35.1

