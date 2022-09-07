Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 425435AF8B4
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 02:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiIGABN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 20:01:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiIGABM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 20:01:12 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4539780513
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 17:01:09 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k9so17800239wri.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 17:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=88hXmKXc1thUjeX+tf74vW/rmtLSitNf5zRyTTR2X/k=;
        b=eXwtNAg/f1lVgmp/xSQDkzlJ/4YWCIlgejhg7VgyBU5ySJjXp3fRoqBT4fdj9kMcqq
         ZUgTj/9xBxL/srBhbdmiZP3AFNDOQQiWs7UsDcd5IAIk/28uCBWC9ZZAcVC/JVb+EwaY
         VYKcQTSjnwX3mHaeEvFvT5SgDW4H0JV63y4J6djyoC2XQqk8d+S926gKxdiFzNl8FTk6
         jQqBQxJPc7b05WJEbc5qTm5LhDYiiSmUvemCJECWuppHfRZrcCLBc1e9QWXwsU22oiQX
         a5ujYXJnuImgx+Y72jC7eWoCUpapZpE7IHoCK2Zci40QJ1S8He9OtxN7lQ6LQ8XQYpLb
         2dew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=88hXmKXc1thUjeX+tf74vW/rmtLSitNf5zRyTTR2X/k=;
        b=IA4nRMT5XbnAMVlfxRfyakTNcAjWhHgBT036rpH+meIdq1fKgTfsHc4yQZMQW0Rcx2
         u16M9nHjDM0ssNWInY0elC+xarDbl1LHPSoHxtLWMRrn88c+WFM8id3q90eJr+TI7wc2
         CMEsuvhIXMW2FQnnzVah8Sd9kdhko9LIHNLhd6VbhlLLuZ2q3/JKQxjHhCctgxr7+2nH
         CnPIt+lMFtc4cXtLIc4wujiNeUQxRyJEXwzGHZRopXb+OqMMozELo2dAmOqB/R+9cJ8U
         XMJveZ9BjmYugwOWMemMYQ5Mew9RykgilRTfb962/5J4nZ7hlRAhGq97voRSRq/o+pNU
         nSbA==
X-Gm-Message-State: ACgBeo07eL+0RjDtcXlsWDGhwUheD4FNU9Sbhvgbww8ITpHtoEaKBxDh
        ElzfxNBV9CA0E62UJ3QtHbmeHQ==
X-Google-Smtp-Source: AA6agR5KMHp2Gk4iYo0cjhxNJGCk1LA10bMi2+KKdP4BaQDGId3SR9xpUvy5pvUm/EE+Q+8KTflehA==
X-Received: by 2002:a5d:4150:0:b0:228:dbc4:d26b with SMTP id c16-20020a5d4150000000b00228dbc4d26bmr443503wrq.254.1662508867735;
        Tue, 06 Sep 2022 17:01:07 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g13-20020a05600c4ecd00b003a4c6e67f01sm26848613wmq.6.2022.09.06.17.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 17:01:07 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH 00/11] qcom,mdss-dsi-ctrl: Remove redundant phy-names from yaml and dtsi
Date:   Wed,  7 Sep 2022 01:00:54 +0100
Message-Id: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

phy-names is both inconsistently used and not actually required by the driver.

Previous discussion with Krzysztof and Rob suggested to remove the property.

https://www.spinics.net/lists/linux-arm-msm/msg116525.html

- Mark as deprecated and not required in yaml
- Drop from associated dtsi files => grep -r mdss-dsi arch/arm* | grep qcom

Bryan O'Donoghue (11):
  dt-bindings: msm: dsi-controller-main: Drop redundant phy-names
  ARM: dts: qcom: apq8064: Drop redundant phy-names from DSI controller
  ARM: dts: qcom: msm8974: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: msm8916: Drop redundant phy-names from DSI
    controller
  arm64: dts: qcom: msm8996: Drop redundant phy-names from DSI
    controller
  arm64: dts: qcom: sc7180: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: sc7280: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: sdm660: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: sdm630: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: sdm845: Drop redundant phy-names from DSI controller
  arm64: dts: qcom: sm8250: Drop redundant phy-names from DSI controller

 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 arch/arm/boot/dts/qcom-apq8064.dtsi                             | 1 -
 arch/arm/boot/dts/qcom-msm8974.dtsi                             | 1 -
 arch/arm64/boot/dts/qcom/msm8916.dtsi                           | 1 -
 arch/arm64/boot/dts/qcom/msm8996.dtsi                           | 2 --
 arch/arm64/boot/dts/qcom/sc7180.dtsi                            | 1 -
 arch/arm64/boot/dts/qcom/sc7280.dtsi                            | 1 -
 arch/arm64/boot/dts/qcom/sdm630.dtsi                            | 1 -
 arch/arm64/boot/dts/qcom/sdm660.dtsi                            | 1 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi                            | 2 --
 arch/arm64/boot/dts/qcom/sm8250.dtsi                            | 2 --
 11 files changed, 1 insertion(+), 14 deletions(-)

-- 
2.37.3

