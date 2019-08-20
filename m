Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D57A95EB8
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728366AbfHTMed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:34:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44718 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730001AbfHTMec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:34:32 -0400
Received: by mail-wr1-f68.google.com with SMTP id p17so12199492wrf.11
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4Mb2956O3FRxXwLE7go2npN/BtpK8pSn0FcezT5G7k=;
        b=QX2ousUiVBfSy/6wp/ndiWEdieYpT86MhekZPf558vtyY6ounj3GNb8xDtX9fTyjQ+
         H/6hrMlgDpF8KLQyFos/ukJ65U/LNDR7fJnxuDhLDn1bGgRO8MXmO0eK33ILYpduu0zw
         PH7iRrywrKqO32ZGY/nGOPR5JhMKqUlQTJMaTqoY80etoh8RIpC9EP8D/A7O5miCYyfo
         7+e98l/N4Aza0s8osWdP+wb3iG/Bbfm/OJWyWCMWTn12NuvnNrrKnQaWhTmxYi8IAdak
         obVglZAWVmeNpHBrzeIHVtmM6+SoypHInqmkKexdMhfmznhWEdkeASFDSPBPeMvgtkhJ
         6CCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4Mb2956O3FRxXwLE7go2npN/BtpK8pSn0FcezT5G7k=;
        b=fXXAzAxMBvxp0Pkpwp6udb4eEhlq0DKrUO7ttkg4xG2Mge3jfWPnhpC0yg/fmbmizX
         pQ40AoMEMmgMbPK3fL/r0a/a2qS3QoV/N/J9F9VO0mdlAWYb2m767IPYNlTDCOR54m0E
         WSISNcrLrwcooHfl2MWc1Ywslgy9oBWUxfCxWw9xObObJAXuTx6b1BykQnXxANP68g2s
         07/OzbfVTG6/jx0Vrmv8UZ6hE7ZP7gdO3HlC2Ct1dbw6XbPYkkPydleBvDbFT80YHeZq
         5KO2a7cOXrGBKgMw2fcWU8B3PhbUD0z2e0MIqHcyreQFjp0gW/+bs/iZDLLmB4/kmTTc
         tGMA==
X-Gm-Message-State: APjAAAUOC8OHdGivvyU36HqbxM9qcrA482wCWE/IfV+sgn897Ioiv0N0
        FTdo7GNtoeRW5BIUcXGIEB0JCg==
X-Google-Smtp-Source: APXvYqyfMx9psJcHwdQJaV1Gfgogu/f2ULTJSwrbGBvr+1926NVQ0lmFBoo5xeAkyfipxmA98WqE2Q==
X-Received: by 2002:adf:a2cd:: with SMTP id t13mr31996957wra.251.1566304470874;
        Tue, 20 Aug 2019 05:34:30 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id 39sm59456442wrc.45.2019.08.20.05.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:34:30 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH] ASoC: meson: axg-tdm-formatter: free reset on device removal
Date:   Tue, 20 Aug 2019 14:34:13 +0200
Message-Id: <20190820123413.22249-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the devm variant to get the formatter reset so it is properly freed
on device removal

Fixes: 751bd5db5260 ("ASoC: meson: axg-tdm-formatter: add reset")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-tdm-formatter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/meson/axg-tdm-formatter.c b/sound/soc/meson/axg-tdm-formatter.c
index 21c735afab35..358c8c0d861c 100644
--- a/sound/soc/meson/axg-tdm-formatter.c
+++ b/sound/soc/meson/axg-tdm-formatter.c
@@ -325,7 +325,7 @@ int axg_tdm_formatter_probe(struct platform_device *pdev)
 	}
 
 	/* Formatter dedicated reset line */
-	formatter->reset = reset_control_get_optional_exclusive(dev, NULL);
+	formatter->reset = devm_reset_control_get_optional_exclusive(dev, NULL);
 	if (IS_ERR(formatter->reset)) {
 		ret = PTR_ERR(formatter->reset);
 		if (ret != -EPROBE_DEFER)
-- 
2.21.0

