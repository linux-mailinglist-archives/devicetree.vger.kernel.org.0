Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD0337F84
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 23:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728441AbfFFV1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 17:27:33 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:58908 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726531AbfFFV1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 17:27:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=CStWQ/SRpZOEF3bSNUAK4dWBALmyIGSjwUJk+gDk7u0=; b=tPGaG1aWR67s
        q6FM76qDdKDFpssWt/ro1o9jTg86kXq6T4bawpf5GZRhVsVWiCRprscW5P43gyldNgXAiCvQQYg+0
        OJRJc+jcrYFeCDIWmNJTWETYRSslUAXfTiW2YEBOTy7QgKUC26EDdc4nlKWbAhQBB2TGnYQ86ueSW
        8bd3k=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45] (helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hYzur-0007VR-Dn; Thu, 06 Jun 2019 21:27:21 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id D7CE5440046; Thu,  6 Jun 2019 22:27:20 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Marcus Cooper <codekipper@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Applied "ASoC: sun4i-i2s: Change SR and WSS computation" to the asoc tree
In-Reply-To: <20190605100801.2488-1-maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190606212720.D7CE5440046@finisterre.sirena.org.uk>
Date:   Thu,  6 Jun 2019 22:27:20 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   ASoC: sun4i-i2s: Change SR and WSS computation

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 619c15f7fac98fbeaae02d76a5529f5026a2b6d7 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Wed, 5 Jun 2019 12:08:01 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Change SR and WSS computation

The current computation for the SR (sample resolution) and the WSS (word
slot size) register parameters is based on a switch returning the matching
parameters for a given params width.

Later SoCs (A83t, H3, A64) changed that calculation, which was loosely the
same with an offset. Therefore, an offset was added to adjust those
parameters.

However, the calculation is a bit less trivial than initially thought.
Indeed, while we assumed that SR and WSS were always the same, on older
SoCs, SR will max at 24 (since those SoCs do not support 32 bits formats),
but the word size can be 32.

Newer SoCs can also support a much larger range (8 bits to 32 bits, by
increments of 4) of size than the older SoCs could.

Finally, the A64 and A83t were never adjusted to have that offset in the
first place, and were therefore broken from that point of view.

In order to fix all those issues, let's introduce two functions, get_wss
and get_sr, with their respective implementations for all the SoCs
supported so far.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Fixes: 66ecce332538 ("ASoC: sun4i-i2s: Add compatibility with A64 codec I2S")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 71 ++++++++++++++++++++++++++++---------
 1 file changed, 55 insertions(+), 16 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index d5ec1a20499d..03696f880080 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -118,6 +118,8 @@
 #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
 #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
 
+struct sun4i_i2s;
+
 /**
  * struct sun4i_i2s_quirks - Differences between SoC variants.
  *
@@ -131,7 +133,6 @@
  * @sun4i_i2s_regmap: regmap config to use.
  * @mclk_offset: Value by which mclkdiv needs to be adjusted.
  * @bclk_offset: Value by which bclkdiv needs to be adjusted.
- * @fmt_offset: Value by which wss and sr needs to be adjusted.
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
  * @field_fmt_wss: regmap field to set word select size.
  * @field_fmt_sr: regmap field to set sample resolution.
@@ -154,7 +155,6 @@ struct sun4i_i2s_quirks {
 	const struct regmap_config	*sun4i_i2s_regmap;
 	unsigned int			mclk_offset;
 	unsigned int			bclk_offset;
-	unsigned int			fmt_offset;
 
 	/* Register fields for i2s */
 	struct reg_field		field_clkdiv_mclk_en;
@@ -167,6 +167,9 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_rxchanmap;
 	struct reg_field		field_txchansel;
 	struct reg_field		field_rxchansel;
+
+	s8	(*get_sr)(const struct sun4i_i2s *, int);
+	s8	(*get_wss)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -349,6 +352,39 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 	return 0;
 }
 
+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
+{
+	if (width < 16 || width > 24)
+		return -EINVAL;
+
+	if (width % 4)
+		return -EINVAL;
+
+	return (width - 16) / 4;
+}
+
+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
+{
+	if (width < 16 || width > 32)
+		return -EINVAL;
+
+	if (width % 4)
+		return -EINVAL;
+
+	return (width - 16) / 4;
+}
+
+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
+{
+	if (width % 4)
+		return -EINVAL;
+
+	if (width < 8 || width > 32)
+		return -EINVAL;
+
+	return (width - 8) / 4 + 1;
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -400,22 +436,16 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	}
 	i2s->playback_dma_data.addr_width = width;
 
-	switch (params_width(params)) {
-	case 16:
-		sr = 0;
-		wss = 0;
-		break;
+	sr = i2s->variant->get_sr(i2s, params_width(params));
+	if (sr < 0)
+		return -EINVAL;
 
-	default:
-		dev_err(dai->dev, "Unsupported sample width: %d\n",
-			params_width(params));
+	wss = i2s->variant->get_wss(i2s, params_width(params));
+	if (wss < 0)
 		return -EINVAL;
-	}
 
-	regmap_field_write(i2s->field_fmt_wss,
-			   wss + i2s->variant->fmt_offset);
-	regmap_field_write(i2s->field_fmt_sr,
-			   sr + i2s->variant->fmt_offset);
+	regmap_field_write(i2s->field_fmt_wss, wss);
+	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
 				      params_width(params));
@@ -891,6 +921,8 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -908,6 +940,8 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -925,6 +959,8 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -933,7 +969,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
 	.mclk_offset		= 1,
 	.bclk_offset		= 2,
-	.fmt_offset		= 3,
 	.has_fmt_set_lrck_period = true,
 	.has_chcfg		= true,
 	.has_chsel_tx_chen	= true,
@@ -948,6 +983,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -965,6 +1002,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.20.1

