Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45D2868EB92
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 10:36:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbjBHJg0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 04:36:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbjBHJgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 04:36:21 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 796CC1BF1
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 01:35:59 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id g6so8113505wrv.1
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 01:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=56TSGq+X87mNDNXqmnjj/4Z47dy4y/8FefoCGUW8Q9o=;
        b=GUTgzO7JMUQ6phAMCR3sRa4e9wCtnjM6ZaBASFzzED7naXdihhzhM1riYVpncUARri
         QrGcXX/A5sO0D8LdqVX1Y0bVIJDqi0jaNqhd+msKqBjgOyPqgvwvg4eL8pZYBGGRbLTI
         x6K4BMys368TiAleKAyzghPk9W/Em5fjFDQ/8SVJuAWY+e5KoZSs/Nv+nTrb5F5GjIoP
         jxcq9/GrzK5Kf7t2u5zAx4tSS/abafWIhFsHNoWiv8rirudmS3P92O41R4dDPNjut5wB
         AEn8HXk4RJvCqxFdhCe4ps6ItUKGzcf/OXCuw8G6NjbvvfuF0zpFTHVIFBRUhTOdIeb/
         38Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=56TSGq+X87mNDNXqmnjj/4Z47dy4y/8FefoCGUW8Q9o=;
        b=n0SHqz6sBeTwsLEJzMepRINFz5aEyl2S6IL1fX+Hnas/+wnxkzWE9poYQKzaxkZX5O
         MQ5qCCIbZQ+EjloJ8tvCpCS79FX0MWvSNps8REX0EFcnnhCbiXLJj2BtYti9HiO7el3w
         mvOtB+D4F41VByO2t5Dmik1iLZto2x/p2ye5T7WpkSiElTdnvbUV6AGjUshDIcgabup/
         Wot4eqnmTJ5Hdzowk7u2IlfJG2zvQc1tsQ34uTxKzXM7HyES3GiU2mX20g+/bdLf+YX2
         43TuQud8WEypnsAeQDuBa+33vHJY+FomK9afEY6BLP6p1rYvPbwN/ez5IEuU6CRz6le0
         P9DQ==
X-Gm-Message-State: AO0yUKVlzhfUWZTxWL0cSmQqA/uowClHtBtgplunfz1wcP/DYtFqZCV4
        rWy1dqGZ4cKu5psfVdKUSZYcqg==
X-Google-Smtp-Source: AK7set/4Wl7jJXIAEk3PeDp2ftCZdSk8vf0EeScmFmZKpwIp0ueyRofKD9wH6KYHz6XID0qUPzdn1A==
X-Received: by 2002:a5d:4a82:0:b0:2c4:4ab:75e0 with SMTP id o2-20020a5d4a82000000b002c404ab75e0mr1119776wrq.25.1675848958047;
        Wed, 08 Feb 2023 01:35:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d3-20020a056000114300b002c3f9404c45sm2009254wrx.7.2023.02.08.01.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 01:35:57 -0800 (PST)
Message-ID: <c24f9a02-a9b6-2cca-cc50-fff2364d8e52@linaro.org>
Date:   Wed, 8 Feb 2023 10:35:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/4] ASoC: SMA1303: Modify the sysclk setting
Content-Language: en-US
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230208092420.5037-5-kiseok.jo@irondevice.com>
 <20230208092420.5037-7-kiseok.jo@irondevice.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230208092420.5037-7-kiseok.jo@irondevice.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 10:24, Kiseok Jo wrote:
