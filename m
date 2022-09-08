Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B35165B2246
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 17:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbiIHPaG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 11:30:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230186AbiIHP32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 11:29:28 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15941F1F0E
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 08:28:32 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f11so14320812lfa.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 08:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4i5CLL5zXNm8xAxFuL3WcPaDXJBLZrrT7gdqgJWsssM=;
        b=zTRaEBM8h/AgHiP43wRrK2eOvAhRe/F6UVkH7Us0KM5pGBJwh6gnpMRabZsbFR1PpE
         l+2qclNxfjXdvhEoOaKViykvcrnPUncG4G2/sycriPDrfmeLDVaizgLHRxRGny2lwmr4
         1tKttNWHXT7q5d2Yfwq2a7MhRZmGgktP/YPGKBG38Ged+lIxQm82obdCnOlMF8mbR8zm
         iAz/SCLyLQBsD1kHVumD1hsB4xSdBxRPrgBEdbH1HOMLAAGzm9Pbu3+owyiszQSHPHme
         uJfepAr2Sq8RFVoSMQ3RrrxCRiZWZ/LNFSKidz2TMVXTjPf2QV7Pa1Zof9cXcMc27cAc
         HyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4i5CLL5zXNm8xAxFuL3WcPaDXJBLZrrT7gdqgJWsssM=;
        b=v6ANsjIwaOu0uWKNx31ycTfOPN0gqwu+nV2FsnkIJE03xX+OYp2pnwIy803V011lt/
         7bJB58WUFEX9+4pFy0k+iZ9gtxzlTpn7wxOV3elxf4yJCPME7j78cMxJstM/+5C8NhfG
         kD76W+sVJTQpS/L/DUgFz/KY5HYSUNuImnJnRpDuEKmAbvwZsyvfEe61CtFFIceE9T5h
         JSPDw8KVOW5YxHs5h2h7P/srjJKKvdt4XViCMxFWm1RWPsLNxAtciAumZnT5CcdK9MeP
         ocdBAMwXVLY8XG0Scgcbcqrz3/m6el6b8ksVdVHC3ageivNJ+hu7AxDquhL3wb6X2NfN
         lAiQ==
X-Gm-Message-State: ACgBeo3vUZVow9ecEkRqCpPYovjB1uHs/VOoL7EHjgwnHUkorf6+YtdZ
        HXI+5KxNzHvTyc0jNDqBUhMnLw==
X-Google-Smtp-Source: AA6agR5nuVkUg8vPgHt4g1SIgYv4bRvUoTVvbvAyY8N9q6d7yOOuKKJanXMI+72+uSgRSg908eTvBw==
X-Received: by 2002:a05:6512:a8c:b0:48b:3e1c:c3ad with SMTP id m12-20020a0565120a8c00b0048b3e1cc3admr2960257lfu.678.1662650910246;
        Thu, 08 Sep 2022 08:28:30 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b0049759682c88sm1761246lfr.190.2022.09.08.08.28.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 08:28:29 -0700 (PDT)
Message-ID: <d1b0360d-f32c-6311-5078-370c36f40ad9@linaro.org>
Date:   Thu, 8 Sep 2022 17:28:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Content-Language: en-US
To:     Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc:     alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
 <aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
 <20220908172016.6e23df8c@booty>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908172016.6e23df8c@booty>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 17:20, Luca Ceresoli wrote:
> Hello Krzysztof,
> 
> thank you for reviewing my patches.
> 
> On Thu, 8 Sep 2022 13:49:34 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
>>> From: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> [...]
> 
>>> +properties:
>>> +  compatible:
>>> +    const: rockchip,rk3308-audio-graph-card  
>>
>> Is "graph" part of device name or you just put it there because of other
>> schema?
> 
> Indeed this comes from the "audio-graph-card" compatible string.
> 
>> The compatible should reflect the device name, not some other
>> pieces in Linux or in bindings.
> 
> Would it be OK to rename it to rockchip,rk3308-audio-card (i.e. drop
> the "graph-" infix)?
> 
> Fixes for the other comments you made to this and the other patches are
> already queued for v2.

Yes, either rockchip,rk3308-audio-card or rockchip,rk3308-audio


Best regards,
Krzysztof
