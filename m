Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E096539E060
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 17:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbhFGPbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 11:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230239AbhFGPbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 11:31:10 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97692C06178B
        for <devicetree@vger.kernel.org>; Mon,  7 Jun 2021 08:29:18 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id h3so10324967wmq.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 08:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZEdZ+N0eteL07jx0I8YEw4d+MAwVooRKuXAZfHn0G4c=;
        b=R1MyfppJLNBxiFMM62PqUf4TN1rKlQCoG+sUtlZ0d8W+HSwZTYPAsyt8GxZbaK4vFc
         JayS9d24XrxjZ2km+sbQDa3l6knyLSO2ubfSYKI3DU/UZMO6mPd3hTnpVCQR4qPuyD9Q
         JESdpkJwuZz1AKhdCdJhwqg2MY+qgb6CwW7gDhQXBW30QMJK3rD9kbC0qYgV2mprM19+
         z+AZt5TqyCzeoxFZMNqQ130gQpA77+W7KUEBKSb5rnZuTWDEPyhs0OLAeRITdVY5SEbc
         HBQ+St/7YYuIbeXOqbh8EUyUX7jXLqJOueiYxuwume37s5bm+HgIl9rvRFht807nYzmr
         h7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZEdZ+N0eteL07jx0I8YEw4d+MAwVooRKuXAZfHn0G4c=;
        b=HxJGnzZkWSxd5r6lwob6xneBlpKoWltFw274VKi56Bm8VLVvCVn3k0YUGOnAWsQVl5
         xG3qkxTsT12E2OSHYhV3769R4OSGk+nQDNlNNBAnDwjMSo0QbXcEZsNSw3DW96DgbwL7
         YgAucPyUBDxKPQQ1UoZdCGdwhdbyDoeiA+ETpaIOAvNtmC1GP6fuMEa6ShC9vURoEjsq
         bM//D2maU96PZgesvEGKFt3ehQbhy3URm1szcKsmiUHg9i57+coeKnQGtRj1Zd9a4xy3
         e3Lebja+mr09nKi23tpFJ3Gr8LHZHkt7JPF1EqU7n4/UIwtU5kqyde6s0h66pea/+Fg/
         8F1w==
X-Gm-Message-State: AOAM5309VOxIg1bLbTOS8hcuPd1gcEZRsWtQ9piqKeX41Y1qVD2sEYUa
        oc0pBxLGuYLd2W3vT97nkLj2Dg==
X-Google-Smtp-Source: ABdhPJyywyXAznW2BbG8ZiKmqeAf2BAyKWptLGynKdw+WVKkZ/OhKSPThpJ+WUvOeuc6t4Ydm+S7PQ==
X-Received: by 2002:a7b:c1ce:: with SMTP id a14mr11384133wmj.180.1623079757269;
        Mon, 07 Jun 2021 08:29:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id q3sm16370170wrr.43.2021.06.07.08.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 08:29:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, robh@kernel.org,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 13/13] ASoC: qcom: sm8250: Add audioreach support
