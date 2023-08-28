Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D067C78A62D
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 08:59:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjH1G7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 02:59:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbjH1G6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 02:58:37 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C92DA2
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 23:58:34 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52a4737a08fso3695539a12.3
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 23:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693205912; x=1693810712;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsZ4PYkksl2Z8LuGRY4k7e471htU4x9LtGFbo6V1i60=;
        b=TuVb55xBcsGHkiLQRQqCHC52wDMkxqyZMBEB4E/SO+/bgyNb5hP9KYyM6Tv6aLhAwT
         5sRRxDFx97PN6sJY7ydODM/gO9sEGK3hJnFLABlUfT3nZo+yM49q63w3VELDmYk8gEc7
         abbXKrh8neYynegrRvEVCXu5BeHHZQNzMfWiKdskqSFBkcWzt2xlM8FifQKGwnW54UGa
         gB6+pTSORTVzUmB+xO0d2NSx0ZiFcKVX9sYQPGP04NPKKG/QuR/Mq+TiFRw0Av/lQSmb
         ufEdfDqkbeVw/b8rPAcUpcQR0wKeajakB0H830qpL1TvYsmW1U5suG6LYAxhxJjrkh8n
         vHzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693205912; x=1693810712;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OsZ4PYkksl2Z8LuGRY4k7e471htU4x9LtGFbo6V1i60=;
        b=j5MGQFKoPRtQeEqYa7FQzE3mzQojEZkM6YdtgZ7XRhV3+BVf0rw29YviW/1Bd8wTfk
         4TT1DwbxL/gTpA8k013gMRDpTvoOCWeaf5kWv4BMlr7D0IyWrPsyNmies0/4AA1QVEMV
         1zG3kxNKkee36930GjxCqLAHrTMPBBzsRc8ndDy+ZMOaPQInJI7EQW4FkW1WBGIGS6Kf
         TvkZy5jNqWwPGSoLwSqOjLZR1Oj7Q8Tx10ln9X8u8vj0v2TEle35x093UnsOIDfFzkbn
         sCTs9tdz0vhs4Wx9KKtM4IfLndX+EFvWppm4yBOlqd2jIc0tveF0hVs18ScskwMhbk6u
         eh8g==
X-Gm-Message-State: AOJu0Yw56GINOo1BRcX8nF32ScK79RzzbG5KbGE/YGVAbq+tltILxNA6
        HtZCYiUPJDbcM1nirKCv+up0FQ==
X-Google-Smtp-Source: AGHT+IGOJdi3bdWqq58P4lkBUQArH19QV7szZwfpc+gLL4zEowMV2nVFxe15AvzDXno7DvE31yt3dg==
X-Received: by 2002:aa7:c38e:0:b0:523:3e5d:8aa2 with SMTP id k14-20020aa7c38e000000b005233e5d8aa2mr19724002edq.14.1693205912287;
        Sun, 27 Aug 2023 23:58:32 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id f2-20020a056402150200b005233609e39dsm4170009edw.30.2023.08.27.23.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Aug 2023 23:58:31 -0700 (PDT)
Message-ID: <9f499fe5-db59-f4c8-6a50-93725b7287fd@linaro.org>
Date:   Mon, 28 Aug 2023 08:58:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2] Minerva: Add Meta openBMC Minerva dts file.
Content-Language: en-US
To:     peteryin <peteryin.openbmc@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230828031714.107382-1-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828031714.107382-1-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,WEIRD_QUOTING
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 05:17, peteryin wrote:
> This is for Meta openBMC Minerva dts.
> 
> Kernel:dev-6.1

??? NAK. We do not develop there.

Also subject is totally wrong. Drop redundant pieces, drop full stop.
Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

> 
> Signed-off-by: peteryin <peteryin.openbmc@gmail.com>
> 
> ---
> v1 link : https://lore.kernel.org/all/fb09f5e6-8381-312f-2f1e-f2b471cec68a@linaro.org/
> 
> Change log:
> v1:
>     1. Create minerva dts file.
> v2:
>     1.Add facebook,minerva-bmc in aspeed.yaml
>     2.use stdout-path
>     3.Add Makefile
> ---
> 
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.


>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../boot/dts/aspeed-bmc-facebook-minerva.dts  | 329 ++++++++++++++++++
>  3 files changed, 331 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index fb4ce5df2fa0..9d1b26e7ca6b 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -79,6 +79,7 @@ properties:
>                - facebook,elbert-bmc
>                - facebook,fuji-bmc
>                - facebook,greatlakes-bmc
> +              - facebook,minerva-bmc
>                - ibm,everest-bmc
>                - ibm,rainier-bmc
>                - ibm,tacoma-bmc
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 6a897ff40ff0..e7c00905a08b 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1603,6 +1603,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-facebook-wedge400.dtb \
>  	aspeed-bmc-facebook-yamp.dtb \
>  	aspeed-bmc-facebook-yosemitev2.dtb \
> +	aspeed-bmc-facebook-minerva.dtb \

Wrong order. 'm' is not after 'y'.

...

> +	/*X0-X7*/	"","","","","","","","",
> +	/*Y0-Y7*/	"","","","","","","","",
> +	/*Z0-Z7*/	"","","","","","","","";
> +};
> +

Still redundant blank line.

Best regards,
Krzysztof

