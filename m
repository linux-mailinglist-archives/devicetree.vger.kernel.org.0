Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7200602038
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 03:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbiJRBL0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 21:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbiJRBLK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 21:11:10 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47011120A5
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:09 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id e15so10621168iof.2
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1/DJ1QD/JmVXkFdZ5L+JX8R7wgIJKqU2QhO7hDCqBU=;
        b=lcOqSM8ajEqysG3b9KJ59Yye1I8wK/ju25O2DSyQYA2svT1Avqy5h1Euoqw6ec6U1D
         76hre713ef9f73yeHovOVfW+AhZ4S5pLDkQ5jMQGvVO18EoTXaj9sfxEg1KzAfJIydvQ
         KKTfRsZpv8+OU/Ff1o8hzU0XwU3UXoD6/aI+pXcFW9Y+jacbW2OsWhhDUoLEqu8xJiUt
         SnOQc0iJped5sCDi9BZv39DERfIPCn10/9HhjhlHqlzFBL0naTunR5w+v55VARrKSKAY
         5L10Zmne8Y8wt3QxyQvfF81SXzyNrmJ1MS9ZhEuLuJrp02bQqhz56rykwkw/EfkhaFla
         Q2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b1/DJ1QD/JmVXkFdZ5L+JX8R7wgIJKqU2QhO7hDCqBU=;
        b=SXo+2ap3oXChvWozqsZfdsHG+pO5H4kLNEpwdnJyhVPVwHfpT84loK8IOuYAfWsiZO
         6kOAM+NR/YTCmmxdpRSuZRjs+cSX8Wk79/M9UVIfx2QzzRYCP/ZlHzVcqocS7fwJ7zgZ
         /t/TBa7TT8o07jTL+9UXj/oiXa4sjS1fCpVDh0Kt9YejeHNlW/XS/kOGbRBnoo9xAezx
         5WNOGtOcRgQlAMgwXcDb23+XMvVoxA5M2JY5/BB2xs5e9eyQUCVF0kEo5iiNLuxC9uee
         oTvpHthkZCP+LmBACMCW//8IxKFFYUXNYYq6LMj7HUofIpYQVm9yw2vlkxuhSMoUSK6v
         S9pw==
X-Gm-Message-State: ACrzQf2Ky26zm+MJy356LJPiAc+aYBsbQHtL6ImOEUIISsVWhBat7HDX
        tDR+BGZomLpWljkNbOX7Lqs=
X-Google-Smtp-Source: AMsMyM5Hz1rwGYBJ6G4/CWt5c9HAx1x7Aza+ahz0ZAzEMoSwKfXzmJrD7FfZmo3bUevM/RhmOD+oZQ==
X-Received: by 2002:a05:6602:29c4:b0:6a4:db74:ca82 with SMTP id z4-20020a05660229c400b006a4db74ca82mr482963ioq.201.1666055468778;
        Mon, 17 Oct 2022 18:11:08 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::4a89])
        by smtp.gmail.com with UTF8SMTPSA id 7-20020a6b0107000000b006bc404507dfsm533646iob.6.2022.10.17.18.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 18:11:08 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 2/2] iommu: arm-smmu-qcom: add sdm670 compatible
Date:   Mon, 17 Oct 2022 21:10:48 -0400
Message-Id: <20221018011048.25371-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221018011048.25371-1-mailingradian@gmail.com>
References: <20221018011048.25371-1-mailingradian@gmail.com>
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

