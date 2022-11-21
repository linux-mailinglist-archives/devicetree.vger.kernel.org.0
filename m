Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE419632253
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:36:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbiKUMgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:36:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231358AbiKUMgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:36:51 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253BC9B3B6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:36:49 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id a15so14331753ljb.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JVqUBkccUO74jpGwRk+0I2DcnpQP7VCCZIkeNtWiOpE=;
        b=Y3eucGiwI5BVrLdmmJzatUGPxjEd3oJ1t1nz+gZ4K/4gRhFqPcdaJgSvBSMGcT1oHV
         5ZBhd0iUdOussRJrrxVZ77aNXBzP8F5MbvhmCrTnucPu1+0MbfSIIZjzN93koqHiv/xE
         0E9JZQWkVjVThQpQHxltHws0FT4cNnEJssF6ojqXVdQqv71JwdcFkdi+r+s9q4/Ta2Vs
         lX3R1PtMd1uKRsbhMo8Z7gwJIy8NBrdVzAL4eKc1Y4Nukgrp0cwB0elHeXSCPGJQu7Nw
         X/oK/I94pMpEVIx0GsZmLa9scghtzDFxf72aLPAcP2NwroB+/4Q6S2c4tcCBsB/cdFDs
         9RBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JVqUBkccUO74jpGwRk+0I2DcnpQP7VCCZIkeNtWiOpE=;
        b=K5yT1/0WJ80kY/c3QeLeAwlsY8VaSKoY3lkuSGw5ZRauLe8cgS4YDYkg1TrmczBrpu
         jb5nnuDVHHjZ6n26aHi8d9sL6wCncDX/T5l2K5hbgUW90KqWunrAkFbkuYXwuzJjGHLu
         Y2e+pUS4Q0EUfA2GAv6u5nNnr0z9o9zvPUf+m1jRMQQXcjycGxCuxpqT38AlV5rp6vby
         /1nnd47BBtumAywfwGWn7PxNBlGZUwUnQcBIdPA91N0Nni/BtDj9ybjz5FqUJlcRQGt9
         34rniTFVy7UO3IWKK2+r9MDlFT3zqdmemOxTMLpwEULUUpUtZeuXP5tl1FbRDQ49VnfT
         +/mA==
X-Gm-Message-State: ANoB5pmbHhe1ZqxedgrYtPZnPMGaPt53hMbSBPNLk2BfGG1QafxOjaXr
        D3ghdCvkssQRtnDI9zs7F1hJww==
X-Google-Smtp-Source: AA0mqf73fnJYF1Gt8sIJLcnzF17Iqsr/0vCWKscbqba1N6/1xq+5yLwMROsV8eqspQPv1DmynkHwZA==
X-Received: by 2002:a2e:97d7:0:b0:278:f437:9c43 with SMTP id m23-20020a2e97d7000000b00278f4379c43mr5201339ljj.342.1669034207437;
        Mon, 21 Nov 2022 04:36:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id dt27-20020a0565122a9b00b00492e3c8a986sm2004197lfb.264.2022.11.21.04.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:36:47 -0800 (PST)
Message-ID: <48a64598-5140-1949-8e93-7257ccadaf63@linaro.org>
Date:   Mon, 21 Nov 2022 13:36:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 8/9] dt-bindings: pinctrl: mediatek,mt65xx: Drop the
 pins-are-numbered property
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-9-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121015451.2471196-9-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> Drop the pins-are-numbered property from the Mediatek MT65xx DeviceTree
> schema
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---
>  .../bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml           | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
> index cca9cc58a6934..cb450da49e6e9 100644
> --- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
> @@ -28,11 +28,6 @@ properties:
>    reg:
>      maxItems: 1
>  
> -  pins-are-numbered:
> -    $ref: /schemas/types.yaml#/definitions/flag
> -    description: |
> -      Specify the subnodes are using numbered pinmux to specify pins.

Oh, I missed that patch. There is no need to split it. Squash it with
your first and rather mark it as "deprecated: true"

Best regards,
Krzysztof

