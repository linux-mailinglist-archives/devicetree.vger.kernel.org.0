Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E128624DB8
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 23:45:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiKJWpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 17:45:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKJWpu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 17:45:50 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F54F4875B
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 14:45:46 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id r12so5814441lfp.1
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 14:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A24bOoW3CfbZSL83j7zdYgcBWYKBprL6idVcu73anh8=;
        b=hrlJrSad45xS57nnGRyXbnbdzIrLrH2YuDy+XH5sicp4+OWHdSXEytdueF9HJzKiAC
         RXnjqFLalUywBdQoGnIYjnaeSEGPSFrKUwSK8nInKW4Y/TUnwVWJSyhnwywBPNDQ9mU2
         koqheF7+yGGYf0T97fUskeEIa4C7HQ/lYbk5HeTmuQTcgFgQTcACFER2nmJ5HnFRTag7
         Rpe2kqFXZAVFkGAf6TmywDSZTfvw4aykFf7zezvxiD0F9yiFz0eBfdJMW4ZnlSj+gCUU
         ahPa/hhrrt6yB1+f+9OYeHd2UV35ygtdQ2ZPiWdRv3AiG95JJMTMXtu2lHqtekU09lJr
         0RJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A24bOoW3CfbZSL83j7zdYgcBWYKBprL6idVcu73anh8=;
        b=idQgULltIAyjFMf03hNpd7q4RwqxBWz+ZAiaYV5+WFxUnD9gxIQQyF5QTktUi7213O
         4Z2C89WfCC6a9N1TPedPWWsA10nwG314NmHr3dSw35xX3DiRNzEBCkgj1mp/yLZZ3/MW
         PaHid3FuwLdCy943hDkQFlqDLwGUpxCFRX10yFRCMGZzMktzm7IQBdCb5BGBqYLVMGim
         zzanVFh3pj75MuNv3K4hBghmitp/tcooGFw/gwRFAeRMtRqGGGMzWgIDZ3FZpTvN59TL
         Wqf2LpTZj7byMvHrC6IT3fG8UvFmrM5XhWpz64P6dNGt9QRh1CcAalLE1+MGsYNVMh24
         d2yw==
X-Gm-Message-State: ACrzQf0CULgPxy3KFH+xCZ3xRqjItjQfVASF4h9aVrvatN/yhJwc3iTD
        2h0SdHtDDVrPiDZEqXWNfyHWqg==
X-Google-Smtp-Source: AMsMyM4YoGrHPQQuQg4SDTG74QIwaq6fGCDuensRtFkaenY0DzAvW7PsErkEbSGZx9FBuKsO6YDzEg==
X-Received: by 2002:a05:6512:1682:b0:4a4:4e0c:e922 with SMTP id bu2-20020a056512168200b004a44e0ce922mr2222251lfb.391.1668120344614;
        Thu, 10 Nov 2022 14:45:44 -0800 (PST)
Received: from localhost.localdomain (95.49.32.193.neoplus.adsl.tpnet.pl. [95.49.32.193])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651239c400b0048a934168c0sm55315lfu.35.2022.11.10.14.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 14:45:44 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: arm: qcom: Add Xperia 5 IV (PDX224)
Date:   Thu, 10 Nov 2022 23:39:26 +0100
Message-Id: <20221110223929.134655-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.38.1
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

Add a compatible for Sony Xperia 5 IV.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 97e1d0f07218..ee79a20c4e77 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -810,6 +810,7 @@ properties:
               - qcom,sm8450-hdk
               - qcom,sm8450-qrd
               - sony,pdx223
+              - sony,pdx224
           - const: qcom,sm8450
 
   # Board compatibles go above
-- 
2.38.1

