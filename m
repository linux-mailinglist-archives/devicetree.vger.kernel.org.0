Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A11564CBB8C
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 11:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232415AbiCCKi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 05:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232425AbiCCKiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 05:38:55 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE3BF82D2D
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 02:38:09 -0800 (PST)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BEA513F5F7
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 10:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646303885;
        bh=xOhToe4x9f97Ns7B9xh5lureiPwRVmCdE7nXxruX5Ts=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ooKEqFUGOYfqprRWuxNZJg3ymUIdePcCluVxYca0fXK/vHIAsLYYoFlNOODAzncR+
         Hfwmr1rho+t/ji9nm2g+ig3qW6bOpT3JBbej1oLRjuNRuSKpr2RrTip7Xbts8+AAAM
         MEqPwvqFzmsETDgdaZdWMnLvVXXRiYeKkDbM5kkdCGFF5IjxG53wZEigeGfbSpt1Yu
         Agz+xFqwTdMRiT37FrHnSfklcllM4vUZdl1lcIBzzf/eu/SaHiNFDxSvWK3JBLNp9D
         phzfTFVQ8hZ2MCOzZaZDV9M4XqEU7m0dZZXkzit+R4EDo3T6ZOkcUhIxTpYJ6Eq78h
         TXXmCB1VqhPqQ==
Received: by mail-wm1-f70.google.com with SMTP id p35-20020a05600c1da300b0038151176781so1505739wms.7
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 02:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xOhToe4x9f97Ns7B9xh5lureiPwRVmCdE7nXxruX5Ts=;
        b=w/XZPbkVl4wWDzepgAQHeQvmpd4Dy4WRsS3L3LAD6n6W00b4ARYEjbFD0MN8VhJCMU
         bZJBS8F1dOyXpYt7uVG++wN9CMW0uH9dsUGdcy4qaH2r+vZruQ17sqUY17hBvs418Une
         jT38qHyPTOvl+SHpHk9dyx/S6ikKK/KT+5zb3z/qNEq3DyXvwBb7X9ZM24XFejiMkqZG
         m+pBsUmNcf/cv0pmFS6C6DLzEoh/ruwkNIQJ+nhQTxYoxP43Sm0iEKReQjAvghCwp1/R
         XY6NgChR6ff7K1c6J+u+H4pWZ0q+/kRxF1mznd8T9QX8/d49JJ4bH3wSeZRQkAPiexYt
         8G8w==
X-Gm-Message-State: AOAM530bqFZRWKsTC2oD5Y1q3wAjTTc+9v12iTqv6fGVAT1TL7/7kiqZ
        2ndldjFciKKABli4LKMuGQIz5xDANgUmvWDAvFH+MZS/LGryaJEpa+3+B+LaeI8iKDtPaTXPzMB
        RgRHwsuYZ6kjNFzAp4Ie06FtMN3g2j63/hCWO7ug=
X-Received: by 2002:a17:906:e04:b0:6ce:e210:4fe1 with SMTP id l4-20020a1709060e0400b006cee2104fe1mr27319525eji.402.1646303874422;
        Thu, 03 Mar 2022 02:37:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyDYZj81Rphl4dYoYk1zvBPAtcEQQ07HvJC+n5Qx67PuSrOxEweiOj+yiH/LR8TWEP9H/K4/Q==
X-Received: by 2002:a17:906:e04:b0:6ce:e210:4fe1 with SMTP id l4-20020a1709060e0400b006cee2104fe1mr27319499eji.402.1646303874194;
        Thu, 03 Mar 2022 02:37:54 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id d23-20020a1709067a1700b006d0ebe4af89sm558554ejo.20.2022.03.03.02.37.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 02:37:53 -0800 (PST)
Message-ID: <cb77935e-64e0-c8b6-9fba-9835a3be432f@canonical.com>
Date:   Thu, 3 Mar 2022 11:37:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 02/11] dt-bindings: i2c: npcm: support NPCM845
Content-Language: en-US
To:     Tyrone Ting <warp5tw@gmail.com>, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        yangyicong@hisilicon.com, semen.protsenko@linaro.org,
        wsa@kernel.org, jie.deng@intel.com, sven@svenpeter.dev,
        bence98@sch.bme.hu, lukas.bulwahn@gmail.com, arnd@arndb.de,
        olof@lixom.net, andriy.shevchenko@linux.intel.com,
        tali.perry@nuvoton.com, Avi.Fishman@nuvoton.com,
        tomer.maimon@nuvoton.com, KWLIU@nuvoton.com, JJLIU0@nuvoton.com,
        kfting@nuvoton.com
Cc:     openbmc@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220303083141.8742-1-warp5tw@gmail.com>
 <20220303083141.8742-3-warp5tw@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303083141.8742-3-warp5tw@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 09:31, Tyrone Ting wrote:
> From: Tyrone Ting <kfting@nuvoton.com>
> 
> Add compatible and nuvoton,sys-mgr description for NPCM i2c module.
> 
> Signed-off-by: Tyrone Ting <kfting@nuvoton.com>
> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> ---
>  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 26 +++++++++++++++----
>  1 file changed, 21 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> index 128444942aec..37976ddcf406 100644
> --- a/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> @@ -7,17 +7,18 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: nuvoton NPCM7XX I2C Controller Device Tree Bindings
>  
>  description: |
> -  The NPCM750x includes sixteen I2C bus controllers. All Controllers support
> -  both master and slave mode. Each controller can switch between master and slave
> -  at run time (i.e. IPMB mode). Each controller has two 16 byte HW FIFO for TX and
> -  RX.
> +  I2C bus controllers of the NPCM series support both master and
> +  slave mode. Each controller can switch between master and slave at run time
> +  (i.e. IPMB mode). HW FIFO for TX and RX are supported.
>  
>  maintainers:
>    - Tali Perry <tali.perry1@gmail.com>
>  
>  properties:
>    compatible:
> -    const: nuvoton,npcm750-i2c
> +    enum:
> +      - nuvoton,npcm750-i2c
> +      - nuvoton,npcm845-i2c
>  
>    reg:
>      maxItems: 1
> @@ -36,6 +37,10 @@ properties:
>      default: 100000
>      enum: [100000, 400000, 1000000]
>  
> +  nuvoton,sys-mgr:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: The phandle of system manager register node.
> +
>  required:
>    - compatible
>    - reg
> @@ -44,6 +49,16 @@ required:
>  
>  allOf:
>    - $ref: /schemas/i2c/i2c-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const:
> +              - nuvoton,npcm845-i2c

This should be one line in const (not an enum).

Rest looks good to me.

Best regards,
Krzysztof
