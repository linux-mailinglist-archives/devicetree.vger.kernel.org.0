Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D987F282F45
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 06:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgJEEOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 00:14:18 -0400
Received: from m42-4.mailgun.net ([69.72.42.4]:19821 "EHLO m42-4.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725880AbgJEEOS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 00:14:18 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1601871258; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=OyZzbSCMZvuV3yEOZsiya4LXwpjTPN3Uu7YR7mN2EKQ=; b=nl9Ncjl/n0y4RYiPyel++50AmVCxrKwL2xMv2oTQET9z7VEKGVja0hBsGbKNdnSZ3+Etk5Ir
 vldTEgEz8lrtoMe1WJbh/XL9dpdctpaGU1IkcCyomqLdeXgZx6OH+mNiByU9YQQG6cHC1TFF
 oDU5VYl8QQIeaNKCGs8dEIOQmZE=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5f7a9d99588858a304383488 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 05 Oct 2020 04:14:17
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 37D75C43395; Mon,  5 Oct 2020 04:14:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from hyd-lnxbld210.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 35A85C433CB;
        Mon,  5 Oct 2020 04:14:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 35A85C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=srivasam@codeaurora.org
From:   Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, rohitkr@codeaurora.org,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     V Sujith Kumar Reddy <vsujithk@codeaurora.org>,
        Srinivasa Rao <srivasam@codeaurora.org>
Subject: [PATCH v9 4/7] Asoc: qcom: lpass:Update lpaif_dmactl members order
Date:   Mon,  5 Oct 2020 09:43:32 +0530
Message-Id: <1601871215-26200-5-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601871215-26200-1-git-send-email-srivasam@codeaurora.org>
References: <1601871215-26200-1-git-send-email-srivasam@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: V Sujith Kumar Reddy <vsujithk@codeaurora.org>

Update the lpaif_dmactl struct members order to match
HDMI reg map members sequence. Separate Interface reg map
as it is used for I2S control but not for HDMI control,
to make use of bulk API, which makes code more readable.

Signed-off-by: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Srinivasa Rao <srivasam@codeaurora.org>
---
 sound/soc/qcom/lpass-platform.c | 8 ++++----
 sound/soc/qcom/lpass.h          | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/sound/soc/qcom/lpass-platform.c b/sound/soc/qcom/lpass-platform.c
index e7cf4e5..db0d959 100644
--- a/sound/soc/qcom/lpass-platform.c
+++ b/sound/soc/qcom/lpass-platform.c
@@ -71,13 +71,13 @@ static int lpass_platform_alloc_dmactl_fields(struct device *dev,
 	rd_dmactl = drvdata->rd_dmactl;
 	wr_dmactl = drvdata->wr_dmactl;
 
-	rval = devm_regmap_field_bulk_alloc(dev, map, &rd_dmactl->bursten,
-					    &v->rdma_bursten, 6);
+	rval = devm_regmap_field_bulk_alloc(dev, map, &rd_dmactl->intf,
+					    &v->rdma_intf, 6);
 	if (rval)
 		return rval;
 
-	return devm_regmap_field_bulk_alloc(dev, map, &wr_dmactl->bursten,
-					    &v->wrdma_bursten, 6);
+	return devm_regmap_field_bulk_alloc(dev, map, &wr_dmactl->intf,
+					    &v->wrdma_intf, 6);
 }
 
 static int lpass_platform_pcmops_open(struct snd_soc_component *component,
diff --git a/sound/soc/qcom/lpass.h b/sound/soc/qcom/lpass.h
index 51c9991..7089d4c 100644
--- a/sound/soc/qcom/lpass.h
+++ b/sound/soc/qcom/lpass.h
@@ -31,9 +31,9 @@ struct lpaif_i2sctl {
 
 
 struct lpaif_dmactl {
+	struct regmap_field *intf;
 	struct regmap_field *bursten;
 	struct regmap_field *wpscnt;
-	struct regmap_field *intf;
 	struct regmap_field *fifowm;
 	struct regmap_field *enable;
 	struct regmap_field *dyncclk;
@@ -110,17 +110,17 @@ struct lpass_variant {
 	struct reg_field bitwidth;
 
 	/* RD_DMA Register fields */
+	struct reg_field rdma_intf;
 	struct reg_field rdma_bursten;
 	struct reg_field rdma_wpscnt;
-	struct reg_field rdma_intf;
 	struct reg_field rdma_fifowm;
 	struct reg_field rdma_enable;
 	struct reg_field rdma_dyncclk;
 
 	/* WR_DMA Register fields */
+	struct reg_field wrdma_intf;
 	struct reg_field wrdma_bursten;
 	struct reg_field wrdma_wpscnt;
-	struct reg_field wrdma_intf;
 	struct reg_field wrdma_fifowm;
 	struct reg_field wrdma_enable;
 	struct reg_field wrdma_dyncclk;
-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

