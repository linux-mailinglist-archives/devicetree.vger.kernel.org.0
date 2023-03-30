Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAA016CFD3B
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjC3HqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:46:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjC3HqS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:46:18 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAA55B92
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:46:01 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id by8so18641399ljb.12
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680162360;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nlsAIfgz3tNTbPcSJOM8AmcV3t9QarxssZviO5N+nsQ=;
        b=S5wnc0YoQzIgL60odhcYMAoXYa14GT02S5K/7LM9L/2/R1PP2Jz6cMrr30/vxuzL7R
         54p2VL6niA3uEoI9YokXmaNKW5nAbBWdywFzb72H/JIwapN1Vn5NrNznzEfAMRw2jp9/
         lj3koyPJjzbO9r+jZxtFqLFnXOkCau91qTTN19e2Y0PjJoVcoRxLw+O7AuKfeGGRdAQW
         lzKeTCAvfFzdD+lNW923CyryT9zcWqIruAEvGHEI8gQfV8ke2z9PKn/WHLFnMP5vFXAI
         1X40cELZXZVki2KTNnaDaeXB7nGEhGz4eKZ++gAz6N9qPqRbQJwN5d13lIv9OK5JdWGj
         w9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680162360;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nlsAIfgz3tNTbPcSJOM8AmcV3t9QarxssZviO5N+nsQ=;
        b=eBqtljAXIa/aMFnaR5xuNTnLd9L80oDSYrB4virKyG2myasyWqaICEozWAIWQwJ+tK
         m4Id70s4WlRMtbtvuGB3NaKdpO/vlGeDWrqWVMkDzKzQjiLNGsJX8AwDXyO4K48ZZocY
         uPmRiYpjeOlLL9HiF04/9S/sBMHUCUaDTHjdA13bKM19CuG3ZTC7CN32sx13qzf8zHIh
         j+M8SIl9NJh130cMyXpiTbP3V7qh9WKgrpPRu1eEdrsQOGogwhJ2m1njOsN6XfxhO//n
         UktJIzPyc4DcYqwVTOvj/MQsycuFQ3Zj3/bJGdffdp3YNToldVvfd03R6TPVnDGo85XC
         vgMw==
X-Gm-Message-State: AAQBX9cQgiskJpvfYz6kMgyfPRIUjSKehApzsVoZNPOlD/PON93yTPRF
        zTslL5uR0I6PthPcZmC+CRHIPg==
X-Google-Smtp-Source: AKy350aJ8AR1pqF97tn3ofOCqbVV2j8G8SZ2N39MfQguUMvlMkfditHbHyz+GCHiVsIw9vbkPDCYjw==
X-Received: by 2002:a2e:9c01:0:b0:29b:964e:693d with SMTP id s1-20020a2e9c01000000b0029b964e693dmr7001118lji.42.1680162359814;
        Thu, 30 Mar 2023 00:45:59 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k23-20020a2e92d7000000b002a5f38ef2e1sm1787152ljh.59.2023.03.30.00.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:45:59 -0700 (PDT)
Message-ID: <70959d98-f205-4bd6-4ab4-d14f45ab0542@linaro.org>
Date:   Thu, 30 Mar 2023 09:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: ldb: Add i.MX6SX
 support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230329130413.683636-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329130413.683636-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2023 15:04, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has a single LVDS port and share a similar LDB_CTRL register
> layout with i.MX8MP and i.MX93.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/bridge/fsl,ldb.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> index 6e0e3ba9b49e..4f842bcfba1a 100644
> --- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> @@ -17,6 +17,7 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - fsl,imx6sx-ldb
>        - fsl,imx8mp-ldb
>        - fsl,imx93-ldb
>  
> @@ -60,6 +61,16 @@ required:
>    - ports
>  
>  allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-ldb
> +    then:
> +      properties:
> +        ports:
> +          properties:
> +            port@2: false

Don't duplicate entire if needlessly. It's the same as other one, so add
your compatible there.

Best regards,
Krzysztof

