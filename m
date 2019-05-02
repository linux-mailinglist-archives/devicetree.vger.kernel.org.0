Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1946B118BA
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 14:12:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726363AbfEBMK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 08:10:56 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40597 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726321AbfEBMK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 08:10:56 -0400
Received: by mail-wm1-f66.google.com with SMTP id h11so2291113wmb.5
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 05:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
        b=xHqWaiJWsWUcZhoNbhOVBcJzfg9qdsYw5E2q3LjZu9iNGHbzEyPhLzBGVHZA6jT6KV
         6Rtgs1XdKNUB6RCaHd11VIf1KnAUz5OPdkXzXacvy50eQe18yccKyj01+YzaridlzwTR
         j7yeJj/hnwUDO0jx0ea4gdQcYrJ/KAoQO2Pjnva1wD9MOKFXhuutHa5Uu3hzUkodrTdz
         a9HxFjfRBg7jiXHRRJbabYEkCNeAHDm5+AsVkCyLloIF6V/QRsR00pUUqrvbtFiYGAmS
         i4i+68mRlvdS3nrxG4lfLl72/v6dL1ev8BRaeVLfeeNqIkXwtORNEzNtNF0Gh2UQobnY
         +lGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
        b=ScgZuj11DUjmzmu6wGwY+i9l7S6k8e5gKb39ypdow36B8+xNpfdqEemT+692LCHEpw
         poNMVTrC1l2nQtN0eiDBlAzTCa9rn5isKJ720JrEgb3lvIfzwsueGyAbFSFk+M6DFw7r
         lGRt8A9XkvZ7T2lp7d459Ozx38tcAlPXki8tLegVSqJ1ulrh+HX1HdX0gHRje/29qO3E
         VMViqYTVRDgZ4Cl8r/JW94tBYJ9Z9iIDvG/5q/CejBBtIdQwuR66APaev0d3z72L/GlU
         sED7TcyecbPTSxghziLtsP5iK2f2aV4pyOGajk1rwKEBw/CkGCx/SK1/J1s2dsblUg/L
         1Mog==
X-Gm-Message-State: APjAAAXXhpOP+c0nV81j8QK1deeFtpvnanzQLJiJpOeyU3fgQEfBfsgM
        aSpUAaekhdk3HwXOxRfXZsjWhA==
X-Google-Smtp-Source: APXvYqzfD7lY9qYA6s3UXeqowSYnQbSJRYuX0+C/KKMF9ab6t31N4mkff3S6Ouo/4i4XI4ETpGxpDA==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr2137167wmb.82.1556799054205;
        Thu, 02 May 2019 05:10:54 -0700 (PDT)
Received: from localhost.localdomain (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
        by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 05:10:53 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
        tiwai@suse.com, kaichieh.chuang@mediatek.com,
        shunli.wang@mediatek.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/5] ASoC: mediatek: make agent_disable, msb & hd fields optional
Date:   Thu,  2 May 2019 14:10:37 +0200
Message-Id: <20190502121041.8045-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Not every SoC have the following registers: agent_disable_reg,
msg_reg, and hd_reg. Make them optional in order to allow more
SoC to use the common DAI FE code.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index cf4978be062f..f39f5d8c4244 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -47,10 +47,13 @@ int mtk_afe_fe_startup(struct snd_pcm_substream *substream,
 
 	snd_pcm_hw_constraint_step(substream->runtime, 0,
 				   SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 16);
+
 	/* enable agent */
-	mtk_regmap_update_bits(afe->regmap, memif->data->agent_disable_reg,
-			       1 << memif->data->agent_disable_shift,
-			       0 << memif->data->agent_disable_shift);
+	if (memif->data->agent_disable_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap,
+				       memif->data->agent_disable_reg,
+				       1 << memif->data->agent_disable_shift,
+				       0 << memif->data->agent_disable_shift);
 
 	snd_soc_set_runtime_hwparams(substream, mtk_afe_hardware);
 
@@ -143,9 +146,10 @@ int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
 			 memif->phys_buf_addr + memif->buffer_size - 1);
 
 	/* set MSB to 33-bit */
-	mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
-			       1 << memif->data->msb_shift,
-			       msb_at_bit33 << memif->data->msb_shift);
+	if (memif->data->msb_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
+				       1 << memif->data->msb_shift,
+				       msb_at_bit33 << memif->data->msb_shift);
 
 	/* set channel */
 	if (memif->data->mono_shift >= 0) {
@@ -269,9 +273,10 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 		break;
 	}
 
-	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
-			       1 << memif->data->hd_shift,
-			       hd_audio << memif->data->hd_shift);
+	if (memif->data->hd_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
+				       1 << memif->data->hd_shift,
+				       hd_audio << memif->data->hd_shift);
 
 	return 0;
 }
-- 
2.20.1

