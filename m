Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 98BA98B2A0
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 10:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728235AbfHMIgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 04:36:00 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38301 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728207AbfHMIgA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 04:36:00 -0400
Received: by mail-wm1-f66.google.com with SMTP id m125so693713wmm.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 01:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B9rsr1/dgfaWkUD61V9rwU3U5jz+C8FjG7cuo0AJp/Q=;
        b=NIbQsuQ2GpNnu739xoBeBF5FbMINwGQO+uIiIC0oSLND+QmbFVEfIMFPovy+35DF/K
         wg++6jFE3Z9x5YLYZzPdq3Td/haqQlmOjOe2kkrJEYAeG2DEXu1cUrNyCr8UXuRtNjJ2
         M8cpQ+NGVZzfmBjrrbQVSi09Fk1hcLN0wTa2gbd8aT6C4hJ/bV1Ty/wgvnZIzTzLNq1C
         GMCi/GaYWG04/R8YjyoIM97doonDiD9mxrNim+ql2pMM+zsPLw2Il2hxXPIg5EMx5Sva
         4N/VaFxQyREtZdPogXXXuqNfJn5TUJyO7KtYv/4svBoYj4qUzg1iZ2KBR5awYOXaAwFI
         NSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B9rsr1/dgfaWkUD61V9rwU3U5jz+C8FjG7cuo0AJp/Q=;
        b=uR/10/CLxNQ20jgKr7rps+dsjtiZZnZaz+vkhj8Sjt4BpW2jy1xvilJcOCs10xYie1
         51SB+uhkfrQtrtdIgUPQhuK5GDdA/gPIqWjGnXr1l0RVN9/wIjmVmgMjuDyfBz/uQfzq
         raMLjbv+FAR2DAIzwAU1jZYJ00iTB1dN4OJy8XVkYc1+ClF+DCNMQsCyxQZPSvAU9ZRd
         Uhb5FZ91ROIxKivDJJHD/7/c5WvANkBPmf/UD8QlgIByiAHyJEhCjeg5Na8YZ4sIUYNb
         UiGI8/IYzZkTpzuSo6S1PBWMgmdViJxCxh2yNfKWD3/WYzSqV7oPl7jtqq4O06eBnrMW
         aoaQ==
X-Gm-Message-State: APjAAAVUkjSa4cYD1eeLdUqTnJH2LSdFDSjfS+VEbE/F2Yx8Qgj26OLr
        lN8cjyKpuYD7NBfY/IAx7OAJiw==
X-Google-Smtp-Source: APXvYqwP5gWmgCWzPHvhUEOHEmYJug9XD6Ru09g/P4GV8esa71ue0cYftUlFH20psboRMPK85MePTg==
X-Received: by 2002:a1c:7a12:: with SMTP id v18mr1765791wmc.56.1565685358047;
        Tue, 13 Aug 2019 01:35:58 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id o11sm8651822wrw.19.2019.08.13.01.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2019 01:35:57 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 3/5] ASoC: core: add support to snd_soc_dai_get_sdw_stream()
Date:   Tue, 13 Aug 2019 09:35:48 +0100
Message-Id: <20190813083550.5877-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
References: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On platforms which have smart speaker amplifiers connected via
soundwire and modeled as aux devices in ASoC, in such usecases machine
driver should be able to get sdw master stream from dai so that it can
use the runtime stream to setup slave streams.

soundwire already as a set function, get function would provide more
flexibility to above configurations.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 include/sound/soc-dai.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index dc48fe081a20..1e01f4a302e0 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -202,6 +202,7 @@ struct snd_soc_dai_ops {
 
 	int (*set_sdw_stream)(struct snd_soc_dai *dai,
 			void *stream, int direction);
+	void *(*get_sdw_stream)(struct snd_soc_dai *dai, int direction);
 	/*
 	 * DAI digital mute - optional.
 	 * Called by soc-core to minimise any pops.
@@ -410,4 +411,13 @@ static inline int snd_soc_dai_set_sdw_stream(struct snd_soc_dai *dai,
 		return -ENOTSUPP;
 }
 
+static inline void *snd_soc_dai_get_sdw_stream(struct snd_soc_dai *dai,
+					       int direction)
+{
+	if (dai->driver->ops->get_sdw_stream)
+		return dai->driver->ops->get_sdw_stream(dai, direction);
+	else
+		return ERR_PTR(-ENOTSUPP);
+}
+
 #endif
-- 
2.21.0

