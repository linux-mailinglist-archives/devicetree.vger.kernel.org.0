Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F9A7506794
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 11:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238961AbiDSJWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 05:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348089AbiDSJWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 05:22:31 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215E5112C
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 02:19:49 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 123-20020a1c1981000000b0038b3616a71aso1050250wmz.4
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 02:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AfuD0adMHdVdGBphmISzdkHuokPa7yMy38/SGYT3mOg=;
        b=ItWrtcCoxUOYpMXnC+OMSnDOHEWg2fruvwm9KfP91sOMKDuseMDDfBTUC0h3GVseB6
         iFJbjKWOOYqLwUo6oIEImV2ToiTAaaB1xls+faQO1R7dMgEsgM5KqfHfUNILYaaq7H1s
         g/ri7FmiNrxRVwU2V0n0NWW/q5w+i4Uvun5tdabAa4kTCDI4PRch90yE21P4RGmoT0Ki
         uLTwkVlM3+KvuWrqXMQqBIgf2pROKy4OrmCyjF+g4YaNqq+ursjTUA+S8IAolrkR0AJU
         D2CT3YBjgnwoJDQaKVRLFf1ChF35VA5Iz35V/ZQpbfVWw/NUAngBf03VTCsvYthgJ8Qb
         3SYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AfuD0adMHdVdGBphmISzdkHuokPa7yMy38/SGYT3mOg=;
        b=FygvyQadxgGiSsECu+utPU0zTKTdIHO56KUQWmeEpRnLjTxKXj0cpkPi57cnGkLlyx
         9+l5bmhzNZOOQ/+zYdQMVzop3BMv5BGBBXSJQO6WePci3om6qBYouuvv+U+OAixpdZX8
         RO8ywAoFSbowdhvYsEHLtt/R8Vb6k1uhRrSI9IHL4nisYC1JIbF4yaoX+jc/SbKYe/ZF
         xDNJmZbaFW7iX8hp5QIjR1zHCzm85kBbMDVUOhYIBSjE++cTo4jGLwHMhYWsU3QtbcG4
         xH6gD9OqvU4l+Jwnr41auWP5lWeYz7ReXFs2kj4YLLe+q0Yd4HQyPf1VgARP1NQvgbev
         mrJA==
X-Gm-Message-State: AOAM531GYtmqPTtkiWzbgn/kiJRiV3/8xJsudiTvhGLDeYp+Rmy+SUor
        B7UQJ6+qcjFKbQJghxdfSGb+6qg36HDHTA==
X-Google-Smtp-Source: ABdhPJxMtEy5OVKBvXQyiQaQLB+1ZlgvXxNp1br3PfkLvMXCyl08/iacL8tlG4PyVh53cioM9VNxhw==
X-Received: by 2002:a7b:c844:0:b0:38e:7c92:a9e3 with SMTP id c4-20020a7bc844000000b0038e7c92a9e3mr14569718wml.140.1650359987755;
        Tue, 19 Apr 2022 02:19:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id o13-20020a05600c4fcd00b00392951086efsm6400282wmq.34.2022.04.19.02.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 02:19:47 -0700 (PDT)
Message-ID: <102ad140-dc26-d266-a716-4e22003ec601@linaro.org>
Date:   Tue, 19 Apr 2022 10:19:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] ASoC: qcom: SC7280: Update machine driver startup,
 shutdown callbacks
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, quic_plai@quicinc.com,
        bgoswami@quicinc.com, perex@perex.cz, tiwai@suse.com,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
References: <1650352619-17370-1-git-send-email-quic_srivasam@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <1650352619-17370-1-git-send-email-quic_srivasam@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19/04/2022 08:16, Srinivasa Rao Mandadapu wrote:
> Update machine driver startup, shutdown callback functions to support
> codec DMA paths. Without this change, platforms with WCD codec is failing
> to register sound card.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---
>   sound/soc/qcom/sc7280.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/sound/soc/qcom/sc7280.c b/sound/soc/qcom/sc7280.c
> index 4ef4034..d64df11 100644
> --- a/sound/soc/qcom/sc7280.c
> +++ b/sound/soc/qcom/sc7280.c
> @@ -295,6 +295,10 @@ static void sc7280_snd_shutdown(struct snd_pcm_substream *substream)
>   		break;
>   	case LPASS_DP_RX:
>   		break;
> +	case LPASS_CDC_DMA_RX0 ... LPASS_CDC_DMA_RX9:
> +	case LPASS_CDC_DMA_TX0 ... LPASS_CDC_DMA_TX8:
> +	case LPASS_CDC_DMA_VA_TX0 ... LPASS_CDC_DMA_VA_TX8:
> +		break;
>   	default:
>   		dev_err(rtd->dev, "%s: invalid dai id 0x%x\n", __func__,
>   			cpu_dai->id);

Why not just make sc7280_snd_startup code like this:

static int sc7280_snd_startup(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(rtd, 0);
	int ret = 0;

	switch (cpu_dai->id) {
	case MI2S_PRIMARY:
		ret = sc7280_rt5682_init(rtd);
		break;
	default:
		break;
	}
	return ret;
}

and sc7280_snd_shutdown with something similar

--srini
> @@ -316,6 +320,10 @@ static int sc7280_snd_startup(struct snd_pcm_substream *substream)
>   		break;
>   	case LPASS_DP_RX:
>   		break;
> +	case LPASS_CDC_DMA_RX0 ... LPASS_CDC_DMA_RX9:
> +	case LPASS_CDC_DMA_TX0 ... LPASS_CDC_DMA_TX8:
> +	case LPASS_CDC_DMA_VA_TX0 ... LPASS_CDC_DMA_VA_TX8:
> +		break;
>   	default:
>   		dev_err(rtd->dev, "%s: invalid dai id 0x%x\n", __func__,
>   			cpu_dai->id);
