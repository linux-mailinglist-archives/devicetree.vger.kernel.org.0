Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84B5570051A
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 12:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240244AbjELKVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 06:21:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240215AbjELKVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 06:21:00 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B40BBF
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:20:59 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f315735514so315470475e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683886857; x=1686478857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qmMeNFy/OzScyK9Tv29qOoxfuqVjPFwrG7pA496DE0k=;
        b=uk5EbVaMmlY+U0os6CnnqLVu9nMU+Z51HYOAZPLDKeuddepi9lB7eRjCuTJEUWMImp
         EclEpnRQhYmglvqqcYFiwbpvAFqkQVVDKSDR8vXRtL1SdbA6vz2aLOGib370rISG69kt
         hyuAq0sj7wdFIFsq1yzjSxRcgRpYe4VBAt2q4LUVu09/hGfCqLq4eYuy0+y8Df1RXtGw
         ixhbftCYBzlaHXRoacqkg7/zf8HrKFh0GyBfrnMay6sGwkYMNWUOjB5gg8N63jaZ89Nj
         bcTwsfkUcmyrMXnTcp30KxuI42uwyevYEqH2ijLvWENsEx1THFb4lpnjQtWVS8/2NDVH
         9EUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683886857; x=1686478857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qmMeNFy/OzScyK9Tv29qOoxfuqVjPFwrG7pA496DE0k=;
        b=bzDT9s6DDDu0w9+kL/W7W/3WB5CDaihHZ8jICmTDcu8VJA2W9Fm880oKqdHVfipHPU
         oJSQT/GxHxZqliGOiMX2lj1E+GveaJcuTxMcRu0idPvcF2jk2PiokSeQendCHHnYHqus
         L7B3GdfM1Ale0ZnKP+yMYNbLPpaE2LHg7QnHNO1V79gv41KKiEGl4nTzT/2QCBvEqCs5
         Lo2+onC5Y4j7wCsY1oHh9N42O/oPPIcIHcnhl3lw5ahfONrEQ+B0MG3n0kIH5OnV/H7e
         gfS1F/j8I7hFWhWZzB19t5zHBdpJyuENMIG7UOnC9weJMi9z1S1mw2QMv5jA2+AxUN/8
         kP4A==
X-Gm-Message-State: AC+VfDz1PaDQ33vFi/pY0uL8oQJc9M1BEVVxNkXAaPASSK1o447ArtLC
        pXmzBZ+3Lf6ond/FPcZcYUSICA==
X-Google-Smtp-Source: ACHHUZ61CioInJ13uh8zVzQ1g/rGXaxoqyLQW8hflIdxNiK9Xb6RNWGD4a4b+TqhQgmzR3Zwmkb7cQ==
X-Received: by 2002:adf:e483:0:b0:2ff:801b:dec6 with SMTP id i3-20020adfe483000000b002ff801bdec6mr16150745wrm.20.1683886857529;
        Fri, 12 May 2023 03:20:57 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id f16-20020a5d6650000000b003062c0ef959sm22820361wrw.69.2023.05.12.03.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 03:20:56 -0700 (PDT)
Message-ID: <6bfda089-9463-f0d8-1ffb-ebed7b106b2a@linaro.org>
Date:   Fri, 12 May 2023 11:20:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 1/3] dt-bindings: nvmem: rmem: Add
 raspberrypi,bootloader-public-key
Content-Language: en-US
To:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230420122924.37997-1-iivanov@suse.de>
 <20230420122924.37997-2-iivanov@suse.de>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230420122924.37997-2-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/04/2023 13:29, Ivan T. Ivanov wrote:
> On RPi4 the bootloader[1] will copy the binary public key blob
> (if present) into memory location specified by this node, for
> use by the OS.
> 
> [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> 
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> ---

Applied thanks,

--srini
>   Documentation/devicetree/bindings/nvmem/rmem.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rmem.yaml b/Documentation/devicetree/bindings/nvmem/rmem.yaml
> index a4a755dcfc43..566eff3d1061 100644
> --- a/Documentation/devicetree/bindings/nvmem/rmem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rmem.yaml
> @@ -17,6 +17,7 @@ properties:
>       items:
>         - enum:
>             - raspberrypi,bootloader-config
> +          - raspberrypi,bootloader-public-key
>         - const: nvmem-rmem
>   
>     reg:
