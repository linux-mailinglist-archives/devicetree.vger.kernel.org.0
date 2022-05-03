Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD23F5189FF
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 18:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239622AbiECQgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 12:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239615AbiECQgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 12:36:21 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 065773CA66
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 09:32:48 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id q8so18288698oif.13
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 09:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YWPXEW/dmcl26oN/UpNHlQ6MJJApmB07VctAbNzo6Hc=;
        b=c75RKIVqFVCnqiqXF8fdSc13vcKVKS4WcFrMRTVpAl4t7sqYgrI0cLQPHLCKqsWAWT
         B53i3FWTLfo75R/hRbhrnls/ez2F7u26lCPCuypk66bsA6lwDmpLYZtU2gF6uVuvhDDK
         BtjSBj9LoYSL8GEKxZIwGaaHREE7amPiNmU4Iq3yxnwChbPUaX8QLstT0sKmEqvnUiGh
         rIs0F4ix3NxwTl8IOyLxildF6kFtUOEN+9UZyNODi9rXiIlDbbr2hqaf4jR+VX2R7UgF
         X9zJ/JieKgAaABbIdOeEOUT2ERmPCaTuUiyTUXJqq/0TMoTNFLTiXvLKTJ3fXBOO/RJV
         ydJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YWPXEW/dmcl26oN/UpNHlQ6MJJApmB07VctAbNzo6Hc=;
        b=ZUUMm4uVH6goJpJwTvl4gWVbB2xk4SdYMiZd6nrtCoBDAt5ZFhwP6eiZ1hfSG/4wPv
         uMOxxmCl7JN7P9r+EB8Tvhn1GOnX6ayC0/f2nvkxfWKhkpExUDPd8k5+SRj1WK/LxKvf
         kDVWmebCN4zP3hKBSk31FirufvP9mY8Zfku2OplOQm6lKMpcFyMq8Tw326gPENju1wGY
         3BkML3yik+IOLqce0FS4ILA5tVPMueIX6baiUJKU84bBgQQDH379sIxmqPXz5yZvF737
         OVZECK+xHxJtQPqFbiE/WvTDSHqMomz1G4xyDY+dTmFFlKjEFqFMaOIV+OB2VCYMY0Hp
         n5jw==
X-Gm-Message-State: AOAM531Sk0tj/63dun5RR5tFqgRzNkPnSSPzXJMKLHu7oUBEjKL2/WAj
        Rx/zxOXPRNvmQpwFTM2MoSXR+Q==
X-Google-Smtp-Source: ABdhPJzv0hOtfibu1ipLXlFKcbx6oRoYa04jZ8s7iMf8RTneuOK8/aKQziy6q1TrDRGBaYIfDuQS6A==
X-Received: by 2002:a05:6808:1526:b0:323:1194:d3bf with SMTP id u38-20020a056808152600b003231194d3bfmr2139113oiw.120.1651595567404;
        Tue, 03 May 2022 09:32:47 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v15-20020a4ae6cf000000b0035eb4e5a6cdsm5027404oot.35.2022.05.03.09.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 09:32:46 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] iommu/arm-smmu-qcom: Add SC8280XP support
Date:   Tue,  3 May 2022 09:34:29 -0700
Message-Id: <20220503163429.960998-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503163429.960998-1-bjorn.andersson@linaro.org>
References: <20220503163429.960998-1-bjorn.andersson@linaro.org>
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

Add the Qualcomm SC8280XP platform to the list of compatible for which
the Qualcomm-impl of the ARM SMMU should apply.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index ba6298c7140e..7820711c4560 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -408,6 +408,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,sc7180-smmu-500" },
 	{ .compatible = "qcom,sc7280-smmu-500" },
 	{ .compatible = "qcom,sc8180x-smmu-500" },
+	{ .compatible = "qcom,sc8280xp-smmu-500" },
 	{ .compatible = "qcom,sdm630-smmu-v2" },
 	{ .compatible = "qcom,sdm845-smmu-500" },
 	{ .compatible = "qcom,sm6125-smmu-500" },
-- 
2.35.1

