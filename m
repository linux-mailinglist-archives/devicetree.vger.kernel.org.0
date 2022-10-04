Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9AF75F4C24
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 00:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiJDWqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 18:46:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiJDWqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 18:46:30 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 257485300D
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 15:46:29 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id u2so2953944ilv.6
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 15:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=b1/DJ1QD/JmVXkFdZ5L+JX8R7wgIJKqU2QhO7hDCqBU=;
        b=dXfTb3vBc5uoPNDpIpcDsZt1UpSfMZN+v/0ldTh9iT7WQh/HJ6sYqk0EoDFNRft87Q
         lWWRay+xQbsQHEx1Z60h5ogkZfb7HLowoR5wtCDEo1AArJ5XMBvdfAkV/jh8N+ZJ2Bg8
         B8CNQX+C/kqqQtJK1+r72PK85/zrnHsaaMFxXV6b7DLt5VFkYgTVs3esHGOIeP1oJ6Rn
         N9vXJkSmUI6tDvh5Wjz1cpVJJGXIoTO8iRqe5f37Biydg3uClu6OmSyUD6WkTS8oWZXZ
         adpjepQ3VUiMfE6lGkqLSYJZjPEQ1hxvFkomj37+WMwuO9PjLsoGa0Wc9OIcUTMVQ0Eb
         7FEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=b1/DJ1QD/JmVXkFdZ5L+JX8R7wgIJKqU2QhO7hDCqBU=;
        b=g56xQV4LXwSlXnIJ5WFFOaJM73LQohpuN35pNLX32YvpshgNifVqEXjL9cRjhe5/OZ
         GtigvTAf65J3+/VHyB6BEofE38qvU/cxjbdOx9sv9hN6s5JPKzTj0WP4VO9ndmqD192g
         yGzvNY3dLBWmJCjluWhmcXx9SEkg4hNAHGT3AmZ0+LmhJyAiOwXsHien6IrFvqhq2sb4
         KrWDvtfutCy0DRpESK8WchjRif8eGE5fcDHG14jvnPlakTpPLBtOpVdINKZDk9XmB6Sk
         09fJZePsQqYOcDRGSrKfIEdgBJXwlVro+uA6eCBJR2i8eWgKgwDtsIJ18VFAQdneg/PC
         3pSw==
X-Gm-Message-State: ACrzQf3DkvMFOZVhsxuHGY8nj+jigmiGnWTLLfxiDlXkRzbvz6XzOVXs
        BA+0DGViOQzb3huMntF2yx8=
X-Google-Smtp-Source: AMsMyM5KzZ3NXRYY06S6R6jvXab2MwrtyIsmkdT+2tZ7lq9UUVY5F76Cn95KQSWOav1DFENP0n4k5g==
X-Received: by 2002:a05:6e02:18c6:b0:2fa:5726:e869 with SMTP id s6-20020a056e0218c600b002fa5726e869mr81119ilu.250.1664923588559;
        Tue, 04 Oct 2022 15:46:28 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::1eda])
        by smtp.gmail.com with UTF8SMTPSA id j15-20020a056638148f00b00349e1922573sm5702033jak.170.2022.10.04.15.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 15:46:28 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Emma Anholt <emma@anholt.net>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] iommu: arm-smmu-qcom: add sdm670 compatible
Date:   Tue,  4 Oct 2022 18:46:19 -0400
Message-Id: <20221004224619.16406-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221004224619.16406-1-mailingradian@gmail.com>
References: <20221004224619.16406-1-mailingradian@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Snapdragon 670 needs the IOMMU for GENI I2C. Add a compatible string to
support it.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index b2708de25ea3..bf9653b9eb89 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -431,6 +431,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,sc8180x-smmu-500" },
 	{ .compatible = "qcom,sc8280xp-smmu-500" },
 	{ .compatible = "qcom,sdm630-smmu-v2" },
+	{ .compatible = "qcom,sdm670-smmu-500" },
 	{ .compatible = "qcom,sdm845-smmu-500" },
 	{ .compatible = "qcom,sm6125-smmu-500" },
 	{ .compatible = "qcom,sm6350-smmu-500" },
-- 
2.38.0

