Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5013A0DB2
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 09:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237166AbhFIH0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 03:26:07 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:55508 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235509AbhFIH0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 03:26:06 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1623223453; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=axR21LKUolqQmvGD0SPdoJkcTUo2/NXvSNtNP6BRzPE=; b=vLa6u1HwUGMboQ63YNnYpwFIV/3ian3veTpCpriEMMejKSQBrvC2OaKl+h5v2hnunwzhJsIs
 clI7+aliIhzA5oCnfEFQKOW1/53v43AqinRiS6HS1uNQeWVEYFD6u7bZPDmvBspJPdB0qe/7
 c1YBy3Gj6YyiEnI9kO+2z4bLnrk=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 60c06c81f726fa41885319c0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 09 Jun 2021 07:23:45
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 8E5A8C43145; Wed,  9 Jun 2021 07:23:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hyd-lnxbld210.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 8602FC433D3;
        Wed,  9 Jun 2021 07:23:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8602FC433D3
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=srivasam@codeaurora.org
From:   Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, rohitkr@codeaurora.org,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, judyhsiao@chromium.org
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Subject: [PATCH v3] ASoC: qcom: Fix for DMA interrupt clear reg overwriting
Date:   Wed,  9 Jun 2021 12:53:10 +0530
Message-Id: <20210609072310.26099-1-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DMA interrupt clear register overwritten during
simultaneous playback and capture in lpass platform
interrupt handler. It's causing playback or capture stuck
in similtaneous plaback on speaker and capture on dmic test.
Update appropriate reg fields of corresponding channel instead
of entire register write.

Fixes: commit c5c8635a04711 ("ASoC: qcom: Add LPASS platform driver")

Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
---
Changes since v2:
	-- Removed redundant variables.
Changes since v1:
	-- Subject lines changed.
 sound/soc/qcom/lpass-platform.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/sound/soc/qcom/lpass-platform.c b/sound/soc/qcom/lpass-platform.c
index 0df9481ea4c6..f9df76d37858 100644
--- a/sound/soc/qcom/lpass-platform.c
+++ b/sound/soc/qcom/lpass-platform.c
@@ -526,7 +526,7 @@ static int lpass_platform_pcmops_trigger(struct snd_soc_component *component,
 			return -EINVAL;
 		}
 
-		ret = regmap_write(map, reg_irqclr, val_irqclr);
+		ret = regmap_update_bits(map, reg_irqclr, val_irqclr, val_irqclr);
 		if (ret) {
 			dev_err(soc_runtime->dev, "error writing to irqclear reg: %d\n", ret);
 			return ret;
@@ -650,10 +650,11 @@ static irqreturn_t lpass_dma_interrupt_handler(
 	struct lpass_variant *v = drvdata->variant;
 	irqreturn_t ret = IRQ_NONE;
 	int rv;
-	unsigned int reg = 0, val = 0;
+	unsigned int reg, val, mask;
 	struct regmap *map;
 	unsigned int dai_id = cpu_dai->driver->id;
 
+	mask = LPAIF_IRQ_ALL(chan);
 	switch (dai_id) {
 	case LPASS_DP_RX:
 		map = drvdata->hdmiif_map;
@@ -676,8 +677,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
 	return -EINVAL;
 	}
 	if (interrupts & LPAIF_IRQ_PER(chan)) {
-
-		rv = regmap_write(map, reg, LPAIF_IRQ_PER(chan) | val);
+		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_PER(chan) | val));
 		if (rv) {
 			dev_err(soc_runtime->dev,
 				"error writing to irqclear reg: %d\n", rv);
@@ -688,7 +688,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
 	}
 
 	if (interrupts & LPAIF_IRQ_XRUN(chan)) {
-		rv = regmap_write(map, reg, LPAIF_IRQ_XRUN(chan) | val);
+		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_XRUN(chan) | val));
 		if (rv) {
 			dev_err(soc_runtime->dev,
 				"error writing to irqclear reg: %d\n", rv);
@@ -700,7 +700,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
 	}
 
 	if (interrupts & LPAIF_IRQ_ERR(chan)) {
-		rv = regmap_write(map, reg, LPAIF_IRQ_ERR(chan) | val);
+		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_ERR(chan) | val));
 		if (rv) {
 			dev_err(soc_runtime->dev,
 				"error writing to irqclear reg: %d\n", rv);
-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