> Previously, sysclk was configured using devicetree and sysclk-id.
> Change the method to obtain and use clock information using clk_get.
> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> ---
>  sound/soc/codecs/sma1303.c | 124 ++++++++++++++++++-------------------
>  sound/soc/codecs/sma1303.h |   5 --
>  2 files changed, 59 insertions(+), 70 deletions(-)
> 
> diff --git a/sound/soc/codecs/sma1303.c b/sound/soc/codecs/sma1303.c
> index 9ae4e3cba3ae..a21cde126906 100644
> --- a/sound/soc/codecs/sma1303.c
> +++ b/sound/soc/codecs/sma1303.c
> @@ -7,6 +7,7 @@
>  // Auther: Gyuhwa Park <gyuhwa.park@irondevice.com>
>  //         Kiseok Jo <kiseok.jo@irondevice.com>
>  
> +#include <linux/clk.h>
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/kernel.h>
> @@ -59,6 +60,7 @@ struct sma1303_pll_match {
>  struct sma1303_priv {
>  	enum sma1303_type devtype;
>  	struct attribute_group *attr_grp;
> +	struct clk *mclk;
>  	struct delayed_work check_fault_work;
>  	struct device *dev;
>  	struct kobject *kobj;
> @@ -936,27 +938,23 @@ static int sma1303_setup_pll(struct snd_soc_component *component,
>  	dev_dbg(component->dev, "%s : BCLK = %dHz\n",
>  		__func__, bclk);
>  
> -	if (sma1303->sys_clk_id == SMA1303_PLL_CLKIN_MCLK) {
> -		dev_dbg(component->dev, "%s : MCLK is not supported\n",
> -		__func__);
> -	} else if (sma1303->sys_clk_id == SMA1303_PLL_CLKIN_BCLK) {
> -		for (i = 0; i < sma1303->num_of_pll_matches; i++) {
> -			if (sma1303->pll_matches[i].input_clk == bclk)
> -				break;
> -		}
> -		if (i == sma1303->num_of_pll_matches) {
> -			dev_dbg(component->dev, "%s : No matching value between pll table and SCK\n",
> +	for (i = 0; i < sma1303->num_of_pll_matches; i++) {
> +		if (sma1303->pll_matches[i].input_clk == bclk)
> +			break;
> +	}
> +	if (i == sma1303->num_of_pll_matches) {
> +		dev_dbg(component->dev,
> +			"%s : No matching value between pll table and SCK\n",
>  					__func__);
> -			return -EINVAL;
> -		}
> -
> -		ret += sma1303_regmap_update_bits(sma1303,
> -				SMA1303_A2_TOP_MAN1,
> -				SMA1303_PLL_PD_MASK|SMA1303_PLL_REF_CLK_MASK,
> -				SMA1303_PLL_OPERATION|SMA1303_PLL_SCK,
> -				NULL);
> +		return -EINVAL;
>  	}
>  
> +	ret += sma1303_regmap_update_bits(sma1303,
> +			SMA1303_A2_TOP_MAN1,
> +			SMA1303_PLL_PD_MASK|SMA1303_PLL_REF_CLK_MASK,
> +			SMA1303_PLL_OPERATION|SMA1303_PLL_SCK,
> +			NULL);
> +
>  	ret += sma1303_regmap_write(sma1303,
>  			SMA1303_8B_PLL_POST_N,
>  			sma1303->pll_matches[i].post_n);
> @@ -999,13 +997,14 @@ static int sma1303_dai_hw_params_amp(struct snd_pcm_substream *substream,
>  
>  	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
>  
> -		if (sma1303->sys_clk_id == SMA1303_PLL_CLKIN_MCLK
> -			|| sma1303->sys_clk_id == SMA1303_PLL_CLKIN_BCLK) {
> -
> +		if (IS_ERR(sma1303->mclk)) {
>  			if (sma1303->last_bclk != bclk) {
>  				sma1303_setup_pll(component, bclk);
>  				sma1303->last_bclk = bclk;
>  			}
> +		} else {
> +			dev_dbg(component->dev,
> +				"%s : MCLK is not supported\n", __func__);
>  		}
>  
>  		switch (params_rate(params)) {
> @@ -1175,19 +1174,6 @@ static int sma1303_dai_set_sysclk_amp(struct snd_soc_dai *dai,
>  	struct snd_soc_component *component = dai->component;
>  	struct sma1303_priv *sma1303 = snd_soc_component_get_drvdata(component);
>  
> -	switch (clk_id) {
> -	case SMA1303_EXTERNAL_CLOCK_19_2:
> -		break;
> -	case SMA1303_EXTERNAL_CLOCK_24_576:
> -		break;
> -	case SMA1303_PLL_CLKIN_MCLK:
> -		break;
> -	case SMA1303_PLL_CLKIN_BCLK:
> -		break;
> -	default:
> -		dev_err(component->dev, "Invalid clk id: %d\n", clk_id);
> -		return -EINVAL;
> -	}
>  	sma1303->sys_clk_id = clk_id;
>  	return 0;
>  }
> @@ -1570,8 +1556,12 @@ static int sma1303_probe(struct snd_soc_component *component)
>  {
>  	struct snd_soc_dapm_context *dapm =
>  		snd_soc_component_get_dapm(component);
> +	struct sma1303_priv *sma1303 = snd_soc_component_get_drvdata(component);
>  
>  	snd_soc_dapm_sync(dapm);
> +	sma1303->mclk = devm_clk_get(sma1303->dev, "mclk");

One undocumented property is replaced with another undocumented
property. Can't you test your DTS?

Best regards,
Krzysztof

