Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A35064AC73
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 01:29:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234214AbiLMA3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 19:29:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233785AbiLMA3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 19:29:11 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE78A1F2D4
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:26:31 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id z26so2311122lfu.8
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ugTcOj9Npd/SMM1GNN3IBZ5YypTVeK9e1l/D45aeEQU=;
        b=QYVSM+NGhUbi/7aRxbymFXrovv+CUzYPcENl4GN7SIgV+MQg+wUXavYJZCsCWrvJot
         lFQH4r05WWl3ZV/hs3fyHPhK90GrK0ubW3Dfq/BP5BD/Qp2mT0kGtr6ufOF6Du6zQDFv
         DJPPlMBxYcWmWiLW1wjpsS/9/6IE3o/OLCW3r73bWzf18roRO9628xRSQrWbX0YRbyy/
         F3ce4rC6eKJDrd481mVsMrB2o9DEjzW111Ouuqa3ottXYLSmwbMqei2LWom6vcp5n909
         Yo04KYt+DLCWiPfXLHwMzDC9hcb8kZZNGaOoWNNLNvU59YoDL+SIkpCN21+SzI/3Fkbe
         /05A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ugTcOj9Npd/SMM1GNN3IBZ5YypTVeK9e1l/D45aeEQU=;
        b=Kqtx4uA/X/Z0MUy2uzpnFUdB6aAhff1XEyrINsXMg/Az5Zpyy2s1g2aA3eik8PXaU0
         r2wiUpxcyjL8OHm1GTK0DxklozC7i4M9RSe2vtY0MCj/ImORt/0/+pNCyAd+Y17rlvQc
         yvtsxmmSzf1gqG0gm4c5I1XlapuycPrTVfmgDNIGlMMFfPtYAupBY64POBCBiBHznt86
         ySJWR7hej1RUUQw26IskirKaDTa7qxWBiAf+cjkIHwPBBeRrxk5JyjCRBnUsudON3Qpm
         K4d9fj7RDU/iDF/RedhAzCoS7aKBzpcxIkHolh7WbtRw32XzO/+NtLdiOi+tyzgovPYu
         OU6A==
X-Gm-Message-State: ANoB5plhT3V5Mz7300T4Gb87OELFiDxpAEZfC8SWwANdUGSJOJBG9GUc
        ak7RtfrG9TpAtbKlPcJHNLWZsQ==
X-Google-Smtp-Source: AA0mqf4UdtCG6n/ULmv52B8o3H8MKIe/aZ4oTvNr2ISnyj/sS85Aq3S68jHLXpqqySkfR2zExz4Hmg==
X-Received: by 2002:a05:6512:41e:b0:4b5:7925:8707 with SMTP id u30-20020a056512041e00b004b579258707mr4923602lfk.26.1670891190110;
        Mon, 12 Dec 2022 16:26:30 -0800 (PST)
Received: from localhost.localdomain (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id y28-20020a19915c000000b00492dba3c85asm139371lfj.220.2022.12.12.16.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 16:26:29 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm-smmu: Add sm8150-smmu-500 to the list of Adreno smmus
Date:   Tue, 13 Dec 2022 01:26:25 +0100
Message-Id: <20221213002626.260267-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
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

From: Marijn Suijten <marijn.suijten@somainline.org>

sm8150 has an smmu-500 specifically for Adreno, where the GPU is allowed
to switch pagetables.  Document the allowed 3-compatibles for this,
similar to sc7280 and sm8250.

Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 895ec8418465..b97181d4a399 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -84,6 +84,7 @@ properties:
         items:
           - enum:
               - qcom,sc7280-smmu-500
+              - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
           - const: qcom,adreno-smmu
           - const: arm,mmu-500
-- 
2.39.0