Date:   Mon,  7 Jun 2021 16:28:36 +0100
Message-Id: <20210607152836.17154-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
References: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for parsing dt for AudioReach based soundcards
which only have backend DAI links in DT.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/sm8250.c | 144 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 143 insertions(+), 1 deletion(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index fe8fd7367e21..421f9d1d2bed 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -20,6 +20,141 @@ struct sm8250_snd_data {
 	struct sdw_stream_runtime *sruntime[AFE_PORT_MAX];
 };
 
+static int qcom_audioreach_snd_parse_of(struct snd_soc_card *card)
+{
+	struct device_node *np;
+	struct device_node *codec = NULL;
+	struct device_node *platform = NULL;
+	struct device_node *cpu = NULL;
+	struct device *dev = card->dev;
+	struct snd_soc_dai_link *link;
+	struct of_phandle_args args;
+	struct snd_soc_dai_link_component *dlc;
+	int ret, num_links;
+
+	ret = snd_soc_of_parse_card_name(card, "model");
+	if (ret) {
+		dev_err(dev, "Error parsing card name: %d\n", ret);
+		return ret;
+	}
+
+	/* DAPM routes */
+	if (of_property_read_bool(dev->of_node, "audio-routing")) {
+		ret = snd_soc_of_parse_audio_routing(card, "audio-routing");
+		if (ret)
+			return ret;
+	}
+
+	/* Populate links */
+	num_links = of_get_child_count(dev->of_node);
+
+	/* Allocate the DAI link array */
+	card->dai_link = devm_kcalloc(dev, num_links, sizeof(*link), GFP_KERNEL);
+	if (!card->dai_link)
+		return -ENOMEM;
+
+	card->num_links = num_links;
+	link = card->dai_link;
+
+	for_each_child_of_node(dev->of_node, np) {
+
+		dlc = devm_kzalloc(dev, 2 * sizeof(*dlc), GFP_KERNEL);
+		if (!dlc) {
+			ret = -ENOMEM;
+			goto err_put_np;
+		}
+
+		link->cpus	= &dlc[0];
+		link->platforms	= &dlc[1];
+
+		link->num_cpus		= 1;
+		link->num_platforms	= 1;
+
+
+		ret = of_property_read_string(np, "link-name", &link->name);
+		if (ret) {
+			dev_err(card->dev, "error getting codec dai_link name\n");
+			goto err_put_np;
+		}
+
+		cpu = of_get_child_by_name(np, "cpu");
+		platform = of_get_child_by_name(np, "platform");
+		codec = of_get_child_by_name(np, "codec");
+		if (!cpu) {
+			dev_err(dev, "%s: Can't find cpu DT node\n", link->name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		if (!platform) {
+			dev_err(dev, "%s: Can't find platform DT node\n", link->name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		if (!codec) {
+			dev_err(dev, "%s: Can't find codec DT node\n", link->name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		ret = of_parse_phandle_with_args(cpu, "sound-dai", "#sound-dai-cells", 0, &args);
+		if (ret) {
+			dev_err(card->dev, "%s: error getting cpu phandle\n", link->name);
+			goto err;
+		}
+
+		link->cpus->of_node = args.np;
+		link->id = args.args[0];
+
+		ret = snd_soc_of_get_dai_name(cpu, &link->cpus->dai_name);
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(card->dev, "%s: error getting cpu dai name: %d\n",
+					link->name, ret);
+			goto err;
+		}
+
+		link->platforms->of_node = of_parse_phandle(platform, "sound-dai", 0);
+		if (!link->platforms->of_node) {
+			dev_err(card->dev, "%s: platform dai not found\n", link->name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		ret = snd_soc_of_get_dai_link_codecs(dev, codec, link);
+		if (ret < 0) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(card->dev, "%s: codec dai not found: %d\n",
+					link->name, ret);
+			goto err;
+		}
+
+		/* DPCM backend */
+		link->no_pcm = 1;
+		link->ignore_pmdown_time = 1;
+		link->ignore_suspend = 1;
+
+		link->stream_name = link->name;
+		snd_soc_dai_link_set_capabilities(link);
+		link++;
+
+		of_node_put(cpu);
+		of_node_put(codec);
+		of_node_put(platform);
+
+	}
+
+	return 0;
+err:
+	of_node_put(cpu);
+	of_node_put(codec);
+	of_node_put(platform);
+err_put_np:
+	of_node_put(np);
+	return ret;
+}
+
 static int sm8250_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 				     struct snd_pcm_hw_params *params)
 {
@@ -199,7 +334,12 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 	card->dev = dev;
 	dev_set_drvdata(dev, card);
 	snd_soc_card_set_drvdata(card, data);
-	ret = qcom_snd_parse_of(card);
+	if (of_device_is_compatible(dev->of_node, "qcom,sm8250-audioreach-sndcard") ||
+		of_device_is_compatible(dev->of_node, "qcom,qrb5165-rb5-audioreach-sndcard"))
+		ret = qcom_audioreach_snd_parse_of(card);
+	else
+		ret = qcom_snd_parse_of(card);
+
 	if (ret)
 		return ret;
 
@@ -211,6 +351,8 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 static const struct of_device_id snd_sm8250_dt_match[] = {
 	{.compatible = "qcom,sm8250-sndcard"},
 	{.compatible = "qcom,qrb5165-rb5-sndcard"},
+	{.compatible = "qcom,sm8250-audioreach-sndcard" },
+	{.compatible = "qcom,qrb5165-rb5-audioreach-sndcard" },
 	{}
 };
 
-- 
2.21.0

