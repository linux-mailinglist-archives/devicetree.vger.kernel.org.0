Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3864559893
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 13:35:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiFXLfA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 07:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiFXLfA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 07:35:00 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 237176F781
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 04:34:59 -0700 (PDT)
Received: from [10.100.135.12] (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id C10ED282E26;
        Fri, 24 Jun 2022 11:34:57 +0000 (UTC)
Message-ID: <fb1813a4-9d1f-7e91-e7e0-c8e822a3eca6@zonque.org>
Date:   Fri, 24 Jun 2022 13:34:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 8/8] ASoC: max98396: Fix TDM mode BSEL settings
Content-Language: en-US
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20220624104712.1934484-1-daniel@zonque.org>
 <20220624104712.1934484-9-daniel@zonque.org>
From:   Daniel Mack <daniel@zonque.org>
In-Reply-To: <20220624104712.1934484-9-daniel@zonque.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/24/22 12:47, Daniel Mack wrote:
> In TDM mode, the BSEL register value must be set according to table 5 in the
> datasheet. This patch adds a lookup function and uses it in
> max98396_dai_tdm_slot().
> 
> As the first 3 entries can also be used for non-TDM setups, the code now
> re-uses the same code for such scenarios.
> 
> max98396_set_clock() is folded into its only user for clarity.

Sorry, the following hunk is missing from this patch:

diff --git a/sound/soc/codecs/max98396.h b/sound/soc/codecs/max98396.h
index ff330ef61568..7278c779989a 100644
--- a/sound/soc/codecs/max98396.h
+++ b/sound/soc/codecs/max98396.h
@@ -306,8 +306,8 @@ struct max98396_priv {
        unsigned int spkfb_slot;
        unsigned int bypass_slot;
        bool interleave_mode;
-       unsigned int ch_size;
        bool tdm_mode;
+       int tdm_max_samplerate;
        int device_id;
 };
 #endif


Will include it in the next round.


Thanks,
Daniel


> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  sound/soc/codecs/max98396.c | 124 +++++++++++++++++++++++-------------
>  1 file changed, 81 insertions(+), 43 deletions(-)
> 
> diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
> index f28831f4e74b..f1657a5f2140 100644
> --- a/sound/soc/codecs/max98396.c
> +++ b/sound/soc/codecs/max98396.c
> @@ -438,47 +438,55 @@ static int max98396_dai_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
>  	return 0;
>  }
>  
> -/* BCLKs per LRCLK */
> -static const int bclk_sel_table[] = {
> -	32, 48, 64, 96, 128, 192, 256, 384, 512, 320,
> +/* Refer to table 5 in the datasheet */
> +static const struct max98396_pcm_config {
> +	int in, out, width, bsel, max_sr;
> +} max98396_pcm_configs[] = {
> +	{ .in = 2,  .out = 4,  .width = 16, .bsel = 0x2, /*  32 */ .max_sr = 192000  },
> +	{ .in = 2,  .out = 6,  .width = 24, .bsel = 0x3, /*  48 */ .max_sr = 192000  },
> +	{ .in = 2,  .out = 8,  .width = 32, .bsel = 0x4, /*  64 */ .max_sr = 192000  },
> +	{ .in = 3,  .out = 15, .width = 32, .bsel = 0xd, /* 125 */ .max_sr = 192000  },
> +	{ .in = 4,  .out = 8,  .width = 16, .bsel = 0x4, /*  64 */ .max_sr = 192000  },
> +	{ .in = 4,  .out = 12, .width = 24, .bsel = 0x5, /*  96 */ .max_sr = 192000  },
> +	{ .in = 4,  .out = 16, .width = 32, .bsel = 0x6, /* 128 */ .max_sr = 192000  },
> +	{ .in = 5,  .out = 15, .width = 24, .bsel = 0xd, /* 125 */ .max_sr = 192000  },
> +	{ .in = 7,  .out = 15, .width = 16, .bsel = 0xd, /* 125 */ .max_sr = 192000  },
> +	{ .in = 2,  .out = 4,  .width = 16, .bsel = 0x2, /*  32 */ .max_sr = 96000   },
> +	{ .in = 2,  .out = 6,  .width = 24, .bsel = 0x3, /*  48 */ .max_sr = 96000   },
> +	{ .in = 2,  .out = 8,  .width = 32, .bsel = 0x4, /*  64 */ .max_sr = 96000   },
> +	{ .in = 3,  .out = 15, .width = 32, .bsel = 0xd, /* 125 */ .max_sr = 96000   },
> +	{ .in = 4,  .out = 8,  .width = 16, .bsel = 0x4, /*  64 */ .max_sr = 96000   },
> +	{ .in = 4,  .out = 12, .width = 24, .bsel = 0x5, /*  96 */ .max_sr = 96000   },
> +	{ .in = 4,  .out = 16, .width = 32, .bsel = 0x6, /* 128 */ .max_sr = 96000   },
> +	{ .in = 5,  .out = 15, .width = 24, .bsel = 0xd, /* 125 */ .max_sr = 96000   },
> +	{ .in = 7,  .out = 15, .width = 16, .bsel = 0xd, /* 125 */ .max_sr = 96000   },
> +	{ .in = 7,  .out = 31, .width = 32, .bsel = 0xc, /* 250 */ .max_sr = 96000   },
> +	{ .in = 8,  .out = 16, .width = 16, .bsel = 0x6, /* 128 */ .max_sr = 96000   },
> +	{ .in = 8,  .out = 24, .width = 24, .bsel = 0x7, /* 192 */ .max_sr = 96000   },
> +	{ .in = 8,  .out = 32, .width = 32, .bsel = 0x8, /* 256 */ .max_sr = 96000   },
> +	{ .in = 10, .out = 31, .width = 24, .bsel = 0xc, /* 250 */ .max_sr = 96000   },
> +	{ .in = 15, .out = 31, .width = 16, .bsel = 0xc, /* 250 */ .max_sr = 96000   },
> +	{ .in = 16, .out = 32, .width = 16, .bsel = 0x8, /* 256 */ .max_sr = 96000   },
> +	{ .in = 7,  .out = 31, .width = 32, .bsel = 0xc, /* 250 */ .max_sr = 48000   },
> +	{ .in = 10, .out = 31, .width = 24, .bsel = 0xc, /* 250 */ .max_sr = 48000   },
> +	{ .in = 10, .out = 40, .width = 32, .bsel = 0xb, /* 320 */ .max_sr = 48000   },
> +	{ .in = 15, .out = 31, .width = 16, .bsel = 0xc, /* 250 */ .max_sr = 48000   },
> +	{ .in = 16, .out = 48, .width = 24, .bsel = 0x9, /* 384 */ .max_sr = 48000   },
> +	{ .in = 16, .out = 64, .width = 32, .bsel = 0xa, /* 512 */ .max_sr = 48000   },
>  };
>  
> -static int max98396_get_bclk_sel(int bclk)
> +static int max98396_pcm_config_index(int in_slots, int out_slots, int width)
>  {
>  	int i;
> -	/* match BCLKs per LRCLK */
> -	for (i = 0; i < ARRAY_SIZE(bclk_sel_table); i++) {
> -		if (bclk_sel_table[i] == bclk)
> -			return i + 2;
> -	}
> -	return 0;
> -}
>  
> -static int max98396_set_clock(struct snd_soc_component *component,
> -			      struct snd_pcm_hw_params *params)
> -{
> -	struct max98396_priv *max98396 = snd_soc_component_get_drvdata(component);
> -	/* BCLK/LRCLK ratio calculation */
> -	int blr_clk_ratio = params_channels(params) * max98396->ch_size;
> -	int value;
> -
> -	if (!max98396->tdm_mode) {
> -		/* BCLK configuration */
> -		value = max98396_get_bclk_sel(blr_clk_ratio);
> -		if (!value) {
> -			dev_err(component->dev,
> -				"blr_clk_ratio %d unsupported, format %d\n",
> -				blr_clk_ratio, params_format(params));
> -			return -EINVAL;
> -		}
> +	for (i = 0; i < ARRAY_SIZE(max98396_pcm_configs); i++) {
> +		const struct max98396_pcm_config *c = &max98396_pcm_configs[i];
>  
> -		regmap_update_bits(max98396->regmap,
> -				   MAX98396_R2042_PCM_CLK_SETUP,
> -				   MAX98396_PCM_CLK_SETUP_BSEL_MASK,
> -				   value);
> +		if (in_slots == c->in && out_slots <= c->out && width == c->width)
> +			return i;
>  	}
>  
> -	return 0;
> +	return -1;
>  }
>  
>  static int max98396_dai_hw_params(struct snd_pcm_substream *substream,
> @@ -489,8 +497,7 @@ static int max98396_dai_hw_params(struct snd_pcm_substream *substream,
>  	struct max98396_priv *max98396 = snd_soc_component_get_drvdata(component);
>  	unsigned int sampling_rate = 0;
>  	unsigned int chan_sz = 0;
> -	int ret, reg;
> -	int status;
> +	int ret, reg, status, bsel;
>  	bool update = false;
>  
>  	/* pcm mode configuration */
> @@ -510,8 +517,6 @@ static int max98396_dai_hw_params(struct snd_pcm_substream *substream,
>  		goto err;
>  	}
>  
> -	max98396->ch_size = snd_pcm_format_width(params_format(params));
> -
>  	dev_dbg(component->dev, "format supported %d",
>  		params_format(params));
>  
> @@ -559,6 +564,33 @@ static int max98396_dai_hw_params(struct snd_pcm_substream *substream,
>  		goto err;
>  	}
>  
> +	if (max98396->tdm_mode) {
> +		if (params_rate(params) > max98396->tdm_max_samplerate) {
> +			dev_err(component->dev, "TDM sample rate %d too high",
> +				params_rate(params));
> +			goto err;
> +		}
> +	} else {
> +		/* BCLK configuration */
> +		ret = max98396_pcm_config_index(params_channels(params),
> +						params_channels(params),
> +						snd_pcm_format_width(params_format(params)));
> +		if (ret < 0) {
> +			dev_err(component->dev,
> +				"no PCM config for %d channels, format %d\n",
> +				params_channels(params), params_format(params));
> +			goto err;
> +		}
> +
> +		bsel = max98396_pcm_configs[ret].bsel;
> +
> +		if (params_rate(params) > max98396_pcm_configs[ret].max_sr) {
> +			dev_err(component->dev, "sample rate %d too high",
> +				params_rate(params));
> +			goto err;
> +		}
> +	}
> +
>  	ret = regmap_read(max98396->regmap, MAX98396_R210F_GLOBAL_EN, &status);
>  	if (ret < 0)
>  		goto err;
> @@ -604,12 +636,15 @@ static int max98396_dai_hw_params(struct snd_pcm_substream *substream,
>  				   MAX98396_IVADC_SR_MASK,
>  				   sampling_rate << MAX98396_IVADC_SR_SHIFT);
>  
> -	ret = max98396_set_clock(component, params);
> +	regmap_update_bits(max98396->regmap,
> +			   MAX98396_R2042_PCM_CLK_SETUP,
> +			   MAX98396_PCM_CLK_SETUP_BSEL_MASK,
> +			   bsel);
>  
>  	if (status && update)
>  		max98396_global_enable_onoff(max98396->regmap, true);
>  
> -	return ret;
> +	return 0;
>  
>  err:
>  	return -EINVAL;
> @@ -634,13 +669,16 @@ static int max98396_dai_tdm_slot(struct snd_soc_dai *dai,
>  		max98396->tdm_mode = true;
>  
>  	/* BCLK configuration */
> -	bsel = max98396_get_bclk_sel(slots * slot_width);
> -	if (bsel == 0) {
> -		dev_err(component->dev, "BCLK %d not supported\n",
> -			slots * slot_width);
> +	ret = max98396_pcm_config_index(slots, slots, slot_width);
> +	if (ret < 0) {
> +		dev_err(component->dev, "no TDM config for %d slots %d bits\n",
> +			slots, slot_width);
>  		return -EINVAL;
>  	}
>  
> +	bsel = max98396_pcm_configs[ret].bsel;
> +	max98396->tdm_max_samplerate = max98396_pcm_configs[ret].max_sr;
> +
>  	/* Channel size configuration */
>  	switch (slot_width) {
>  	case 16:

