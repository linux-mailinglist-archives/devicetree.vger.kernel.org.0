Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BBB92118BD
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 14:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726429AbfEBMLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 08:11:11 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38555 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726428AbfEBMLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 08:11:01 -0400
Received: by mail-wr1-f65.google.com with SMTP id k16so3013692wrn.5
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 05:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
        b=Gn8SvsLQMxKlYfYvb5wfkMqO5ckj8c3meyR1C3aEF7HNubkJ1NYdrJV78Fn4DIcTc2
         750uPQfLMl89SFZVsmnEJSvaPPNSwxsgI9dXKjMCp1D61Qha+89LL/J4SCUdIsk/J0dX
         sFXO4IQo2P0IQtqgww6Tm2hVB0yxjd55TI6Ed3Y9xvMGF5PWOSlwCZlFLC5IS7WPB+sO
         Y0fjL8vgivscCL6P0QoLWuwI5Wsl2E2ihgRT9AewjeuhAB3aMlikCoxqnbCC4x5upxwp
         DFnouu0WnTTIOg6TR60OvVdUtOQULErUwESdhxKc24p93FG6V2sFDU1c8uHzJNKS89oI
         ieBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
        b=TRPJVP1C5mswuErNMR26PZhXinhVjQNpdDUEwYgPyT7UmCP0aHwFPP2GtbJ1bQYk6e
         vmXTH1qxG33wgiSsx8J6ZsIA0d2NUyaX4rmaWEJe9VYSRGAAybGXo4Yir2tQKRL/4Ewn
         MrL+bYL5/odA7utMUCtoZs72Ed5GW/dpZ1RK9XWbd7nSyS6bTofMaxUGYunwoPgOGHYd
         OPNWtxY4xKlkbPT5/x1LnqWYrnOTlHgFWYQtfsjqe27oPyw80EsH+mTLjaJuGZXbJYam
         4gsPM3/J6nxiiJ8Swl9vLKTnPC2KZGk4uqtoeOLqU497BFDXIiPktMgsn3BWMnHletZc
         S5Pg==
X-Gm-Message-State: APjAAAXmRHn27EUhSXUaALSbTSyVFVrt8udOXKaMVaTVxidBrJUYIDOW
        TGuKpW8M7qbNVQiYwbTSlD1JZA==
X-Google-Smtp-Source: APXvYqwiOYJrXyeXMjSrke5vRgXR13G0kZTQzgHmDuQOjoYmPdNvfpQ6nGVxnTDki5cdAAvppT14Iw==
X-Received: by 2002:adf:e984:: with SMTP id h4mr2580423wrm.32.1556799059924;
        Thu, 02 May 2019 05:10:59 -0700 (PDT)
Received: from localhost.localdomain (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
        by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 05:10:59 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
        tiwai@suse.com, kaichieh.chuang@mediatek.com,
        shunli.wang@mediatek.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 5/5] ASoC: mediatek: mt8516: register ADDA DAI
Date:   Thu,  2 May 2019 14:10:41 +0200
Message-Id: <20190502121041.8045-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register the ADDA DAI driver into the MT8516 PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
index 84fbb5dbbd14..e1fd9290dd8f 100644
--- a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 
+#include "mt8516-afe-common.h"
 #include "mt8516-afe-regs.h"
 
 #include "../common/mtk-afe-platform-driver.h"
@@ -670,6 +671,7 @@ static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
 typedef int (*dai_register_cb)(struct mtk_base_afe *);
 static const dai_register_cb dai_register_cbs[] = {
 	mt8516_dai_memif_register,
+	mt8516_dai_adda_register,
 };
 
 static int mt8516_afe_component_probe(struct snd_soc_component *component)
-- 
2.20.1

