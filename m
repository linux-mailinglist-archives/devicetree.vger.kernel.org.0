Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62D3369401F
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:56:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230165AbjBMI4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:56:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230184AbjBMI4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:56:49 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 438A41420F
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:18 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m10so2402498wrn.4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrdEUdx+/z9tbHe2D2OpRSrhkTGl9pH4TQVq/tTgnWE=;
        b=rTIjWg1H5zFbgtvdH0T2+vGTVe57oj3JeHVdaj9RkTTrN9JebI+A0/X+dzvZFzYBGd
         0NAqzS1OzodJT5alSMWgMsb3vEZpaecbP+EoO2AdxkZ6rH38JyBbpQXOVfZ7I6Lpsdwk
         Cfs3ua1IVJ05eV9GPqDepWM3ViY8gdKLM7jw5sfJigMf9LAj7/SToOJF6LclGGe9gpqL
         cLGH2oLUxisXgoZJaFDlT7RlYhelzECVJrl+H81knWqTMGcLJjHHix8Wscfe/OnnTh+O
         KusUbWiOX5WPECddr03paFMj8Z9nkAQAsEp1vbidjISs9PnUnkHJZIrTCRJNxkhderfv
         ugmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrdEUdx+/z9tbHe2D2OpRSrhkTGl9pH4TQVq/tTgnWE=;
        b=omLAYBp0dGIPcaSQ+PkQ1l1LFNB4LbCFUBDM4F7OV1m09tWpI+TMFz0aRDLe1zgSx6
         VC6hUKevzOZGsSvyVKc5VWOQAl65BAwVncw8rDQw1k7cn7FDYUpjwAmwlTyj+x29Vd/1
         USL2orwMzUVVhEXJRwWLrhHR4z0QzV+5Q6YeLDsAfHOebwK3Kz1R1S8eKfWgFi+X7WRt
         CdwyNNa8J8EcbEowClThZDCRbOkylyBANYwQG6CZ7rKpzLL4TdTS/w5SWWHNtT1sS1JB
         2E729rTlMwJQIVgmu7Ti6KR9BRh/rbM4WQPvuxBXiIReut+Yn9H2XWZhFVx8dyvAeGuS
         BVjw==
X-Gm-Message-State: AO0yUKUaLiXeYeYEeghvUOV6ICaaSDiN2Hvz2XlFEDPn0mGg/q0cOioz
        b/esdLZRCpCk5SNCCUcKuUlInyssowjsZerJ
X-Google-Smtp-Source: AK7set8+8JNf13vYLQiwiPk8YK5KksQ6c5uv4QgocyHPIkDLVw/ziH4/6f71ADrW4slnuf6JG1pcBQ==
X-Received: by 2002:a5d:6149:0:b0:2c5:5bc0:e7bc with SMTP id y9-20020a5d6149000000b002c55bc0e7bcmr1203281wrt.4.1676278562948;
        Mon, 13 Feb 2023 00:56:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s7-20020a5d5107000000b002c556a4f1casm2900791wrt.42.2023.02.13.00.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:56:02 -0800 (PST)
Message-ID: <e54208c9-d834-3ed7-86e2-55b98c3208f0@linaro.org>
Date:   Mon, 13 Feb 2023 09:56:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: drop
 "dmas/dma-names" from "rcar_sound,ssi"
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87r0uu8g8x.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87r0uu8g8x.wl-kuninori.morimoto.gx@renesas.com>
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
> SSI is supporting both "PIO mode" and "DMA mode", thus "dmas/dma-names"
> are not mandatory property. Drop these from rcar_sound,ssi's required:.
> This is prepare for Gen4 support. See more details on Link

What did you change here? I still need to read 4 different
discussions/links to have understanding why?
> 
> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r

What details are here? There is a patch with gen4 but I don't understand
how does it answer anything here.

> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r

This is previous version, so it also does not bring more details.

> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r

This as well... so you say "more details under X, where X says more
details under Y, where Y links somewhere else"?

> Link: https://lore.kernel.org/all/87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com/#r
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index c3bea5b0ec40..12ccf29338d9 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -256,8 +256,6 @@ properties:
>              $ref: /schemas/types.yaml#/definitions/flag
>          required:
>            - interrupts
> -          - dmas
> -          - dma-names
>      additionalProperties: false
>  
>    # For DAI base

Best regards,
Krzysztof

