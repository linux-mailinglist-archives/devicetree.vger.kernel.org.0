Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC60167D64
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 13:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728171AbgBUMWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 07:22:54 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:37328 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728085AbgBUMWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 07:22:53 -0500
Received: by mail-wr1-f68.google.com with SMTP id w15so1820521wru.4
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 04:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eFN2VKHrE+JD0cGAI+3A9MIQDzvF5Lgt98hOYp/CejM=;
        b=h+fnNkSEO/98hXd04jWTDTvmFmrA5X04DN9GsSlTWb278VjQ4P84W9tyESgWeXKauk
         pDWX73mWc9x2mEm2j4qVjO9TRaM/zXOBrZ+Oqk2N66I03EhrNvbPIkpUHEv4PXMaXKOb
         xgmHB4/UJmQ3zKfW/Nkt3qcG2bdRqbFpPQnOdB+m1mes/eIzwWwDvmclqx3LULkwOIGy
         dUgQdVtJ1HGg4Ss0fs/kSjOQ1BEhyLIM6HkdByUE3WaPPyP12P21vVjRe7nu10fr7PoN
         G+MgD/56pXnelfkAr3ncqIxHumcsfYQjL9uWd1BggVHYq24XSuG4zhc6wlV5SdRIlq68
         j13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eFN2VKHrE+JD0cGAI+3A9MIQDzvF5Lgt98hOYp/CejM=;
        b=hmxPGvPmBPBcJdAx3XdV0s/V725nCSjDz+Wn5cx3GbCIcl1P142PL10iwstTkSV3/b
         kye4jX8rL8mp00m/vJ6X9WngMJDuViZC0nFD6W+x7Gla7JNAoAd/QRnCPbBNjuj4Z6GN
         TnSwFt8a0BF6wvxkJvNDS+620CPIMbh/7JFvanQX44UCh0h4/FNxlSWK/vNlN9AgA3Dh
         FbIriaiDnfNg6S+GXSXftaVaRIO4IPXmlBHPvaCKz1qgAoiNrODrOkX2BENV7flAkv8/
         19nvc1GVwIdxqgQYioR+vum+P1uGhKz25Bpb63sZAAfeeJQKvrGdKIfqFcVDg6qCzz2A
         qPkg==
X-Gm-Message-State: APjAAAXr2qsdI5vMi0ZfO9FNugdoOETBujGX4sL07VqRi8jj1JjbifQA
        72XCDV+kxsSSBjDLzo/bHJkpWOXfOKM=
X-Google-Smtp-Source: APXvYqyFpTaJFZg3SDWkgDp7ebkoEJ16w8vW9gMh5UJodOeQoZziNCQEeKl5uKjGXqwqFZdLufdOvQ==
X-Received: by 2002:a5d:5752:: with SMTP id q18mr50518201wrw.277.1582287771687;
        Fri, 21 Feb 2020 04:22:51 -0800 (PST)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p26sm3454653wmc.24.2020.02.21.04.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 04:22:51 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 3/3] ASoC: meson: axg-card: add toacodec support
Date:   Fri, 21 Feb 2020 13:22:42 +0100
Message-Id: <20200221122242.1500093-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221122242.1500093-1-jbrunet@baylibre.com>
References: <20200221122242.1500093-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make sure the axg audio card driver recognise the dai_link as a
codec-to-codec link if the cpu dai is the internal dac glue.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-card.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/meson/axg-card.c b/sound/soc/meson/axg-card.c
index 372dc696cc8e..48651631bdcf 100644
--- a/sound/soc/meson/axg-card.c
+++ b/sound/soc/meson/axg-card.c
@@ -303,7 +303,8 @@ static int axg_card_cpu_is_tdm_iface(struct device_node *np)
 
 static int axg_card_cpu_is_codec(struct device_node *np)
 {
-	return of_device_is_compatible(np, DT_PREFIX "g12a-tohdmitx");
+	return of_device_is_compatible(np, DT_PREFIX "g12a-tohdmitx") ||
+		of_device_is_compatible(np, DT_PREFIX "g12a-toacodec");
 }
 
 static int axg_card_add_link(struct snd_soc_card *card, struct device_node *np,
-- 
2.24.1

