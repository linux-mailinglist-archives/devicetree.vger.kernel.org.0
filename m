Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8BA3622955
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 11:57:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbiKIK50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 05:57:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbiKIK5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 05:57:12 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A34C2612A
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 02:55:59 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id h12so25145852ljg.9
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 02:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VmS+uedq9rzycs24wj1ycZpaKGAK2vI/UBOPK1atnrA=;
        b=GgkLbTwIv0gYH4cA7XhimXYQplcIxaHYU+mNeFgIocVHSw6fM8odmsAUs5EemQJrwb
         Zg2paMHVXI9sVHH+/J5JeyDOiN0m/5d1AV5TQBkoZQnMmt8WXhx9oGjZit5yBWNG8+7b
         prBES21UJbaUNNVamrcXPt/iI4mFgrrNZyHgag3paRdrVhasuY3lStXohSqOMlego/SI
         kX9BAjjg5YfQGxaxAk1jPsvm54zeiryybXQnUqIum3jraKPTig0x7x5ArwBDmHG43gk6
         64H+JTJH5Tq8lHUS3GKw7QRYmwGroa28/VnOuMCo8xwVM8JP0vzAVRJ2ZZ7AzmO9qo/7
         wb0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VmS+uedq9rzycs24wj1ycZpaKGAK2vI/UBOPK1atnrA=;
        b=LYc4zGe9tpO2Uz2NgjCt04idNo8OY6WQX17jhuWIJeXhkCysBfVcaBrPwUj891uBU2
         gJ2E/TFBgucscLibmWDE0oyPFiZGujggQnYiQ7oru+odWplhReHdRx65SUr+M7mR3xX1
         Cnq3XIhNPuh3YjpeBAStRy7LzIaxLpfCjv2YCQKiw1Vm3FAOHi2QObBToisg5Ze0vlH/
         QTLty/aM397Qyy1aj+x8uL3vKdIP+ZU2nu/uBUmjPpX2LcUVrON8bC3S0PGZjlzMfhI2
         NuTZpogFHv+/IqSa9g2Wn4+HRZ92HB6wOwwfrZ1aGdcAX53XeNNpVb+MZKgs4bmUIx6N
         cDyA==
X-Gm-Message-State: ANoB5pnsdqYIIxpXFXoGkIqXjQbNBIzmrXIYH+SX7cGUg98kM1F6xZwQ
        c6M/Chzt8Q0s9PH03f1u1XOibQ==
X-Google-Smtp-Source: AA0mqf4nif+CJ3U8Pw5CMHykLKvpzcKuerU1RCFm6uA4Tb2/BAp+OnksagiUoGLT4ZqVAcrzYrtfwA==
X-Received: by 2002:a05:651c:38b:b0:277:5656:ea3 with SMTP id e11-20020a05651c038b00b0027756560ea3mr3088191ljp.226.1667991358001;
        Wed, 09 Nov 2022 02:55:58 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f3-20020ac24e43000000b0048b1b2233ddsm2169588lfr.120.2022.11.09.02.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 02:55:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH] dt-bindings: PCI: qcom,pcie-ep: correct qcom,perst-regs
Date:   Wed,  9 Nov 2022 11:55:55 +0100
Message-Id: <20221109105555.49557-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

qcom,perst-regs is an phandle array of one item with a phandle and its
arguments.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index 977c976ea799..5aa590957ee4 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -47,8 +47,10 @@ properties:
                  enable registers
     $ref: "/schemas/types.yaml#/definitions/phandle-array"
     items:
-      minItems: 3
-      maxItems: 3
+      - items:
+          - description: Syscon to TCSR system registers
+          - description: Perst enable offset
+          - description: Perst separateion enable offset
 
   interrupts:
     items:
-- 
2.34.1

