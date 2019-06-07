Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1B9C386A1
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727625AbfFGI5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:10 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33243 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727233AbfFGI5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:09 -0400
Received: by mail-wr1-f68.google.com with SMTP id n9so1347759wru.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Nk/ajWW2fVH/9L9yBJ6zZfHfEglcI3MSG9DcJjyJ+A=;
        b=lGf990GUa32z0NWIrq3IT6/tA3Tr8dWI3lrZM3jaURZmclg6wXHKJYFjEWQHzF3XIg
         /m/7PkryJ8qIuEbig95LkE1ACJ7vLBmvws+COjHV+uc5rLqRm40f7TDDINmKXQquq7s7
         W5SkXYwzLakiKIMVw/RMB9xwCfM0uhLqzlxAULjh8N78xMuyizZS4nojgOYLt0c9LUjn
         qZrx1OdGESo+38kl0Enl+Gp4WMpsRkxPx/y60Vd8NvYLkHJs0Cfq0ZhqWjYwlw606Pos
         wS77pebk39PKtajivrkP1jwJ1U94AyJUtC+grClHgRgbn0tbUqbqnTvZlInDE8HmL6N7
         ETyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Nk/ajWW2fVH/9L9yBJ6zZfHfEglcI3MSG9DcJjyJ+A=;
        b=kIb0zKs82WuCCmXvM1fFmKlzGjrOrxN5QxeI3+T96gRb8UgYzVgB2SVZ+8FfbSw1pd
         25nRygWpjSQ+TG74fspeX1Qvw5pzjohu1uLc/QZ/DWlGvKDGq5c7ZOcv9PoSW2VLTkhA
         KNLQrIXS5y4rMM4HFTzt518PwUHn6fhE2NvnmlquGLHCH08eoNnzhPCch9abUel6IBkf
         oQFnLwQMYevWKgvJdoqbVSojmUL91rJlbhzLvHbD3u6qOn2JLtVf683Vxm2NagNgX9Hb
         peXKxNiA4qAfOxXcWK8wcXSFOZhWkyN16gPZrq2t5Poq3VY257S1dKYE83y5CI1JbwpJ
         OG1g==
X-Gm-Message-State: APjAAAX4SSP2AOfUdH3O5cfojXguVfQ+N2+EDyg2PNnZCuFgkGTxt4d6
        kst6S4T9Agl24L4amRed2Pp0tg==
X-Google-Smtp-Source: APXvYqz4IVNqNRbjq+XkvxaB+gbUjrylYR3ZBRzgq2RaTUqsgoCPlp1OgQmHsCNzGYDFiJsh9GGXLw==
X-Received: by 2002:adf:ee49:: with SMTP id w9mr9789849wro.112.1559897828100;
        Fri, 07 Jun 2019 01:57:08 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:07 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 1/6] ASoC: core: add support to snd_soc_dai_get_sdw_stream()
Date:   Fri,  7 Jun 2019 09:56:38 +0100
Message-Id: <20190607085643.932-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
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
index f5d70041108f..9f90b936fd9a 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -177,6 +177,7 @@ struct snd_soc_dai_ops {
 
 	int (*set_sdw_stream)(struct snd_soc_dai *dai,
 			void *stream, int direction);
+	void *(*get_sdw_stream)(struct snd_soc_dai *dai, int direction);
 	/*
 	 * DAI digital mute - optional.
 	 * Called by soc-core to minimise any pops.
@@ -385,4 +386,13 @@ static inline int snd_soc_dai_set_sdw_stream(struct snd_soc_dai *dai,
 		return -ENOTSUPP;
 }
 
+static inline void *snd_soc_dai_get_sdw_stream(struct snd_soc_dai *dai, int direction)
+{
+	if (dai->driver->ops->get_sdw_stream)
+		return dai->driver->ops->get_sdw_stream(dai, direction);
+	else
+		return NULL;
+
+}
+
 #endif
-- 
2.21.0

