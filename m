Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7DDF2FDD47
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:45:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732023AbhATXoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:44:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403865AbhATXTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 18:19:43 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5502C061389
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:50:30 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id 63so2556578oty.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4idyrgOjbPCo0xIvVDxnoQX1+7++2YYqASwzmUbTSIg=;
        b=FwpFBEdguoiC+d4juDT3vyfKfWHn9cZAGK9cR+YsoPIdAANOkVKQvzUBgY460yF0YW
         Y1W7EeLTIwQWdYygIyO03+K/O3PKuFQTfhmBhhxhL2TPN9rltmJru4ry5loGDnXVO8+s
         ohSkXH6uOH/MLP/ksrmbF+ncN5DQM+fWvWEscvZ3efjMIIt9QhE3imCLLwtvsKL/w88Y
         vfegYkpMwCQ7mFNiKBAs6ME7NLKJ4hxJiFvcPtHYx++uQuODT6MEHD/fHvM7zeQqErkg
         ZKUS4iMInVT5/QgI+yogRUDCaSZk31f5VZY7KLJIBBnV2WhXqvnUWH6ZVJx9NniH7b88
         ZVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4idyrgOjbPCo0xIvVDxnoQX1+7++2YYqASwzmUbTSIg=;
        b=SX0MZpTa/MA8Gxe0uqAz93cjmmm0ezlBAIsx7RhbqXWG7lNg03WZyfludKXPu9SvE+
         A/EkfFw4Atv2hKo+opBT/EatdEQ6wbSzq0NyKz8ISnuyCvHCFzxlZ2qOl3ymNK1kEbD7
         CLrwld6g0KM7YRRBisobhRfz4jYuIHB9alwsMaQ+hcm5QKtpANUdA9H7ZVVx5CpATTlZ
         0AtesiXOi8IaCjw7iywSRDn0wdTsI33iA7A0MFFjk2LNOdxCX54whSbnutbze5Pn5cLJ
         aPoWbg2ISlmmyFvSjm6IKHQl3C7BxGBLWx0xSFpEPgsQAYPh8XOT2lCFZnk68oBiXsGa
         j63Q==
X-Gm-Message-State: AOAM531uqM/tdiwNrS/852SFFkj3R3ey1uXEBo57jFc0TbcIDixR6mI7
        vGfNRDF3Eo3Hx/hBUqrJzfHIrg==
X-Google-Smtp-Source: ABdhPJyI5wePjhle5rg1W7f9Ny2WB6bW1HhAX6OhimdlyLMDYG/NNtvs8dUtFT6bjs4SeTFn/jGw6Q==
X-Received: by 2002:a9d:4b03:: with SMTP id q3mr8362686otf.88.1611183030357;
        Wed, 20 Jan 2021 14:50:30 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r133sm677632oia.17.2021.01.20.14.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 14:50:29 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] soc: qcom: rpmhpd: Add SC8180X
Date:   Wed, 20 Jan 2021 14:50:37 -0800
Message-Id: <20210120225037.1611353-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120225037.1611353-1-bjorn.andersson@linaro.org>
References: <20210120225037.1611353-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the power domains exposed by RPMH in the Qualcomm SC8180X platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/soc/qcom/rpmhpd.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/soc/qcom/rpmhpd.c b/drivers/soc/qcom/rpmhpd.c
index 7ce06356d24c..18d5180c0ca0 100644
--- a/drivers/soc/qcom/rpmhpd.c
+++ b/drivers/soc/qcom/rpmhpd.c
@@ -217,8 +217,29 @@ static const struct rpmhpd_desc sc7180_desc = {
 	.num_pds = ARRAY_SIZE(sc7180_rpmhpds),
 };
 
+/* SC8180x RPMH powerdomains */
+static struct rpmhpd *sc8180x_rpmhpds[] = {
+	[SC8180X_CX] = &sdm845_cx,
+	[SC8180X_CX_AO] = &sdm845_cx_ao,
+	[SC8180X_EBI] = &sdm845_ebi,
+	[SC8180X_GFX] = &sdm845_gfx,
+	[SC8180X_LCX] = &sdm845_lcx,
+	[SC8180X_LMX] = &sdm845_lmx,
+	[SC8180X_MMCX] = &sm8150_mmcx,
+	[SC8180X_MMCX_AO] = &sm8150_mmcx_ao,
+	[SC8180X_MSS] = &sdm845_mss,
+	[SC8180X_MX] = &sdm845_mx,
+	[SC8180X_MX_AO] = &sdm845_mx_ao,
+};
+
+static const struct rpmhpd_desc sc8180x_desc = {
+	.rpmhpds = sc8180x_rpmhpds,
+	.num_pds = ARRAY_SIZE(sc8180x_rpmhpds),
+};
+
 static const struct of_device_id rpmhpd_match_table[] = {
 	{ .compatible = "qcom,sc7180-rpmhpd", .data = &sc7180_desc },
+	{ .compatible = "qcom,sc8180x-rpmhpd", .data = &sc8180x_desc },
 	{ .compatible = "qcom,sdm845-rpmhpd", .data = &sdm845_desc },
 	{ .compatible = "qcom,sdx55-rpmhpd", .data = &sdx55_desc},
 	{ .compatible = "qcom,sm8150-rpmhpd", .data = &sm8150_desc },
-- 
2.29.2

