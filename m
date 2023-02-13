Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A21B26952D3
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 22:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbjBMVOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 16:14:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbjBMVOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 16:14:14 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFD3C1CF52
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 13:14:12 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id lf10so3273244ejc.5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 13:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=932PGl/PpsMpW+jyLvI57alHLePj9WCRTwHcmfD+fXA=;
        b=rGXCFwReF67PpvmckjJpGhn1oJiZFEiNarFJl9pf7hrbxIHHC1RtceFL7ehkE3HaXo
         uKdYHA1dUcZWUQbhFe1HJ7Y7q6MZO+EguOTd5UtsztSpVYmw0tr27WgHd958LGIZO9Qm
         Dwr6UkMjvaJM0nXQwVPtjNqDoDEUp5K/DBKbBJ+5jC30ERrAsjk5ZxXVsJC2IEcKa82v
         v+iByP/3pvgv70XFEWccMkQ/R7K8dB1q4GnG97ylpVu0oS4f/2VTfH4caOicTorccgIS
         InZYeUPOz7g4lZuf12msw546llMxLULZDDOMZpcmR2VSImq/ZvhjPpn+iJqVwXMzCixm
         NSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=932PGl/PpsMpW+jyLvI57alHLePj9WCRTwHcmfD+fXA=;
        b=DKNpMc4B0KMDkBRDHtXsJbZ6iJ6itkoR/7rYepBWyTAFcvULa0OQRW4F6ZdWKmKqRe
         HvFVB1aLO1IIZv3bGRjaUwDHgH8gMZ2CdRRhzwlzB4h15yiLJgnPwOamdu9lpaFgMx9U
         YbhCfLW3JGRErigu+wYPP2rmtVrsr0ZjoqSzRo8eRI8OZ3+9b9B71ZnX2DxOWo9uMW94
         Vr9wZkS9HMhZFcKkvtRz5ptEXF7p8Jz1ImEXiZ/JiksW6YR8PqvtdNvHyTVWihYBJ7h9
         PpjIQpptVdrWS7BE5PzYVViwkezhrCm+yOOezxhGJFDgDQhsTIWVTCcQlmsYTOUJxyz6
         erqg==
X-Gm-Message-State: AO0yUKWXRWLjGkyDVpqVLieB79yQpH43hNaOkKEz4Ktf14p2EEIPMobf
        3AEzd4ImalGFg7PtlwpyQPzDZw==
X-Google-Smtp-Source: AK7set92w3b5uZK0J9wvbdtkfV3NSPy+e1Q5OwZZM9Pw6fnhQ96llVxidxFkp7WjK2hSatPjJglo1A==
X-Received: by 2002:a17:907:c9a9:b0:878:42af:aa76 with SMTP id uj41-20020a170907c9a900b0087842afaa76mr287275ejc.54.1676322851328;
        Mon, 13 Feb 2023 13:14:11 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id ch9-20020a170906c2c900b0088dc98e4510sm7265717ejb.112.2023.02.13.13.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 13:14:11 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: PCI: qcom: Fix msm8998-specific compatible
Date:   Mon, 13 Feb 2023 22:14:08 +0100
Message-Id: <20230213211408.2110702-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
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

In the commit mentioned in the fixes tag, everything went well except
the fallback and the specific compatible got swapped and the 8998 DTSI
began failing the dtbs check. Fix it.

Fixes: 7d1780d023ca ("dt-bindings: PCI: qcom: Unify MSM8996 and MSM8998 clock order")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 872817d6d2bd..fb32c43dd12d 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -39,8 +39,8 @@ properties:
           - qcom,pcie-sm8450-pcie0
           - qcom,pcie-sm8450-pcie1
       - items:
-          - const: qcom,pcie-msm8996
           - const: qcom,pcie-msm8998
+          - const: qcom,pcie-msm8996
 
   reg:
     minItems: 4
-- 
2.39.1

