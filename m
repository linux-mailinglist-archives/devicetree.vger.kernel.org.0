Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1921603649
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 01:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbiJRXD7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 19:03:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbiJRXD6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 19:03:58 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91BE8BD046
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 16:03:56 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id o2so9674396qkk.10
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 16:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oeAzVhwyZLPp4pOGbTzIPOMrEf5YLeMPlDQWrWigIBM=;
        b=Wx0QEAIey6z2YgQv+U50YS8sUgO+KreRxo2xd83lGy9othZ3XU5PbGfXB2+tTt2qJX
         13hjmEHtTveaPAKxTC7D92s8P4QPdioMG2NKDe8D9C5hXIN2vxh6DoxlERdz3+Nc6+aO
         rwJwi/hISggdUV8d90uIh5CCH19/8+39BM3uGWWufFDl/LtuT5ckjRFB+wKu7bdewMbc
         uyzRoTNkQiKhN38603RPMX1IAmyyKK/lzllM72pAVC0jX5zWOPATaJTkO5gyae7X9rSo
         jGc04aN2T8EpXQ2h0NkJeOo8oYq4PFALTb2NTe99NO4Hzif5lOkRQPqun59pUGO1msDH
         auYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oeAzVhwyZLPp4pOGbTzIPOMrEf5YLeMPlDQWrWigIBM=;
        b=i+/kMifUn3I/4Dyw5f8KvG3OP6luTGdD5p8qm8Gwv5IUXy27khw3LNtvFRshoPhbT7
         YLJgF3WCBKsZ0s9KmjLHJwveWLkdzoP0Svm5QDK/NouLgE9+8hrSXdaSuDsZdeWXbzWv
         GwBXDWKel6M4ynmNe1rK+HRGsJfR2xA4aKnTpJjSKfnqZqSwdB1jKm/ApoAiJNR+T1qR
         J+XT34TFVh+j6rqwWpLNmGVkrqnuOieeoaipb6Bi6Y4s+OuGpq6umx2zXwnZLrjTRuPN
         rZrah57ZF5PL1DNW7DfXxg4rr3/haRJcvw7rKQokOrx44RTiFcw44gVYx/Os1R3CtfHD
         43Nw==
X-Gm-Message-State: ACrzQf3OERyvw7zj0GloJBiQfSS6C4w9qNwpAgXNdF9g3eruzp723Pzv
        c0h0eDA8/YlxC+UV9COvImYaEw==
X-Google-Smtp-Source: AMsMyM5R/Cte/NFhGimHeJHnKuTFLzp/W4TRm70uS+gyZImkgd+su2n3i47o3LzbRFjd2EqjoVsW6Q==
X-Received: by 2002:a05:620a:3720:b0:6dd:beba:b3a1 with SMTP id de32-20020a05620a372000b006ddbebab3a1mr3508446qkb.138.1666134235590;
        Tue, 18 Oct 2022 16:03:55 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id 134-20020a370a8c000000b006cbcdc6efedsm3279010qkk.41.2022.10.18.16.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 16:03:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/5] dma/arm64: qcom: use one compatible also for 0x10000 offset
Date:   Tue, 18 Oct 2022 19:03:47 -0400
Message-Id: <20221018230352.1238479-1-krzysztof.kozlowski@linaro.org>
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

Changes since v1
================
1. Rebase on v6 of Richard's patch.
2. Add tags.

Dependencies
============
1. DT bindings and DMA driver change depends contextually on:
   https://lore.kernel.org/all/20221018005740.23952-1-mailingradian@gmail.com/

2. DTS patches are independent, although they will spark some dtbs_check
   warnings (due to change in bindings).

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  dt-bindings: dma: qcom: gpi: Use sm6350 fallback
  dmaengine: qcom: gpi: Document preferred SM6350 binding
  arm64: dts: qcom: sc7280: Add GPI DMA compatible fallback
  arm64: dts: qcom: sm8350: Add GPI DMA compatible fallback
  arm64: dts: qcom: sm8450: Add GPI DMA compatible fallback

 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 9 ++++++---
 arch/arm64/boot/dts/qcom/sc7280.dtsi                | 4 ++--
 arch/arm64/boot/dts/qcom/sm8350.dtsi                | 6 +++---
 arch/arm64/boot/dts/qcom/sm8450.dtsi                | 6 +++---
 drivers/dma/qcom/gpi.c                              | 7 ++++---
 5 files changed, 18 insertions(+), 14 deletions(-)

-- 
2.34.1

