Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACC0E411578
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:25:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239349AbhITN0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239274AbhITN0f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 09:26:35 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3206EC061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:25:08 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id v5so60631756edc.2
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5Z/peYbs19scCEIFsnkY9ZT+Ng56kA6OzfkT1Vupsss=;
        b=WpaAQKMbLMi8KUDY8D4vzykEZLpjiSzI1V9dR9E4Q6JgPva+/tb9cGXkDyncA8qetG
         /mYUMpknYMbJ8/mj/wRyDOpDx8mrLsRM0WCZdxuH93MczwgYvHV4ia1HyMveZXxHRJIi
         kIdYFXJFxdF4/n/VUmFwzkYDn4UVoaal8k7kJOITgxnGYleYhutubEcBzfrP5w2kowx5
         +OW54W0unAVmY3jRlABJ/I6g/wZs4CsyniBO5CHJ5vhX+wGqR5VGF7ZeQ6o8He43bIlO
         0ncTQQaNV7PdodS5VRqXZad+9j7UZEXAptZKVWC/MIKpcITILj1hbdpoWtO1QPQvDp8O
         7gLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5Z/peYbs19scCEIFsnkY9ZT+Ng56kA6OzfkT1Vupsss=;
        b=Lj82z1cHBCYe+jis5RvxN5J3fbvVaocOtS5PWRYo1rXql+4HA6qCI12QAvSuTnYj+4
         swQtFHu0+2/5P6jU7JzDq9cgFixcUt9PvdLdj8gtqnAk1bkSjf6DjI42nZC7RHIP4mbh
         HpahfM8iuRsmd6KGBi+MmtT13xSvwiYmhFmC1uMcAdKcfAEVKYzVhBFUzv3LyVoU+6z1
         /WHR1rXZXuoByX9WHHIyuS/mnxhr6On5UCPrlBq2XxaW8Q0VHei7qIkzfwZX8Rqn/KRf
         TKBAjTsq6zQsLntAIE8D9L1v46nghjD9wqmF53PJIlNhkzaYuRJF+eAOPG4rVav0lvA3
         v4Nw==
X-Gm-Message-State: AOAM532vnCNMw1KOUqmzre0NaF4OSaEHvANgKPSnbiwQvZ5NbiL3i1I5
        X5NA22ysx8BEjGIk35vgB6gdjg==
X-Google-Smtp-Source: ABdhPJzgF59K4i1R043ONbfVpeUA1ioxtRrNGTbbHkteOOznyAHryJjFhJRy7tPrvrsZ0DhF/JIFxg==
X-Received: by 2002:a17:906:520b:: with SMTP id g11mr28539621ejm.502.1632144298580;
        Mon, 20 Sep 2021 06:24:58 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o7sm6960081edt.68.2021.09.20.06.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 06:24:58 -0700 (PDT)
Subject: Re: [PATCH 3/7] ASoC: codecs: tx-macro: Change mic control registers
 to volatile
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
References: <1632123331-2425-1-git-send-email-srivasam@codeaurora.org>
 <1632123331-2425-4-git-send-email-srivasam@codeaurora.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c1c7b1e8-98f5-99a3-1374-11d1d61535b4@linaro.org>
Date:   Mon, 20 Sep 2021 14:24:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1632123331-2425-4-git-send-email-srivasam@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/09/2021 08:35, Srinivasa Rao Mandadapu wrote:
> Update amic and dmic related tx macro control registers to volatile
> 
> Fixes: c39667ddcfc5 (ASoC: codecs: lpass-tx-macro: add support for lpass tx macro)
> 
> Signed-off-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---
>   sound/soc/codecs/lpass-tx-macro.c | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/sound/soc/codecs/lpass-tx-macro.c b/sound/soc/codecs/lpass-tx-macro.c
> index 9273724..e65b592 100644
> --- a/sound/soc/codecs/lpass-tx-macro.c
> +++ b/sound/soc/codecs/lpass-tx-macro.c
> @@ -423,6 +423,13 @@ static bool tx_is_volatile_register(struct device *dev, unsigned int reg)
>   	case CDC_TX_TOP_CSR_SWR_DMIC1_CTL:
>   	case CDC_TX_TOP_CSR_SWR_DMIC2_CTL:
>   	case CDC_TX_TOP_CSR_SWR_DMIC3_CTL:
> +	case CDC_TX_TOP_CSR_SWR_AMIC0_CTL:
> +	case CDC_TX_TOP_CSR_SWR_AMIC1_CTL:
> +	case CDC_TX_CLK_RST_CTRL_MCLK_CONTROL:
> +	case CDC_TX_CLK_RST_CTRL_FS_CNT_CONTROL:
> +	case CDC_TX_CLK_RST_CTRL_SWR_CONTROL:
> +	case CDC_TX_TOP_CSR_SWR_CTRL:
> +	case CDC_TX0_TX_PATH_SEC7:

Why are these marked as Volatile?
Can you provide some details on the issue that you are seeing?

--srini


>   		return true;
>   	}
>   	return false;
> @@ -1674,6 +1681,12 @@ static int tx_macro_component_probe(struct snd_soc_component *comp)
>   
>   	snd_soc_component_update_bits(comp, CDC_TX0_TX_PATH_SEC7, 0x3F,
>   				      0x0A);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_AMIC0_CTL, 0xFF, 0x00);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_AMIC1_CTL, 0xFF, 0x00);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_DMIC0_CTL, 0xFF, 0x00);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_DMIC1_CTL, 0xFF, 0x00);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_DMIC2_CTL, 0xFF, 0x00);
> +	snd_soc_component_update_bits(comp, CDC_TX_TOP_CSR_SWR_DMIC3_CTL, 0xFF, 0x00);
>   
>   	return 0;
>   }
> 
