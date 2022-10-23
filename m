Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9160E60933C
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 15:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbiJWNIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 09:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbiJWNIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 09:08:36 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05FC47268B
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 06:08:35 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id g16so4359412qtu.2
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 06:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M2gFbSafpLVxGrnK3Tg0qfxx8Aw3Ko79Pc/9rxHqkHE=;
        b=tk+9lB/p62KsoOWZwKVgbrB9kefnRaiILS3i9PUqiUK7nbDX7D5bE9WabBDSYYUH2V
         n0vMtsySnXCyuCStJyxfLd9kPF3pO6B8oqyVknFpBUG46r/w+n+QC6xgxoZXgAJdWc9y
         mZlBTLQQhZnMQNdH4VA4qh97EOFF/QxPFxP1fu3cm9UC1DI3TAIBrshJf+bS/XqyDKHq
         hdH4myOSAMFvp0ClzUdyfebmgOyqp4JiaHqB/YLIMFwKczDyjvMtL3XuvpDUcVHACQ1f
         HQe3KPdA1hD8oGrB9YUhHBfGj51/nLXH8u9QHf27YxmbO6USXTFn26lJSvhpMB9CvBYZ
         NTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M2gFbSafpLVxGrnK3Tg0qfxx8Aw3Ko79Pc/9rxHqkHE=;
        b=W+x+OWFBKzMpQ1z9syn3Hi0KygpijicqwrRYpoL0P2Tt//TrbT8pCh1Uob8TfsI5+Y
         MkVzemB5AbRJS+ami5OSy3Q4lauuvKmCg5BUpis20r8kpXXDxjdf7Pn3KgwBzQYz+i4h
         iMnkQEVsfr9m0yGrmR3vKkyKx8A0O8DbpE+uh8n9ccXza4EpOevwT11y+43nOK7Un/gw
         VWcrZd3/GHM2AJex4K5YgN5X7XGvhgCpiUJedmsW1fMCtAhNRn37+tFrPc8OK1cZq/zQ
         GrKLWUVDKwrPVcJuC2svfw2iMDJdWF5oAy26bGAOJiobD9T50H3jkb0Do2bNlAJXxDCs
         my4g==
X-Gm-Message-State: ACrzQf2XBhMUnw4+u656pzlr2hEh5KnDFrAfw9IuDyp+drIMMzZ/zpaJ
        6ytNyyh4LBeQh9ow73MGehKRaOEf1T40/A==
X-Google-Smtp-Source: AMsMyM4yB1O6iJktvFaOE7c4rZ/hz48mOlHEfNbFjhzth0nVbpSnr07dQ43Guds7Ay2eEvGS2vvzBg==
X-Received: by 2002:a05:620a:2905:b0:6ee:cf79:bf9c with SMTP id m5-20020a05620a290500b006eecf79bf9cmr20178717qkp.28.1666530503551;
        Sun, 23 Oct 2022 06:08:23 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id j12-20020a05620a288c00b006b640efe6dasm13061603qkp.132.2022.10.23.06.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Oct 2022 06:08:22 -0700 (PDT)
Message-ID: <ef6a326b-5c61-988b-2ec2-cd8e233e5d28@linaro.org>
Date:   Sun, 23 Oct 2022 09:08:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/2] dt-bindings: ASoC: simple-card: Add
 system-clock-id property
Content-Language: en-US
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>, broonie@kernel.org,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, kuninori.morimoto.gx@renesas.com
Cc:     perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221022162742.21671-1-aidanmacdonald.0x0@gmail.com>
 <20221022162742.21671-2-aidanmacdonald.0x0@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221022162742.21671-2-aidanmacdonald.0x0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/10/2022 12:27, Aidan MacDonald wrote:
> This is a new per-DAI property used to specify the clock ID argument
> to snd_soc_dai_set_sysclk().

You did no show the use of this property and here you refer to some
specific Linux driver implementation, so in total this does no look like
 a hardware property.

You also did not explain why do you need it (the most important piece of
commit msg).

> 
> Signed-off-by: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/simple-card.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
> index ed19899bc94b..cb7774e235d0 100644
> --- a/Documentation/devicetree/bindings/sound/simple-card.yaml
> +++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
> @@ -57,6 +57,12 @@ definitions:
>        single fixed sampling rate.
>      $ref: /schemas/types.yaml#/definitions/flag
>  
> +  system-clock-id:
> +    description: |
> +      Specify the clock ID used for setting the DAI system clock.


With lack of explanation above, I would say - use common clock framework
to choose a clock...


Best regards,
Krzysztof

