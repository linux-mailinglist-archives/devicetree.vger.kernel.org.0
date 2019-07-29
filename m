Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 530AD79334
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388182AbfG2Sk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:28 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:37694 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728715AbfG2Sk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:27 -0400
Received: by mail-wr1-f67.google.com with SMTP id n9so37868994wrr.4
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uXX4nW8uApaN5prOQ3tt1oKZQOOA4D/lJ+3xaeto/As=;
        b=Y/mudMCy9V+QjQt70RqfnbUHYMk4Ss8CSL/LCgTrpNOEKgAFWdvekQ6IPJuwsuE2Nv
         NZR/nlBFLC6XbOGVgB8DY/igh/RI8GpWrWYD06FAlUO43DOx2Y9KrTXMmW0E+eoasZXy
         VaumqO+Vsa76E7Us20um8r5I6JfYvohu+5IEuN99fB2jZ7ZdGxt2XKJSkU34O76Kc4CY
         f6+GPbJJd1XSVQsw1E0vyQTn0dfG7FVjEzN28PtmAxcUoqDsW6BQiPmENJqDUPBrA0x6
         KW0UxHOxTHJmTOzo8tw+0O07pUXB/rQvrsVV2wi5eyRSV8FYOFBIsw8N2C4UA4YX4MyQ
         GzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uXX4nW8uApaN5prOQ3tt1oKZQOOA4D/lJ+3xaeto/As=;
        b=XcxMIWblljOjoaPSHZeDmY6fNq1k232pbBB104wIoZ+wnihb8wFbhufQOHQdFAAXCZ
         r+29pgruEuuU5ZnPWFpaV4cRfbOqYRzymefaSmTz3rG1R8RJrlOM/5VYqQJzvD5VPT5k
         O9vK2k3d2BI/WHIkJhLPzPnBZLlAGczWPlGzRbUjQR5EqFhVryghd41RMmSnQiA3fzFj
         x+1YMKVstvLKo8TGD1Yw8/r0T93othBuRR8bCw4tOzQ6tuEDlHeTi8JeZzWzCoHm5oS8
         +TRSyO0wydbDud5mffng3wDyZEuvyzGXSDNRzfUFORnLAlasDqj1jT6PSnHaETVdJgxc
         thQw==
X-Gm-Message-State: APjAAAVpqnGOGeYhLTsQ3BMCLNfS55nR3GmG7FtAk5e+Mu3ybUUmBYyd
        TUTZkE3xfE4A92HOf1lrJWw24A==
X-Google-Smtp-Source: APXvYqyT7+E9yhALDT4WJ7fusIqGWt+HjrfbfJRzWjySTaW2SjRWy2CfoC7XRRlMgCVm6rS5+/QCfQ==
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr45001624wrw.323.1564425626227;
        Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:25 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
Date:   Mon, 29 Jul 2019 19:39:37 +0100
Message-Id: <20190729183941.18164-2-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No functional changes, just a cleanup commit to tidy up a bit. Move the
nvmem_* and clk structures in a container struct.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/nvmem/meson-efuse.c | 47 ++++++++++++++++++++-----------------
 1 file changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
index 39bd76306033..9924b98db772 100644
--- a/drivers/nvmem/meson-efuse.c
+++ b/drivers/nvmem/meson-efuse.c
@@ -14,6 +14,12 @@
 
 #include <linux/firmware/meson/meson_sm.h>
 
+struct meson_efuse {
+	struct nvmem_device *nvmem;
+	struct nvmem_config config;
+	struct clk *clk;
+};
+
 static int meson_efuse_read(void *context, unsigned int offset,
 			    void *val, size_t bytes)
 {
@@ -37,21 +43,23 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
 static int meson_efuse_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct nvmem_device *nvmem;
-	struct nvmem_config *econfig;
-	struct clk *clk;
+	struct meson_efuse *efuse;
 	unsigned int size;
 	int ret;
 
-	clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(clk)) {
-		ret = PTR_ERR(clk);
+	efuse = devm_kzalloc(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
+	if (!efuse)
+		return -ENOMEM;
+
+	efuse->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(efuse->clk)) {
+		ret = PTR_ERR(efuse->clk);
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "failed to get efuse gate");
 		return ret;
 	}
 
-	ret = clk_prepare_enable(clk);
+	ret = clk_prepare_enable(efuse->clk);
 	if (ret) {
 		dev_err(dev, "failed to enable gate");
 		return ret;
@@ -59,7 +67,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
 
 	ret = devm_add_action_or_reset(dev,
 				       (void(*)(void *))clk_disable_unprepare,
-				       clk);
+				       efuse->clk);
 	if (ret) {
 		dev_err(dev, "failed to add disable callback");
 		return ret;
@@ -70,21 +78,18 @@ static int meson_efuse_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
-	if (!econfig)
-		return -ENOMEM;
-
-	econfig->dev = dev;
-	econfig->name = dev_name(dev);
-	econfig->stride = 1;
-	econfig->word_size = 1;
-	econfig->reg_read = meson_efuse_read;
-	econfig->reg_write = meson_efuse_write;
-	econfig->size = size;
+	efuse->config.dev = dev;
+	efuse->config.name = dev_name(dev);
+	efuse->config.stride = 1;
+	efuse->config.word_size = 1;
+	efuse->config.reg_read = meson_efuse_read;
+	efuse->config.reg_write = meson_efuse_write;
+	efuse->config.size = size;
+	efuse->config.priv = efuse;
 
-	nvmem = devm_nvmem_register(&pdev->dev, econfig);
+	efuse->nvmem = devm_nvmem_register(&pdev->dev, &efuse->config);
 
-	return PTR_ERR_OR_ZERO(nvmem);
+	return PTR_ERR_OR_ZERO(efuse->nvmem);
 }
 
 static struct platform_driver meson_efuse_driver = {
-- 
2.20.1

