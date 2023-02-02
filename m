Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B67A5687887
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 10:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbjBBJPq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 04:15:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbjBBJPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 04:15:45 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099281730
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 01:15:44 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id q10so1059037wrm.4
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 01:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RC/waujmzDR6aaO1i7Us/eAJ3rIYO70QGCYk2/l27l4=;
        b=GcCHg1yC0pMmEeKvVNrj2xH0zliRUfXnUm7/tZud3ZC30eDF3n8BSFtKoP5KuS1Qg5
         ZLxdgocNnGLz+3UviJzDAqpIEWObD4Ku1HUxIE/uv+FxJzBHT343NpCygZFVyvmxHT1c
         M7IBtmc36Coou7oAFCVrq4FobzyVbZvpegt3PLLqal1YxLXGYfI8r3CaE6D0qBm+DbHE
         /zR+C4QGww9Fg9GKAH9vTQDLz6RCW1xVawbLvPd9K+nYkkJUyd29ESha8aa5jOMr1PHJ
         73Vs9t3WpywdW7NgaP9O5QcgZ/K2x04KZhZ3UF89rA2Pxw6bcyqupsQTn5MzSXI8fuRX
         J6dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RC/waujmzDR6aaO1i7Us/eAJ3rIYO70QGCYk2/l27l4=;
        b=8RpiVrCAXf3WEIS9n014BaFsI5AVeyKh7oZOQkKkfLPpNKQcWuAiFT0zfOpSrQzeNO
         fULwEGy3LmpRUuSmszpshlShjAlvQb53ggaDfnM/JIrAQ7O8TA7TG3l9gKi7SxF8SgyM
         03SQgELtLAoFSajvNvRlrBg0+Xms8DMcp7zKC9kv0GGclyY74Qq46otrJjqr9ZKVYzp3
         938eSYqwS74Z7UD6dhbcJBJ7QROEit7mMzeVL87iPjkSloZgu8K6Y/Wzq0vrcfsFfktg
         h5REDoiAIVSYTMPw1TlHITw5PhMLQru7ba+omwtYYKKOBLUP4D8NTwk9nginDKPDsqP/
         x/ZQ==
X-Gm-Message-State: AO0yUKUwq2PhFgIu1HMndb+jpm18HKe0BBWhhmx6//G+bs87VWI8NFfJ
        NVKQZCOdFG3lgw8bJ5j9/NXooQ==
X-Google-Smtp-Source: AK7set+HjM7/u7nGSanVRFA3UE2vWW8KqzZsfA7RaoTdtFUbko0OLTyEmitcnfANKME1fUsKzxDBCA==
X-Received: by 2002:a5d:6d4b:0:b0:2bf:f44b:7a28 with SMTP id k11-20020a5d6d4b000000b002bff44b7a28mr4861946wri.29.1675329342542;
        Thu, 02 Feb 2023 01:15:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d640e000000b002bfb5bda59asm19403954wru.25.2023.02.02.01.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 01:15:42 -0800 (PST)
Message-ID: <ac140660-0df0-8b43-3585-17511a280830@linaro.org>
Date:   Thu, 2 Feb 2023 10:15:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] Fixed the schema binding according to test
Content-Language: en-US
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230202090715.18384-1-kiseok.jo@irondevice.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202090715.18384-1-kiseok.jo@irondevice.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thank you for your patch. There is something to discuss/improve.

On 02/02/2023 10:07, Kiseok Jo wrote:
> Modified according to the writing-schema.rst file and tested.

Use imperative, not past tense (Fixed->Fix, Modified->Modify).

> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching). Therefore it should be:
"ASoC: dt-bindings: irondevice,sma1303: Rework binding and add missing
properties"



> ---
>  .../bindings/sound/irondevice,sma1303.yaml    | 46 +++++++++++++++++--
>  1 file changed, 43 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
> index 162c52606635..35d9a046ef75 100644
> --- a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
> +++ b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
> @@ -10,22 +10,62 @@ maintainers:
>    - Kiseok Jo <kiseok.jo@irondevice.com>
>  
>  description:
> -  SMA1303 digital class-D audio amplifier with an integrated boost converter.
> +  SMA1303 digital class-D audio amplifier
> +  with an integrated boost converter.
>  
>  allOf:
> -  - $ref: name-prefix.yaml#
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - irondevice,sma1303
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#sound-dai-cells':
> +    const: 1
> +
> +  i2c-retry:
> +    description: number of retries for I2C regmap.

Why do you need this? Why this fits the purpose of DT (or IOW why this
differs between boards)?

> +    maximum: 49
> +    default: 3
> +
> +  tdm-slot-rx:
> +    description: set the tdm rx start slot.

Aren't you now re-writing dai-tdm-slot-rx-mask property? Same for tx below.


> +    maximum: 7
> +    default: 0
> +
> +  tdm-slot-tx:
> +    description: set the tdm tx start slot.
> +    maximum: 7
> +    default: 0
> +
> +  sys-clk-id:
> +    description: select the using system clock.

What does it mean? Why do you need such property instead of clocks?

> +    default: 3
>  
>  required:
>    - compatible
>    - reg
> +  - '#sound-dai-cells'
>  

Best regards,
Krzysztof

