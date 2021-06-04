Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4167739B8A7
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 14:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230172AbhFDMFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 08:05:16 -0400
Received: from mail-ej1-f47.google.com ([209.85.218.47]:34690 "EHLO
        mail-ej1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbhFDMFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 08:05:16 -0400
Received: by mail-ej1-f47.google.com with SMTP id g8so14151641ejx.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 05:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oP96C38SDoTMjU+A2utOAj1qiHO0/0r8SsRHbo7atTg=;
        b=T4y++vOf17QU2tn7jkYxwilJWHZJuUbfb9JDkPPDX5LTGL0K+Q9oF8i367jhGuuCvS
         PFCsSWQtCyOWn/LdGXpmHc8+TEkaZjQht4r/ZCS/o0+Q1hjw1mXwYP8b1s87MO8g0ZlT
         /90ecEKWXXTQ/z1u+VjRaapvmH94URMYTmIBhwt9rPijQAbbBLenH5m19GQAWdGS4FZN
         terIxVPnvXWkkj3FKQHeMnqrIIJtIpp96wTjgaFGA+lutOGeBzIH22f5oKDNfh0aaUeO
         AzBmIzhd8PqbMqoUg++GZgghXKFQUWYO4vxpAPRzcxZ4DstEB+SGF1RICYD6m6stVhDu
         dacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oP96C38SDoTMjU+A2utOAj1qiHO0/0r8SsRHbo7atTg=;
        b=MbtiVTXxyn76pMPQOn2zgIFSN7HT8gBMR+mpSuH/2tFyzWZnnRmJXCkgG/5NTDFQKd
         iUNY98eFZ1tjR6+KMO07MGEfW2CyrzAk93lITbS/N6iKBhdqksHYr/iE+Ak6NWcXaWxM
         8hFKn4PXB317d3bfZZI8lUAsfK1Du0CC0s7RcK8FyUxWZMNYwA5jbi/cLHDwdXz7XBb4
         lkFdx1+PKLZ3pp+pBAAEMfpFjWEPpsUqJQVV4ZQafEbEH8jDeSZRSSMrYDtRZ28VKPkM
         6uIzo0avkKVqXLV0BVV9Uc45UGQiqmvjA000W0mseBQ+RJUmY2LfXJ7dTENTS0kHlOPl
         bx0A==
X-Gm-Message-State: AOAM531fZqkXs0BQRVBeaE+WtZiZkqjpq19sNc/7MTOTVFc8O+VYE72q
        PDZvWTG6fI920knof1dsTcZKeQ==
X-Google-Smtp-Source: ABdhPJxfR0xZZWORr/bcRyDdNh84a2izyVQmSbwrKppEsbmRV3ipU2JANstENVC4PiAMhgrdw8D8Cw==
X-Received: by 2002:a17:906:71d2:: with SMTP id i18mr3990765ejk.373.1622808137577;
        Fri, 04 Jun 2021 05:02:17 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id u1sm3089541edv.91.2021.06.04.05.02.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 05:02:16 -0700 (PDT)
Subject: Re: [v6] ASoC: qcom: lpass-cpu: Fix pop noise during audio capture
 begin
To:     Judy Hsiao <judyhsiao@chromium.org>, broonie@kernel.org
Cc:     Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, judyhsiao@google.com,
        tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
References: <20210604071112.1055911-1-judyhsiao@chromium.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <74ab7274-1e6d-a82e-bae9-bc887aa34baa@linaro.org>
Date:   Fri, 4 Jun 2021 13:02:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210604071112.1055911-1-judyhsiao@chromium.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/06/2021 08:11, Judy Hsiao wrote:
> +static int lpass_cpu_daiops_prepare(struct snd_pcm_substream *substream,
> +		struct snd_soc_dai *dai)
> +{
> +	struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
> +	struct lpaif_i2sctl *i2sctl = drvdata->i2sctl;
> +	unsigned int id = dai->driver->id;
> +	int ret;
> +
> +	/*
> +	 * Ensure lpass BCLK/LRCLK is enabled bit before playback/capture
> +	 * data flow starts. This allows other codec to have some delay before
> +	 * the data flow.
> +	 * (ex: to drop start up pop noise before capture starts).
> +	 */
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +		ret = regmap_fields_write(i2sctl->spken, id, LPAIF_I2SCTL_SPKEN_ENABLE);
> +	else
> +		ret = regmap_fields_write(i2sctl->micen, id, LPAIF_I2SCTL_MICEN_ENABLE);
> +
> +	if (ret) {
> +		dev_err(dai->dev, "error writing to i2sctl reg: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Check mi2s_was_prepared before enabling BCLK as lpass_cpu_daiops_prepare can
> +	 * be called multiple times. It's paired with the clk_disable in
> +	 * lpass_cpu_daiops_shutdown.
> +	 */
> +	if (!drvdata->mi2s_was_prepared[dai->driver->id]) {
> +		ret = clk_enable(drvdata->mi2s_bit_clk[id]);
> +		if (ret) {
> +			dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
> +			clk_disable(drvdata->mi2s_osr_clk[id]);

This disable is not required, as failure of prepare will result in 
calling shutdown which should take care of this. If not you will be 
disabling clk twice.

Other than that patch looks good to me!

--srini


> +			return ret;
> +		}
> +		drvdata->mi2s_was_prepared[dai->driver->id] = true;
> +	}
> +	return 0;
> +}
> +
