Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A74501C6F19
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 13:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725882AbgEFLRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 07:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725824AbgEFLRU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 07:17:20 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDC6C061A0F
        for <devicetree@vger.kernel.org>; Wed,  6 May 2020 04:17:19 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z8so1735494wrw.3
        for <devicetree@vger.kernel.org>; Wed, 06 May 2020 04:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EnOEmIUih8gb7LmUK1ndStrgU3hmgEdaWdeuLnFfXO8=;
        b=pxQUWJVBY0IbhMlOzq3v4Telk+V+9XsaPwOooBPh84gaLDousBLolWrD5ouhaEzaYA
         v9BB1n316kFsttUjM0U2OWQ4sHStyhxCuYePGKS7QPFpQ3PMlgET2mQmLxwTdHH3yRyU
         GjMfpj5Tii9F1KrhZCeiPpumXWR7EiB3bR0acSFO9bdl6idUJigqQSWZ+pk8BLlKL59y
         xbbZK9M/H7aBvwzEO9N+V60rXuYtvSpCo6zxoUGvs5C47u6JBgDtPgUye2/3xGLLdpO0
         M6DXJ9jBEwX8E13D3w9iLlKngzzi4eNhBGs2sTiC9IM3WVkyOVlsVp/pvtfsJEm48i2n
         fN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EnOEmIUih8gb7LmUK1ndStrgU3hmgEdaWdeuLnFfXO8=;
        b=hrxWeNMvibRcO3UlScSZU/wdbFjhnUeWG2e6prRQ6aQLShPVWsY9d38kZDURlPp89J
         79x2elpOnByOqtgpwrVk3J98svKbpEX85BX/MaxymAQ8FfyDzlu7ugaBoEWy7JFhejhv
         JuKCKUeDph2cPcrFKnqqhNZrjxwYCrduyjLR01/pQkD+U16tD2oFiW/+3cWxPBGDJN/0
         wjJwdhUT0gOiMWKJK8ES3d0uYNuunD6Gid82GbpRQCPnjnDQO9H6VLq2ARNQer0+o8AY
         PJ/2mmpm/EDSvPSVzwjG/YhWmHjx2QfN1nF91nmObqZgGHuoaCW9Xhhy4oAhuGqQo+2x
         bUMA==
X-Gm-Message-State: AGi0PubPvwL/4GpgkZO2dZH5hzWtfNCUEH/ERBWMyMCqSAsXSUZBRtCL
        E0gbtUlmZ0vjAPmnp9sTvtXKBg==
X-Google-Smtp-Source: APiQypKhadRYldob95zHRRMQEULEYDrSto6EdpTXRipOh+p39azKjqsEdMRg8HoA5qAV+Rl0py7F6g==
X-Received: by 2002:a5d:6691:: with SMTP id l17mr8824711wru.127.1588763838376;
        Wed, 06 May 2020 04:17:18 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id f5sm2257802wrp.70.2020.05.06.04.17.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 04:17:17 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] ASoC: qcom: lpass-cpu: Make I2S SD lines
 configurable
To:     Stephan Gerhold <stephan@gerhold.net>,
        Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Patrick Lai <plai@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        alsa-devel@alsa-project.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Kenneth Westfield <kwestfie@codeaurora.org>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20200425184657.121991-1-stephan@gerhold.net>
 <20200425184657.121991-2-stephan@gerhold.net>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c7c85cba-7179-3c12-465e-66197035c7f2@linaro.org>
Date:   Wed, 6 May 2020 12:17:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200425184657.121991-2-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Stephan for doing this,

