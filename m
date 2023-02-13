Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43B2269402B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230270AbjBMI6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:58:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbjBMI6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:58:31 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E6614E91
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:58:18 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so8409208wms.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UsMwUA5XnKRQLMk0OCpshW2axzHGnZMVnVl7BchYx+I=;
        b=rKsAboXejWjEwvLVTuROuJ1PXH8eWDvQI/SBGvODuYbaMGTCWPhIfOP7q+1q2RInDC
         bgDf5sIUhSWSQgyyArNmGATzdPJ+yRL2lDMYEIPA0Id0csb8D/qrpbnwyhZWuG1juS3e
         UXcwEI9nu0b6Rti7hDiPzBvWDlKZ7yT5RdaM/FMtfaT5Yl3cyrps4yO5uhOnJH7daEGR
         2z1RrRegK0L/fhARhAUf2m40NGgnnCieWtNt+N6c40WNocDRiUSFwKKWWpT5MlXrFgcC
         RtZ33nPlzsKDU4rwROcayBcU0471iV0OVlH7bHikFFrQauV4y7yYcfaFHdK5KCX7RPdZ
         UGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UsMwUA5XnKRQLMk0OCpshW2axzHGnZMVnVl7BchYx+I=;
        b=pf+KyETnmSPGtfzJETu0BQRVyhFr4P4tVOe0UKA1lQQlC/zoaN5ihqSVUk7fFhGKKM
         elyBgTladd2qMq1qlqGnkwMMdN84Ml/WlrIfaNLLBM3BLPFkaCzxor+ZPKtc/yOpfdS2
         WgzaVj8kJo4PbFiMmFUeOdvKAznFKwLfuxm5mVcsVBl3y1r7gE32u1kyGtFU4ebXQEXD
         TQ0Kjgo6mubBtEi6I9xYzmPlZsAXrLYQC4Etb4oDGaAVTSX91zPAQPFSOJ+ohJlXEtWP
         +5P8r4YPwpjDJsVa1W+h+t0mugQgTqtOgxVq1CaaCXOuJYnFlMwRhE+iv2862/KMxPqR
         gHNg==
X-Gm-Message-State: AO0yUKUFaACGqlQgYHAgAmJ38yWFH8xTVJpa8cM458jNCCpxr3oU2yB7
        V2ydOjYh33vCSdKrPCkBEWkkKg==
X-Google-Smtp-Source: AK7set/FI/5JSteMKqsnuPT09pARg+WQkrmY2yiKuwHszfD+KKjmZt8RyYaTLyMVaWuU8LRhSpg6SA==
X-Received: by 2002:a05:600c:4a8a:b0:3dc:40a0:3853 with SMTP id b10-20020a05600c4a8a00b003dc40a03853mr3893945wmp.11.1676278697443;
        Mon, 13 Feb 2023 00:58:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f5-20020adff445000000b002c53f5b13f9sm9646221wrp.0.2023.02.13.00.58.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:58:17 -0800 (PST)
Message-ID: <9aa09940-91cf-32ba-34f4-a57c9e9965bc@linaro.org>
Date:   Mon, 13 Feb 2023 09:58:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 03:13, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> There are no compatible for "reg/reg-names" and "clock-name"
> between previous R-Car series and R-Car Gen4.
> 
> "reg/reg-names" needs 3 categorize (for Gen1, for Gen2/Gen3, for Gen4),
> therefore, use 3 if-then to avoid nested if-then-else.
> 
> Move "clock-name" detail properties to under allOf to use if-then-else
> for Gen4 or others.
> 
> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com/#r
> Reported-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 76 ++++++++++++++++---
>  1 file changed, 64 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 12ccf29338d9..55e5213b90a1 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -101,17 +101,7 @@ properties:
>  
>    clock-names:
>      description: List of necessary clock names.
> -    minItems: 1
> -    maxItems: 31

Not much of an improvement here. We asked to keep the constraints here.
I gave you the reference how it should look like. Why did you decide to
do it differently than what I linked?

Best regards,
Krzysztof

