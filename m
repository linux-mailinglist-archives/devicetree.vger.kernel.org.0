Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C1A353879C
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 20:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241167AbiE3S60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 14:58:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240537AbiE3S6X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 14:58:23 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EECD5562F9
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:58:21 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id n10so22514201ejk.5
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aZ4hSZLty16XZtYDyN1iI3FQFX0xiK9Qd3Z5M2gZKCw=;
        b=wM7WyZVXegXf3sHYj6hVYcw/P4aAaMlv3drBS/wJer6tcwr8R1qIAg3jY7R56/uLJg
         AkL4lRXKVL+atJXRI1RwFtm5scfXzyPz4HyY8sQsjVcPPuE+gbnmz9tbOijbaY0wsPat
         VVzNGtmHf0lgbCz1TkCONCrCNpok5C64WaRx+ieOXzsugLNAWuTh8WPpQqGOxqj3Pwc+
         lrGiLArhPWW0Lo5gt/uJUyJVtgKc7QeaFUgTRk0WMiNzSz++hob/ExUe9G6w/1OufoFX
         cgRJwS3fGl7Q3zjhcQWOWsN65HPQzv2gYTMMafViqZY+pSexHwyZce8rTbnesrdKWTm4
         olaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aZ4hSZLty16XZtYDyN1iI3FQFX0xiK9Qd3Z5M2gZKCw=;
        b=KAti/cZcSbear7kPv92TyVGfPhY6Guw8GOBQnYgfssIa3tIIm3hiVCbzBm/bDKwmgF
         63WT/FXoAuH+R5TRW7KrL4tEyMFfDAGo2aktZXyCXFUYjhy7GIwCT61lw1gjg56CVd0D
         RZrdS30dPnb1BR+djAaN3nMighWraNh3Hngn+XCdDah9uZ0juMFD6ZofWqYcGRKV6MNI
         zyE/LvGaTcl4UwwOYn0n0XfemdSub5ACyCx9x/1TzA0GpwjcGKYeBPVqb0M9rAgCdlcF
         LicHmSYPkQ+qP1nr4ibqU8mggCI/uKnMOHTl4ycfjekLPJOzqEwzOCJsjmTrng0TPv7G
         tetw==
X-Gm-Message-State: AOAM533H++W/A5rEMmu6+9y6/WF/UBoVUoK7W9NXEoCVXZxV8GVOJ5oC
        q4QTV+BnSSjX0R/hvJMf+QnWrQ==
X-Google-Smtp-Source: ABdhPJz6VqYPIb7dFTIdH5KP/w/rMk6xgXoHqfYCoOM6vHY7XEp3TXC9rduj5i3qN1TaEaiRI1+kGQ==
X-Received: by 2002:a17:906:fc20:b0:6fe:a5f6:379d with SMTP id ov32-20020a170906fc2000b006fea5f6379dmr44922645ejb.503.1653937100528;
        Mon, 30 May 2022 11:58:20 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v15-20020a17090606cf00b006feaa22e367sm4365712ejb.165.2022.05.30.11.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 11:58:20 -0700 (PDT)
Message-ID: <615ac44b-fd9b-332c-5ea0-8775cda8cb00@linaro.org>
Date:   Mon, 30 May 2022 20:58:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/3] dt-bindings: altera: Update Arria 10 boards
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org
References: <20220530130839.120710-1-pan@semihalf.com>
 <20220530130839.120710-4-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220530130839.120710-4-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Subject is too generic, please describe what are you doing. Anything
could be an "update".


On 30/05/2022 15:08, Paweł Anikiel wrote:
> The Mercury+ AA1 is not a standalone board, rather it's a module with
> an Arria 10 SoC and some peripherals on it.
> 
> The Google Chameleon v3 is a base board for the Mercury+ AA1.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 5e2017c0a051..c6e198bb5b29 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -25,7 +25,7 @@ properties:
>          items:
>            - enum:
>                - altr,socfpga-arria10-socdk
> -              - enclustra,mercury-aa1
> +              - google,chameleon-v3

As mentioned in patch 2, I would expect to have still enclustra
compatible. It's a SoM, so as usual it goes with its own binding, even
if not used standalone.

Best regards,
Krzysztof
