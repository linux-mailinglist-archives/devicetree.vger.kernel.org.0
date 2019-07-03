Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 005A45E375
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:08:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726635AbfGCMH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:07:57 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37127 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725847AbfGCMH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:07:57 -0400
Received: by mail-wr1-f65.google.com with SMTP id v14so2526000wrr.4
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m6jmfxNF0bKXTHuQ9MiaMGLVqO2khGBwkEkz0kXerFA=;
        b=JrcDlvvTu/UsNIG0vNxgNTXhOeeuaxZSo57yFAMP/xUZSJ0e+TmYtRFDzHNVWp3/2W
         WL7VXbaVLmT0arVzNS3T6C6CTredekNz7iHmVMUKkzUOkMQqzjJgSJxtZrK9xi60Omzm
         7rMGge4rmwUX+m0a7K72LzFQxvk6I1a5msWlscLQi9xL2pFct8QbyQ9pN5btRBkmlak4
         28L6JNF30BSyhM5y8HR5cccDJt1pSGxI8NxN6gvkrSyFIdW+wiIPTsdYhjcCXIkwcTjH
         f63rXZf/IzhUP5KlgoPcMSvkpDEqS7ubdYS70hqaG4LPhLfTSntiquOLtUwmlLIgqgrb
         ATUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m6jmfxNF0bKXTHuQ9MiaMGLVqO2khGBwkEkz0kXerFA=;
        b=Rxee/KsBkqz5k2EUUOnSVUkamyS64he/XF0zRcp24qvZqOBeu4BuTSUo8QNCjmMtsG
         o/1hHLdwgjzt/oNAuw9oVGIWW8BuVjs2OmfR3maA2jaaSWdSPG8TZNZQ03SnUy8xdoWs
         wJTZtpXdenFwR+Z5uIZi1EVaPcSjzpYLtDwybDJR4L3zWVZ7LMhyaINKdD7OxB/jyv0z
         t2Jg8WMRsgH1SAhbCrzK4D4u+ITCHlkb0nVY3LQZX3bsCfLgfsQrbKg9l1bpfzCg7cOB
         yI2vnlClCkYemdY9jdsR6duqjXDudO0PnPC9QLi7Heaq2i7pyDL3ZCUZnbBqxVSO6fnb
         tfGA==
X-Gm-Message-State: APjAAAUgfK4xBtAsYEx+LIlGUGXmKyMzTpHjXJwFRkVsS4CM1gm8npAH
        oskDtyEFHnfT/DOLEMH7kKy1DA==
X-Google-Smtp-Source: APXvYqw931AA2gewVKXUYTgyeeVPRjW4aXRpl7vYMadJOlnoIda8+dbNBrBJbhCSF/FyzoCyWHZOZw==
X-Received: by 2002:a05:6000:1043:: with SMTP id c3mr3594718wrx.226.1562155675701;
        Wed, 03 Jul 2019 05:07:55 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z126sm2767638wmb.32.2019.07.03.05.07.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 03 Jul 2019 05:07:55 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 2/2] ASoC: meson: axg-tdm-formatter: add reset
Date:   Wed,  3 Jul 2019 14:07:49 +0200
Message-Id: <20190703120749.32341-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703120749.32341-1-jbrunet@baylibre.com>
References: <20190703120749.32341-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the optional reset line handling which is present on the new SoC
families, such as the g12a. Triggering this reset is not critical but
it helps solve a channel shift issue on the g12a.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-tdm-formatter.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/sound/soc/meson/axg-tdm-formatter.c b/sound/soc/meson/axg-tdm-formatter.c
index 0c6cce5c5773..2e498201139f 100644
--- a/sound/soc/meson/axg-tdm-formatter.c
+++ b/sound/soc/meson/axg-tdm-formatter.c
@@ -7,6 +7,7 @@
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 #include <sound/soc.h>
 
 #include "axg-tdm-formatter.h"
@@ -20,6 +21,7 @@ struct axg_tdm_formatter {
 	struct clk *lrclk;
 	struct clk *sclk_sel;
 	struct clk *lrclk_sel;
+	struct reset_control *reset;
 	bool enabled;
 	struct regmap *map;
 };
@@ -75,6 +77,24 @@ static int axg_tdm_formatter_enable(struct axg_tdm_formatter *formatter)
 	if (formatter->enabled)
 		return 0;
 
+	/*
+	 * On the g12a (and possibly other SoCs), when a stream using
+	 * multiple lanes is restarted, it will sometimes not start
+	 * from the first lane, but randomly from another used one.
+	 * The result is an unexpected and random channel shift.
+	 *
+	 * The hypothesis is that an HW counter is not properly reset
+	 * and the formatter simply starts on the lane it stopped
+	 * before. Unfortunately, there does not seems to be a way to
+	 * reset this through the registers of the block.
+	 *
+	 * However, the g12a has indenpendent reset lines for each audio
+	 * devices. Using this reset before each start solves the issue.
+	 */
+	ret = reset_control_reset(formatter->reset);
+	if (ret)
+		return ret;
+
 	/*
 	 * If sclk is inverted, invert it back and provide the inversion
 	 * required by the formatter
@@ -306,6 +326,15 @@ int axg_tdm_formatter_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* Formatter dedicated reset line */
+	formatter->reset = reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(formatter->reset)) {
+		ret = PTR_ERR(formatter->reset);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get reset: %d\n", ret);
+		return ret;
+	}
+
 	return devm_snd_soc_register_component(dev, drv->component_drv,
 					       NULL, 0);
 }
-- 
2.21.0

