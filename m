Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB3F8699811
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 15:57:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230334AbjBPO47 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 09:56:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230308AbjBPO44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 09:56:56 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ADBB55E5C
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 06:56:52 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id y19so2225251ljq.7
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 06:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ojDsOUx0QxlHwnKO3iv7w8jD6D1QkQboQ8A+JjRFmOI=;
        b=SondPCscTEEfrANSxAKrbtewG6FLTdvIPFAFYYLnp3D6+Sn+aQcShVMUm4krMOXcjZ
         zbo80ni77TnS8/+4ZDiNXLavjjm+yeKidHBAkz7jX3QA31vJzCCCIqi/Kuh9dzPDXXlM
         /hIpwe6+bwykNTXyuP24UuNpY2pgy2hRN5tf7u+OnnbVUZmXyC0Sif2c2hQyi2K7J93f
         qX3ZquTNqVEE2BsSD5RTSPRcD8CO6ir6oJc7acuOYeiHpd1yUmdEvLFQoRF4sdnHisA1
         a0csh6t9NnYQ6mi2jZwM7GMJ3HXYDMvMBOdq8newuRzxiAUWyrfbywABB9wT0OFft/jD
         lPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojDsOUx0QxlHwnKO3iv7w8jD6D1QkQboQ8A+JjRFmOI=;
        b=xonpYwucGq9qf5XDD7/bePv+0rCev1eXG3/Mre96HZq/jHUe1TOa9SkffAsY1qyiGb
         gFbBM1hGZqjzIJseI8UVRUpa+pRBrMIoFC0VyPDmC1L4FeDOuM8H9c9DxbsQPIbL7zyX
         8+O3thQPfom18aFQGwqYnc1FMk7FQny2ij7fhOFrN7HJrNbl2E7s3azqul6QR2/hqnch
         AthITLPWzucFGOr2oFNysCMq8lCmqOw5M29PR2KJOLFTqKQYMf8eT2BE+yTVESsd4YMn
         vOxUMarRUGjUliLqFSMEQSXvQoPLRD/q+4I3R7CRtd9FwqV+EjEY0tCzZ5K6OTDBD4it
         bJug==
X-Gm-Message-State: AO0yUKW3QzGrquyZmvL6Crkc6hGZGno+8QfNXock9Qn5P2kpmAQPME/c
        zQd88+tTyiCssidlYMyL/6v4DPWrGU6Z4ImN
X-Google-Smtp-Source: AK7set9+IAinWnvv0qZQ8rLV8eYgth93ol6l9oBQDHdUVVXXttEPDYhOnNeijW8y7UR22spzLJj41Q==
X-Received: by 2002:a2e:a365:0:b0:28e:732e:206a with SMTP id i5-20020a2ea365000000b0028e732e206amr1548884ljn.12.1676559410725;
        Thu, 16 Feb 2023 06:56:50 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id f2-20020a2e1f02000000b00294619d902dsm230012ljf.112.2023.02.16.06.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 06:56:50 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: arm-smmu: Add SM8350 Adreno SMMU
Date:   Thu, 16 Feb 2023 15:56:42 +0100
Message-Id: <20230216145646.4095336-1-konrad.dybcio@linaro.org>
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

Document the Adreno SMMU present on SM8350.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 4d7f61700cae..d89aa5b5c963 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -81,6 +81,7 @@ properties:
               - qcom,sc7280-smmu-500
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
+              - qcom,sm8350-smmu-500
           - const: qcom,adreno-smmu
           - const: qcom,smmu-500
           - const: arm,mmu-500
-- 
2.39.1

