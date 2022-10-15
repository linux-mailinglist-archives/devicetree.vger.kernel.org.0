Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67F3B5FFA67
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 16:05:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbiJOOFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 10:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbiJOOFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 10:05:21 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEAEC2CC8B
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 07:05:18 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id d13so4209067qko.5
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 07:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tfytG+4MFfFG+3QYHOhfuv1+tKe8T1WiRu5GFIqn2Oc=;
        b=HObgRUfGcfdjamHrbi4E9WmegZ5EuEf0wAxRiQZkbTv1AT/9yvvFbuZvafpY6azaUL
         xtrjSmnFFo0ZBcXtLtMyH+WXl1ggNBXwn1tE5fa3GBkQyrMwpHL8UsyAS2Hdl5sr8cMs
         lxJkqxhBzsvQKB9fTiBAbV80Bt63aEwhGRd+1SNcU7S8iI10IfRm9aCTYhqpPU7naZvT
         +dnaY3Od26v5ZHhCRHGNFpPTGR4dVtzTD2DJj1dy00GJVC1+OCXRNtgCC9NroH9GloxJ
         +mKvDP3MNSV7S+kV+SCRLyoksfqyVpiQxkg5JNpzUVO1b+YitqpyELb171xRsc69CbOv
         NYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tfytG+4MFfFG+3QYHOhfuv1+tKe8T1WiRu5GFIqn2Oc=;
        b=cvXRDiAn3pqQje5tU3tjHRh01dkjgxytrP3oTcvsA89goe45QajZEWsbeb2XrGFmwI
         FIVY9SjSbKLZCDLIoO3LIBYIUPA7gWJISh2t1VDq6DeIHRGbUQ7NH8DywP7eoX2nJYW4
         UtSjAuMQNUHUeP6qQuMccGBqXaPa1UpifxER5lbfRsh4UnEjLC4V3shXAb11T/oe911P
         5ItHE6WP9v3ojyZPRmxUoz832vbyJIWGxgyl3RBDvKdBecJS7UJjmytoH6NIGJucdQO2
         lS+PUid4w5wVMfHzIiOPoyreEBfGUb/kJfoG0DnGsmcj9T9DpUp9bohYCYRApgypYzmA
         Mnzw==
X-Gm-Message-State: ACrzQf08ii8yjVIVV5z98hlIIk4DT3eFOAqpIVp5cUn7azNGbVS2ermg
        1cm5pFcG2EV+27qr21iHlHa0wg==
X-Google-Smtp-Source: AMsMyM6aoppadT8LI9i/++lak8dco8g+wD6X9eTxo/aHH3thGNdQqmgkgFYMA7mTA3hHmiT821C0rg==
X-Received: by 2002:a05:620a:2a09:b0:6ee:7d3e:687f with SMTP id o9-20020a05620a2a0900b006ee7d3e687fmr1908038qkp.572.1665842717994;
        Sat, 15 Oct 2022 07:05:17 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:161:5720:79e9:9739])
        by smtp.gmail.com with ESMTPSA id s21-20020a05620a29d500b006bb78d095c5sm4958022qkp.79.2022.10.15.07.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Oct 2022 07:05:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Richard Acayan <mailingradian@gmail.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/5] dma/arm64: qcom: use one compatible also for 0x10000 offset
Date:   Sat, 15 Oct 2022 10:04:42 -0400
Message-Id: <20221015140447.55221-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi,

Dependencies
============
1. DT bindings and DMA driver change depends contextually on:
   https://lore.kernel.org/all/20220927014846.32892-1-mailingradian@gmail.com/

2. DTS patches are independent, although they will spark some dtbs_check
   warnings (due to change in bindings).

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  dt-bindings: dma: qcom: gpi: use sm6350 fallback
  dmaengine: qcom: gpi: document preferred SM6350 binding
  arm64: dts: qcom: sc7280: Add GPI DMA compatible fallback
  arm64: dts: qcom: sm8350: Add GPI DMA compatible fallback
  arm64: dts: qcom: sm8450: Add GPI DMA compatible fallback

 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 10 ++++++----
 arch/arm64/boot/dts/qcom/sc7280.dtsi                |  4 ++--
 arch/arm64/boot/dts/qcom/sm8350.dtsi                |  6 +++---
 arch/arm64/boot/dts/qcom/sm8450.dtsi                |  6 +++---
 drivers/dma/qcom/gpi.c                              |  7 ++++---
 5 files changed, 18 insertions(+), 15 deletions(-)

-- 
2.34.1

