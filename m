Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 990B7754E6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 19:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390669AbfGYRAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 13:00:01 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:34920 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389094AbfGYRAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 13:00:00 -0400
Received: by mail-wm1-f66.google.com with SMTP id l2so45364540wmg.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lbYdutAm45vnNpTOgncZbQOVHMX6IrCJM1Bp1BbX570=;
        b=JHL5b6yjq498WqGFuxUL/3bR4AEmuQubYpax4UgNdWtxexCUwcLOEgfLEK6IEeOV9j
         ZEQ/VPp/zAPPlSOpJ2P7cK/l0jbzfN93PS9DUEChu69bt2XEmoBULnR82eIPbgYt71dv
         9MVzSFF95J4xkl9e4ZrDs5TF6h1wxTdijRA/El6uPPOXG5PtDW22GgkqXaHKN7nmpWiy
         tNTYcx0HpmJWfDM8WY1uIfBpx6ANJt4h3QXSAJBMv6qu87JdtXBVvA7dgq0liy7XTGVc
         b6TRBWvAHXzIz76zWg5hhAg3zQ3fo6818Qrn6vkqSuW5T89PJJP3JH46GsppTjysOvBD
         b4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lbYdutAm45vnNpTOgncZbQOVHMX6IrCJM1Bp1BbX570=;
        b=Vag9zTCaBGBtJXhFIgcmk1khT0WonS+V0ExFPw3radb4Zi1OHmH0NkzHGDEHrdHntZ
         V9ATKXnV8RR7Z0ZgOeWwViUgZ4aBrynHXfb/eOBXbiee6L1Pe2gRvzuxHV/20xUU794A
         XKdSLVy+sdR/qe2xzOb8UUxXGABmWI7AtLozLb/MCpLjIel5v6dewiYJG+sR98kbOz8v
         4xgKr2zd/06NRGSTCAuM9/2pifPygt+6qyEvi1ByGJ05KtTNnDo1C8yXJ/n3rfAfOeDC
         CI6AgUq1A0WaCsMwPIRf+jKVfrj+hb9DsQP4yDvaL4JbTyOGrkn8LJBz7FNuBx2OupK4
         g/Rg==
X-Gm-Message-State: APjAAAVrPfWTSWxvQFDdQyNtV2XmXgPgrXVRbiENCHNO3WbYBzhAxc1l
        9CVFSalS6G0A3irgoiy5kPpLefiWQHY=
X-Google-Smtp-Source: APXvYqyoB5DTPbPo8blqtf5tmVRdEJqQhC7XQYxzoSLPmCRuk3ksWFESivbnEbmeeLuvKYeRRNAl7g==
X-Received: by 2002:a1c:988a:: with SMTP id a132mr78758639wme.165.1564073998535;
        Thu, 25 Jul 2019 09:59:58 -0700 (PDT)
Received: from starbuck.baylibre.local (uluru.liltaz.com. [163.172.81.188])
        by smtp.googlemail.com with ESMTPSA id q10sm53627199wrf.32.2019.07.25.09.59.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 09:59:58 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v2 6/6] ASoC: codec2codec: fill some of the runtime stream parameters
Date:   Thu, 25 Jul 2019 18:59:49 +0200
Message-Id: <20190725165949.29699-7-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725165949.29699-1-jbrunet@baylibre.com>
References: <20190725165949.29699-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set the information provided struct snd_soc_pcm_stream in the
struct snd_pcm_runtime of the codec to codec link.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/soc-dapm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
index 3e3b81ae87dd..fadc804be89c 100644
--- a/sound/soc/soc-dapm.c
+++ b/sound/soc/soc-dapm.c
@@ -3872,6 +3872,11 @@ snd_soc_dai_link_event_pre_pmu(struct snd_soc_dapm_widget *w,
 		dapm_update_dai_unlocked(substream, params, sink);
 	}
 
+	runtime->format = params_format(params);
+	runtime->subformat = params_subformat(params);
+	runtime->channels = params_channels(params);
+	runtime->rate = params_rate(params);
+
 out:
 	if (ret < 0)
 		kfree(runtime);
-- 
2.21.0

