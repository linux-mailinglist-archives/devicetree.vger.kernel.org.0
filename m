Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 040896FD802
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 09:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236122AbjEJHRm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 03:17:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236163AbjEJHRl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 03:17:41 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EFAC3ABA
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:17:37 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50bc4bc2880so10766309a12.2
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683703055; x=1686295055;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ph5I/Azzrsi4/WKGlfB9lGgtBibqTjZaRyz8p7rYK8E=;
        b=rWG08sRKhyIFoh1UKmiERXMrYpDMeP7MTtlAs5ukGEfzXzmdp2wbZD2Cpk0HMT97+C
         5IVpthTXG5tfYwkOO6FAI2sM+tOwfNgVvwOpMI2Jt3T8FJhnll7doZiLY6c7nxU97ohD
         Jelp9TLcFVxRW7OoKD7XTaxHr65AAl+5IDkpBpNf2S6++at99UBvGmUw8VAqaVF398M8
         fIVtzvxcpOcvBclZ3nUdzYLXyxR/syGOdEIJVacM2vBTaJTEGiLY2OC8jxR48o0EkDrO
         bWAyJC5FhP56gCXg4xnyEEzhk+FrP8Gj6jxdOLBchy+ZUNodzD1WqCFicIlDZzW5N0Nj
         zG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683703055; x=1686295055;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ph5I/Azzrsi4/WKGlfB9lGgtBibqTjZaRyz8p7rYK8E=;
        b=AtCyOy4Wq4feexL16IWN46u5583rarcmEvoJTQ6At0ngx55WLiDVs3mw561XzKWHdQ
         //E07Qlu2jK3kxKLMnXZGeEsz7b1qUxbxdnjkYYQ5eYzMejl53q/skWwj1qhzQymov/4
         1FB7/pmwdjTAcfx3EY0P4AS7Loq7sHxrIjg6s1SnOqL0B7ujWtNrnEhj/iWDCGBemKE5
         XMRECXKysUbCSfzRXVP6XFk08aY1O8xzW0/F2neKs8diG0YsoX42zZ/4Iwl0VrCr7hMJ
         5DMZlq9y0+BgHzbKrax6MYX3EJvltgswAg5zCxeU/mH1WiaY4rWaQGy4JERo2viGRUrM
         Sovw==
X-Gm-Message-State: AC+VfDztsfsg4blHlXQ7IKe2/Hzo2tLBXTmseqAvBKsNJlv0QwwuFaWD
        aBeksx8rB1QiJKAa+ZPLclVcaA==
X-Google-Smtp-Source: ACHHUZ6Nki7/wbGSFS7RowfpaGQBE9c7EC822/QfqITsMQ45566bwmhr0Y+B0VftKWLASL9qPV5slw==
X-Received: by 2002:a17:907:97d2:b0:968:1102:1fb7 with SMTP id js18-20020a17090797d200b0096811021fb7mr8138496ejc.6.1683703055539;
        Wed, 10 May 2023 00:17:35 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id ze12-20020a170906ef8c00b009659fa6eeddsm2299387ejb.196.2023.05.10.00.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 00:17:34 -0700 (PDT)
Message-ID: <baf338a7-1e63-4842-32a1-8f63f850bd2d@linaro.org>
Date:   Wed, 10 May 2023 09:17:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: Adjust #sound-dai-cells on TI's
 single-DAI codecs
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Andrew Davis <afd@ti.com>, Shi Fu <shifu0704@thundersoft.com>,
        Shenghao Ding <shenghao-ding@ti.com>, kevin-lu@ti.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, asahi@lists.linux.dev
References: <20230509153412.62847-1-povik+lin@cutebit.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230509153412.62847-1-povik+lin@cutebit.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 17:34, Martin Povišer wrote:
> A bunch of TI's codecs have binding schemas which force #sound-dai-cells
> to one despite those codecs only having a single DAI. Allow for bindings
> with zero DAI cells and deprecate the former non-zero value.
> 
> Signed-off-by: Martin Povišer <povik+lin@cutebit.org>
> ---
>  Documentation/devicetree/bindings/sound/tas2562.yaml | 6 ++++--
>  Documentation/devicetree/bindings/sound/tas2770.yaml | 6 ++++--
>  Documentation/devicetree/bindings/sound/tas27xx.yaml | 6 ++++--
>  3 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/tas2562.yaml b/Documentation/devicetree/bindings/sound/tas2562.yaml
> index a5bb561bfcfb..31a3024ea789 100644
> --- a/Documentation/devicetree/bindings/sound/tas2562.yaml
> +++ b/Documentation/devicetree/bindings/sound/tas2562.yaml
> @@ -55,7 +55,9 @@ properties:
>      description: TDM TX current sense time slot.
>  
>    '#sound-dai-cells':
> -    const: 1
> +    # The codec has a single DAI, the #sound-dai-cells=<1>; case is left in for backward
> +    # compatibility but is deprecated.
> +    enum: [0, 1]

Does it? I see playback and capture.

Best regards,
Krzysztof

