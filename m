Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46FAC559826
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbiFXKs2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229998AbiFXKs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:48:27 -0400
X-Greylist: delayed 60 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 24 Jun 2022 03:48:25 PDT
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 26A9322522
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:48:24 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id C070D504578;
        Fri, 24 Jun 2022 10:47:24 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 5/8] ASoC: max98396: Improve some error prints
Date:   Fri, 24 Jun 2022 12:47:09 +0200
Message-Id: <20220624104712.1934484-6-daniel@zonque.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220624104712.1934484-1-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Let's log what actually failed and log at some more places.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 sound/soc/codecs/max98396.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index 06ac637f2696..faa81b4bb709 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -372,7 +372,8 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
 		break;
 
 	default:
-		dev_err(component->dev, "DAI invert mode unsupported\n");
+		dev_err(component->dev, "DAI invert mode %d unsupported\n",
+			fmt & SND_SOC_DAIFMT_INV_MASK);
 		return -EINVAL;
 	}
 
@@ -391,6 +392,8 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
 		format |= MAX98396_PCM_FORMAT_TDM_MODE0;
 		break;
 	default:
+		dev_err(component->dev, "DAI format %d unsupported\n",
+			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
 		return -EINVAL;
 	}
 
@@ -461,8 +464,9 @@ static int max98396_set_clock(struct snd_soc_component *component,
 		/* BCLK configuration */
 		value = max98396_get_bclk_sel(blr_clk_ratio);
 		if (!value) {
-			dev_err(component->dev, "format unsupported %d\n",
-				params_format(params));
+			dev_err(component->dev,
+				"blr_clk_ratio %d unsupported, format %d\n",
+				blr_clk_ratio, params_format(params));
 			return -EINVAL;
 		}
 
@@ -647,7 +651,7 @@ static int max98396_dai_tdm_slot(struct snd_soc_dai *dai,
 		chan_sz = MAX98396_PCM_MODE_CFG_CHANSZ_32;
 		break;
 	default:
-		dev_err(component->dev, "format unsupported %d\n",
+		dev_err(component->dev, "slot width %d unsupported\n",
 			slot_width);
 		return -EINVAL;
 	}
-- 
2.36.1

