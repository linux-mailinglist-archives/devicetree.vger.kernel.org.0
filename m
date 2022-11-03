Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCA36618CC5
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 00:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbiKCX04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 19:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiKCX0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 19:26:55 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C88921E2
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 16:26:54 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id z3so2663585iof.3
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 16:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m0wexa6JX4DYIRbRAgNjSzB29PaLChZhx9+72ZVniE8=;
        b=dofqZw0RF+0uxxKRnbLE4EAq0Al0rbR5GHV+a8mtPbpY5CaTU3MAbbE9zaSylhYj8+
         u3GYtc9oW1MUD32lNT27vre0a6e41lIc7i6cZLW8tGZrVAIZYXNy1E1RX1h2Sgf/lX71
         nha63v8rda084lso1qxpKuhFYPvD3i9ONLAdW/f0s3Umz9usa6DqMVo9j4ro1X3F/fra
         EpnLvScUCp21jNh4902wmeIJ8SdAyR+8oZE/xh40w7OFPSTYkUnBjLerzQ3SSTDzll9R
         cBzSGKPv3uCvH0pqit4WsXhIqj51WloofRKU4XNy6w6iXT8FKZUFfSYMgL56SStKRIpS
         yiQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0wexa6JX4DYIRbRAgNjSzB29PaLChZhx9+72ZVniE8=;
        b=yZdnGjA3Q7iEfvwH7ciH9R27dfNFL4mufh8+insjGuRuQqwHTXzQXeQW1eW1f39xPK
         p0YD9+pfOKrjKxZQUQxor/g2+WRpCaK8mv25UbA6iQJhO2rfUYI0bDGJar0RbF+YRo2G
         gN5VygssomUf1HQ88OJIPJ6yspHwKISjB1Cl4FM5E+J+mtubgj2hhcQo8gd21LOjwkaj
         +VpHxOhnUfS+0MCqmC/9P4L7ID1VPq/bigfM1RwT0c/GXfm/jt4BKC8pvz0Bme9JYk0m
         Bq6D+6DBtx0XPLmppBN6ERygjidYFW9vp/jmprwDPzFb5T7FIEQjAxlCElFefIekn/rp
         9qyw==
X-Gm-Message-State: ACrzQf0ZZdHvee0Bcss269WlaurVQDErfoRo5a2LxQdrKTRcswaIF1Cq
        cF5A7StxhH7SA52W6fSJil1J7ZeaCQs=
X-Google-Smtp-Source: AMsMyM7R5GjXdner78KJ2Dnf4C+czqlpNEh2SVnDcUnc9ZJicN41if9dDcJqlJRfw9f+jnwyLQlRPA==
X-Received: by 2002:a05:6602:164f:b0:6d4:8783:8019 with SMTP id y15-20020a056602164f00b006d487838019mr6905601iow.77.1667518014229;
        Thu, 03 Nov 2022 16:26:54 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00:f1f0:c4d7:e39e:e2f])
        by smtp.gmail.com with ESMTPSA id b19-20020a026f53000000b003743cc92b27sm638409jae.157.2022.11.03.16.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 16:26:53 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>, Emma Anholt <emma@anholt.net>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
Cc:     Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 2/2] iommu: arm-smmu-qcom: add sdm670 compatible
Date:   Thu,  3 Nov 2022 19:26:32 -0400
Message-Id: <20221103232632.217324-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103232632.217324-1-mailingradian@gmail.com>
References: <20221103232632.217324-1-mailingradian@gmail.com>
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

The Snapdragon 670 needs the IOMMU for GENI I2C. Even though there is a
generic compatible string to support it, it still needs special
handling. The Adreno SMMU is separate, like Snapdragon 845, but the lack
of PCI on SDM670 makes a reset quirk unnecessary. Add a compatible
string to remove both built-in Adreno handling and reset quirk handling
in SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 3be81338a25b..89242aa2f29d 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -481,6 +481,13 @@ static const struct qcom_smmu_match_data qcom_smmu_data = {
 	.adreno_impl = &qcom_adreno_smmu_500_impl,
 };
 
+static const struct qcom_smmu_match_data sdm670_smmu_500_data = {
+	/* SDM670 is the same as SDM845 except it doesn't have the reset quirk */
+	.impl = &qcom_smmu_500_impl,
+	/* No adreno impl, on sdm670 it is handled by separete sdm670-smmu-v2. */
+	/* No debug configuration */
+};
+
 static const struct qcom_smmu_match_data sdm845_smmu_500_data = {
 	.impl = &sdm845_smmu_500_impl,
 	/* No adreno impl, on sdm845 it is handled by separete sdm845-smmu-v2. */
@@ -506,6 +513,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,sc8180x-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sc8280xp-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sdm630-smmu-v2", .data = &qcom_smmu_v2_data },
+	{ .compatible = "qcom,sdm670-smmu-500", .data = &sdm670_smmu_500_data },
 	{ .compatible = "qcom,sdm845-smmu-v2", .data = &qcom_smmu_v2_data },
 	{ .compatible = "qcom,sdm845-smmu-500", .data = &sdm845_smmu_500_data },
 	{ .compatible = "qcom,sm6125-smmu-500", .data = &qcom_smmu_500_impl0_data },
-- 
2.38.1

