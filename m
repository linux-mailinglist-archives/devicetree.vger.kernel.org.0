Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D2770F860
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 16:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235482AbjEXOMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 10:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235171AbjEXOMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 10:12:45 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2172411D
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 07:12:41 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f601c57d8dso9405785e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 07:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684937560; x=1687529560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zm+/ZRBOZldlqL53b66Kc1VMqiVBWlw5REXJ3gKRg4Y=;
        b=LHhbslmTHVtT9aRVJDuMWr6LDB2MF3ACI6tD/x5vOsxgQkBYgqvwDD2fM+JU9yS1rR
         XzvkbnASGuJZNpMiKuI2/qFlqr16uMdAr8lTmipfrNJb6s/OVD8XXt9gOBHYaPg/xnR6
         B6iJpZtoz1xSwOhBJMS1ND9SZv6/Ekphr0o7uDD2vsM7YYmyvFT+Fe4QprO+akeUiG81
         5TpJskzGdjOImOoOwC/fPDAGUD5jOnCl7oGrQ95IAJMqiik4rjNWC8EVUculVpwDP3Dp
         /2dVOwmVQ6isKH5XKbxJzxmAJGeP4NF0aaOh5tW8/GzYrRbooI3r6d8C9kyvJyTeU1I0
         RUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684937560; x=1687529560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zm+/ZRBOZldlqL53b66Kc1VMqiVBWlw5REXJ3gKRg4Y=;
        b=B7YKX6JDtQWGQDLv03w6LLmsH0k4kWNJT636CNpeIC51ndnGa5QhPniyqJY4JeHJPP
         csDRKx2y8iRMDaHsSVKOOEi7TPGbgMJLqw+5eT7+Abfq04rRb9zMDph1t6mT09yRIA6Q
         LfdHYqbW91HhTfPn9xa9qy0elBX8NdcitdpYGdsXKMt//0yRJKWtNX0ScfIBdMu7llI6
         alnH9za6OQnvPmfEXgxhYE8qOQZh1C7ViYvfJ8mFg/EzDwrfPQ1Fd84jjR+zW9GbpQvh
         9d7zVcSWzD2XY2u1Z8ZCrgthXaXTrkQPtGR1eho/pI3fOVaqplZ9pj5J/baC98xqG2M4
         3+AA==
X-Gm-Message-State: AC+VfDypzJI0L3nM2zTAUCXclDu5KHebiQ4xjcMolkuz4pLMGQhAQ+Y8
        WLm3tkux8KqYkMmGaE8xS5c6Dg==
X-Google-Smtp-Source: ACHHUZ7ZiBQArVsrxbnbOPfcgyP4nY6sB/SNzM2bGxT5NtG/F1Eh5MP/d2t7lgX/aqnh4urNKvrplQ==
X-Received: by 2002:a7b:cbc9:0:b0:3f6:84:3df6 with SMTP id n9-20020a7bcbc9000000b003f600843df6mr9846304wmi.10.1684937560071;
        Wed, 24 May 2023 07:12:40 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 13-20020a05600c24cd00b003f4dde07956sm2444460wmu.42.2023.05.24.07.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 07:12:39 -0700 (PDT)
Message-ID: <cb2e035d-2630-2eca-3f15-b04e4d81c699@baylibre.com>
Date:   Wed, 24 May 2023 16:12:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 4/7] ASoC: mediatek: common: soundcard driver add
 dai_fmt support
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230523021933.3422-1-trevor.wu@mediatek.com>
 <20230523021933.3422-5-trevor.wu@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230523021933.3422-5-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2023 04:19, Trevor Wu wrote:
> There are two changes included in the patch.
> 
> First, add set_dailink_daifmt() function, so dai_fmt can be updated by
> the configuration in dai-link sub node.
> 
> Second, remove codec phandle from required property in dai-link sub node.
> For example, user possibly needs to update dai-format for all etdm
> co-clock dai-links, but codec doesn't need to be specified in capture
> dai-link for a speaker amp.
> 
> Signed-off-by: Trevor Wu <trevor.wu@mediatek.com>
> ---
>   .../mediatek/common/mtk-soundcard-driver.c    | 49 ++++++++++++++++++-
>   1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/mediatek/common/mtk-soundcard-driver.c b/sound/soc/mediatek/common/mtk-soundcard-driver.c
> index 738093451ccb..5e291092046b 100644
> --- a/sound/soc/mediatek/common/mtk-soundcard-driver.c
> +++ b/sound/soc/mediatek/common/mtk-soundcard-driver.c
> @@ -22,7 +22,7 @@ static int set_card_codec_info(struct snd_soc_card *card,
>   
>   	codec_node = of_get_child_by_name(sub_node, "codec");
>   	if (!codec_node)
> -		return -EINVAL;

IMO, the debug or info print should be welcome here because the behavior
change: dai link info parse will not stop if the codec node is NULL.
That could help to understand what is happening during init.



Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