On 25/04/2020 19:46, Stephan Gerhold wrote:
> The LPASS hardware allows configuring the MI2S SD lines to use
> when playing/recording audio. However, at the moment the lpass-cpu
> driver has SD0 hard-coded for mono/stereo (or additional fixed
> SD lines for more channels).
> 
> For weird reasons there seems to be hardware that uses one of the
> other SD lines for mono/stereo. For example, some Samsung devices
> use an external Speaker amplifier connected to Quaternary MI2S.
> For some reason, the SD line for audio playback was connected to
> SD1 rather than SD0. (I have no idea why...)
> At the moment, the lpass-cpu driver cannot be configured to work
> for the Speaker on these devices.
> 
> The q6afe driver already allows configuring the MI2S SD lines
> through the "qcom,sd-lines" device tree property, but this works
> only when routing audio through the ADSP.
> 
> This commit adds a very similar configuration for the lpass-cpu driver.
> It is now possible to add additional subnodes to the lpass device in
> the device tree, to configure the SD lines for playback and/or capture.
> E.g. for the Samsung devices mentioned above:
> 
> &lpass {
> 	dai@3 {
> 		reg = <MI2S_QUATERNARY>;
> 		qcom,playback-sd-lines = <1>;
> 	};
> };
> 
> qcom,playback/capture-sd-lines takes a list of SD lines (0-3)
> in the same format as the q6afe driver. (The difference here is that
> q6afe has separate DAIs for playback/capture, while lpass-cpu has one
> for both...)
> 
> For backwards compatibility with older device trees, the lpass-cpu driver
> defaults to LPAIF_I2SCTL_MODE_8CH if the subnode for a DAI is missing.
> This is equivalent to the previous behavior: Up to 8 channels can be
> configured, and SD0/QUAT01 will be chosen when setting up a stream
> with fewer channels.
> 
> This allows the speaker to work on Samsung MSM8916 devices
> that use an external speaker amplifier.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2:
>    - Suggest generic node name (dai@...) for subnodes in example above.
> 
> v1: https://lore.kernel.org/alsa-devel/20200406135608.126171-2-stephan@gerhold.net/
> ---
>   sound/soc/qcom/lpass-cpu.c       | 196 +++++++++++++++++++++++--------
>   sound/soc/qcom/lpass-lpaif-reg.h |  30 ++---
>   sound/soc/qcom/lpass.h           |   4 +
>   3 files changed, 166 insertions(+), 64 deletions(-)
> 
LGTM,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index dbce7e92baf3..de2b6d60ce6a 100644
> --- a/sound/soc/qcom/lpass-cpu.c
> +++ b/sound/soc/qcom/lpass-cpu.c
> @@ -19,6 +19,16 @@
>   #include "lpass-lpaif-reg.h"
>   #include "lpass.h"
>   
> +#define LPASS_CPU_MAX_MI2S_LINES	4
> +#define LPASS_CPU_I2S_SD0_MASK		BIT(0)
> +#define LPASS_CPU_I2S_SD1_MASK		BIT(1)
> +#define LPASS_CPU_I2S_SD2_MASK		BIT(2)
> +#define LPASS_CPU_I2S_SD3_MASK		BIT(3)
> +#define LPASS_CPU_I2S_SD0_1_MASK	GENMASK(1, 0)
> +#define LPASS_CPU_I2S_SD2_3_MASK	GENMASK(3, 2)
> +#define LPASS_CPU_I2S_SD0_1_2_MASK	GENMASK(2, 0)
> +#define LPASS_CPU_I2S_SD0_1_2_3_MASK	GENMASK(3, 0)
> +
>   static int lpass_cpu_daiops_set_sysclk(struct snd_soc_dai *dai, int clk_id,
>   		unsigned int freq, int dir)
>   {
> @@ -72,6 +82,7 @@ static int lpass_cpu_daiops_hw_params(struct snd_pcm_substream *substream,
>   	snd_pcm_format_t format = params_format(params);
>   	unsigned int channels = params_channels(params);
>   	unsigned int rate = params_rate(params);
> +	unsigned int mode;
>   	unsigned int regval;
>   	int bitwidth, ret;
>   
> @@ -99,60 +110,84 @@ static int lpass_cpu_daiops_hw_params(struct snd_pcm_substream *substream,
>   		return -EINVAL;
>   	}
>   
> -	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> -		switch (channels) {
> -		case 1:
> -			regval |= LPAIF_I2SCTL_SPKMODE_SD0;
> -			regval |= LPAIF_I2SCTL_SPKMONO_MONO;
> -			break;
> -		case 2:
> -			regval |= LPAIF_I2SCTL_SPKMODE_SD0;
> -			regval |= LPAIF_I2SCTL_SPKMONO_STEREO;
> -			break;
> -		case 4:
> -			regval |= LPAIF_I2SCTL_SPKMODE_QUAD01;
> -			regval |= LPAIF_I2SCTL_SPKMONO_STEREO;
> -			break;
> -		case 6:
> -			regval |= LPAIF_I2SCTL_SPKMODE_6CH;
> -			regval |= LPAIF_I2SCTL_SPKMONO_STEREO;
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +		mode = drvdata->mi2s_playback_sd_mode[dai->driver->id];
> +	else
> +		mode = drvdata->mi2s_capture_sd_mode[dai->driver->id];
> +
> +	if (!mode) {
> +		dev_err(dai->dev, "no line is assigned\n");
> +		return -EINVAL;
> +	}
> +
> +	switch (channels) {
> +	case 1:
> +	case 2:
> +		switch (mode) {
> +		case LPAIF_I2SCTL_MODE_QUAD01:
> +		case LPAIF_I2SCTL_MODE_6CH:
> +		case LPAIF_I2SCTL_MODE_8CH:
> +			mode = LPAIF_I2SCTL_MODE_SD0;
>   			break;
> -		case 8:
> -			regval |= LPAIF_I2SCTL_SPKMODE_8CH;
> -			regval |= LPAIF_I2SCTL_SPKMONO_STEREO;
> +		case LPAIF_I2SCTL_MODE_QUAD23:
> +			mode = LPAIF_I2SCTL_MODE_SD2;
>   			break;
> -		default:
> -			dev_err(dai->dev, "invalid channels given: %u\n",
> -				channels);
> +		}
> +
> +		break;
> +	case 4:
> +		if (mode < LPAIF_I2SCTL_MODE_QUAD01) {
> +			dev_err(dai->dev, "cannot configure 4 channels with mode %d\n",
> +				mode);
>   			return -EINVAL;
>   		}
> -	} else {
> -		switch (channels) {
> -		case 1:
> -			regval |= LPAIF_I2SCTL_MICMODE_SD0;
> -			regval |= LPAIF_I2SCTL_MICMONO_MONO;
> -			break;
> -		case 2:
> -			regval |= LPAIF_I2SCTL_MICMODE_SD0;
> -			regval |= LPAIF_I2SCTL_MICMONO_STEREO;
> -			break;
> -		case 4:
> -			regval |= LPAIF_I2SCTL_MICMODE_QUAD01;
> -			regval |= LPAIF_I2SCTL_MICMONO_STEREO;
> -			break;
> -		case 6:
> -			regval |= LPAIF_I2SCTL_MICMODE_6CH;
> -			regval |= LPAIF_I2SCTL_MICMONO_STEREO;
> +
> +		switch (mode) {
> +		case LPAIF_I2SCTL_MODE_6CH:
> +		case LPAIF_I2SCTL_MODE_8CH:
> +			mode = LPAIF_I2SCTL_MODE_QUAD01;
>   			break;
> -		case 8:
> -			regval |= LPAIF_I2SCTL_MICMODE_8CH;
> -			regval |= LPAIF_I2SCTL_MICMONO_STEREO;
> +		}
> +		break;
> +	case 6:
> +		if (mode < LPAIF_I2SCTL_MODE_6CH) {
> +			dev_err(dai->dev, "cannot configure 6 channels with mode %d\n",
> +				mode);
> +			return -EINVAL;
> +		}
> +
> +		switch (mode) {
> +		case LPAIF_I2SCTL_MODE_8CH:
> +			mode = LPAIF_I2SCTL_MODE_6CH;
>   			break;
> -		default:
> -			dev_err(dai->dev, "invalid channels given: %u\n",
> -				channels);
> +		}
> +		break;
> +	case 8:
> +		if (mode < LPAIF_I2SCTL_MODE_8CH) {
> +			dev_err(dai->dev, "cannot configure 8 channels with mode %d\n",
> +				mode);
>   			return -EINVAL;
>   		}
> +		break;
> +	default:
> +		dev_err(dai->dev, "invalid channels given: %u\n", channels);
> +		return -EINVAL;
> +	}
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +		regval |= LPAIF_I2SCTL_SPKMODE(mode);
> +
> +		if (channels >= 2)
> +			regval |= LPAIF_I2SCTL_SPKMONO_STEREO;
> +		else
> +			regval |= LPAIF_I2SCTL_SPKMONO_MONO;
> +	} else {
> +		regval |= LPAIF_I2SCTL_MICMODE(mode);
> +
> +		if (channels >= 2)
> +			regval |= LPAIF_I2SCTL_MICMONO_STEREO;
> +		else
> +			regval |= LPAIF_I2SCTL_MICMONO_MONO;
>   	}
>   
>   	ret = regmap_write(drvdata->lpaif_map,
> @@ -413,6 +448,73 @@ static struct regmap_config lpass_cpu_regmap_config = {
>   	.cache_type = REGCACHE_FLAT,
>   };
>   
> +static unsigned int of_lpass_cpu_parse_sd_lines(struct device *dev,
> +						struct device_node *node,
> +						const char *name)
> +{
> +	unsigned int lines[LPASS_CPU_MAX_MI2S_LINES];
> +	unsigned int sd_line_mask = 0;
> +	int num_lines, i;
> +
> +	num_lines = of_property_read_variable_u32_array(node, name, lines, 0,
> +							LPASS_CPU_MAX_MI2S_LINES);
> +	if (num_lines < 0)
> +		return LPAIF_I2SCTL_MODE_NONE;
> +
> +	for (i = 0; i < num_lines; i++)
> +		sd_line_mask |= BIT(lines[i]);
> +
> +	switch (sd_line_mask) {
> +	case LPASS_CPU_I2S_SD0_MASK:
> +		return LPAIF_I2SCTL_MODE_SD0;
> +	case LPASS_CPU_I2S_SD1_MASK:
> +		return LPAIF_I2SCTL_MODE_SD1;
> +	case LPASS_CPU_I2S_SD2_MASK:
> +		return LPAIF_I2SCTL_MODE_SD2;
> +	case LPASS_CPU_I2S_SD3_MASK:
> +		return LPAIF_I2SCTL_MODE_SD3;
> +	case LPASS_CPU_I2S_SD0_1_MASK:
> +		return LPAIF_I2SCTL_MODE_QUAD01;
> +	case LPASS_CPU_I2S_SD2_3_MASK:
> +		return LPAIF_I2SCTL_MODE_QUAD23;
> +	case LPASS_CPU_I2S_SD0_1_2_MASK:
> +		return LPAIF_I2SCTL_MODE_6CH;
> +	case LPASS_CPU_I2S_SD0_1_2_3_MASK:
> +		return LPAIF_I2SCTL_MODE_8CH;
> +	default:
> +		dev_err(dev, "Unsupported SD line mask: %#x\n", sd_line_mask);
> +		return LPAIF_I2SCTL_MODE_NONE;
> +	}
> +}
> +
> +static void of_lpass_cpu_parse_dai_data(struct device *dev,
> +					struct lpass_data *data)
> +{
> +	struct device_node *node;
> +	int ret, id;
> +
> +	/* Allow all channels by default for backwards compatibility */
> +	for (id = 0; id < data->variant->num_dai; id++) {
> +		data->mi2s_playback_sd_mode[id] = LPAIF_I2SCTL_MODE_8CH;
> +		data->mi2s_capture_sd_mode[id] = LPAIF_I2SCTL_MODE_8CH;
> +	}
> +
> +	for_each_child_of_node(dev->of_node, node) {
> +		ret = of_property_read_u32(node, "reg", &id);
> +		if (ret || id < 0 || id >= data->variant->num_dai) {
> +			dev_err(dev, "valid dai id not found: %d\n", ret);
> +			continue;
> +		}
> +
> +		data->mi2s_playback_sd_mode[id] =
> +			of_lpass_cpu_parse_sd_lines(dev, node,
> +						    "qcom,playback-sd-lines");
> +		data->mi2s_capture_sd_mode[id] =
> +			of_lpass_cpu_parse_sd_lines(dev, node,
> +						    "qcom,capture-sd-lines");
> +	}
> +}
> +
>   int asoc_qcom_lpass_cpu_platform_probe(struct platform_device *pdev)
>   {
>   	struct lpass_data *drvdata;
> @@ -442,6 +544,8 @@ int asoc_qcom_lpass_cpu_platform_probe(struct platform_device *pdev)
>   	drvdata->variant = (struct lpass_variant *)match->data;
>   	variant = drvdata->variant;
>   
> +	of_lpass_cpu_parse_dai_data(dev, drvdata);
> +
>   	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "lpass-lpaif");
>   
>   	drvdata->lpaif = devm_ioremap_resource(&pdev->dev, res);
> diff --git a/sound/soc/qcom/lpass-lpaif-reg.h b/sound/soc/qcom/lpass-lpaif-reg.h
> index 3d74ae123e9d..72a3e2f69572 100644
> --- a/sound/soc/qcom/lpass-lpaif-reg.h
> +++ b/sound/soc/qcom/lpass-lpaif-reg.h
> @@ -22,17 +22,19 @@
>   #define LPAIF_I2SCTL_SPKEN_DISABLE	(0 << LPAIF_I2SCTL_SPKEN_SHIFT)
>   #define LPAIF_I2SCTL_SPKEN_ENABLE	(1 << LPAIF_I2SCTL_SPKEN_SHIFT)
>   
> +#define LPAIF_I2SCTL_MODE_NONE		0
> +#define LPAIF_I2SCTL_MODE_SD0		1
> +#define LPAIF_I2SCTL_MODE_SD1		2
> +#define LPAIF_I2SCTL_MODE_SD2		3
> +#define LPAIF_I2SCTL_MODE_SD3		4
> +#define LPAIF_I2SCTL_MODE_QUAD01	5
> +#define LPAIF_I2SCTL_MODE_QUAD23	6
> +#define LPAIF_I2SCTL_MODE_6CH		7
> +#define LPAIF_I2SCTL_MODE_8CH		8
> +
>   #define LPAIF_I2SCTL_SPKMODE_MASK	0x3C00
>   #define LPAIF_I2SCTL_SPKMODE_SHIFT	10
> -#define LPAIF_I2SCTL_SPKMODE_NONE	(0 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_SD0	(1 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_SD1	(2 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_SD2	(3 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_SD3	(4 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_QUAD01	(5 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_QUAD23	(6 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_6CH	(7 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> -#define LPAIF_I2SCTL_SPKMODE_8CH	(8 << LPAIF_I2SCTL_SPKMODE_SHIFT)
> +#define LPAIF_I2SCTL_SPKMODE(mode)	((mode) << LPAIF_I2SCTL_SPKMODE_SHIFT)
>   
>   #define LPAIF_I2SCTL_SPKMONO_MASK	0x0200
>   #define LPAIF_I2SCTL_SPKMONO_SHIFT	9
> @@ -46,15 +48,7 @@
>   
>   #define LPAIF_I2SCTL_MICMODE_MASK	GENMASK(7, 4)
>   #define LPAIF_I2SCTL_MICMODE_SHIFT	4
> -#define LPAIF_I2SCTL_MICMODE_NONE	(0 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_SD0	(1 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_SD1	(2 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_SD2	(3 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_SD3	(4 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_QUAD01	(5 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_QUAD23	(6 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_6CH	(7 << LPAIF_I2SCTL_MICMODE_SHIFT)
> -#define LPAIF_I2SCTL_MICMODE_8CH	(8 << LPAIF_I2SCTL_MICMODE_SHIFT)
> +#define LPAIF_I2SCTL_MICMODE(mode)	((mode) << LPAIF_I2SCTL_MICMODE_SHIFT)
>   
>   #define LPAIF_I2SCTL_MIMONO_MASK	GENMASK(3, 3)
>   #define LPAIF_I2SCTL_MICMONO_SHIFT	3
> diff --git a/sound/soc/qcom/lpass.h b/sound/soc/qcom/lpass.h
> index 17113d380dcc..bd19ec57c73d 100644
> --- a/sound/soc/qcom/lpass.h
> +++ b/sound/soc/qcom/lpass.h
> @@ -29,6 +29,10 @@ struct lpass_data {
>   	/* MI2S bit clock (derived from system clock by a divider */
>   	struct clk *mi2s_bit_clk[LPASS_MAX_MI2S_PORTS];
>   
> +	/* MI2S SD lines to use for playback/capture */
> +	unsigned int mi2s_playback_sd_mode[LPASS_MAX_MI2S_PORTS];
> +	unsigned int mi2s_capture_sd_mode[LPASS_MAX_MI2S_PORTS];
> +
>   	/* low-power audio interface (LPAIF) registers */
>   	void __iomem *lpaif;
>   
> 
