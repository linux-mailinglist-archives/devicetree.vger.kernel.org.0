Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9394D5E40
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 10:20:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347377AbiCKJUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:20:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243086AbiCKJUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:20:46 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64A01BD048
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:19:43 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 90C7C3F19E
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 09:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646990382;
        bh=Av5kn9IVqiEMwOUuim1I4aokjkuB5Y7LLwWdVqqCtTY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=m7CGnH6myAdKEIc3BhRHHelU+fuZ58/yNAr6gdoBuHCljYCJId8mdQYmmeZUBNmHD
         atWz6+6S8rkWTeG53sxQzMrZ7SMQzZPY4mZcEZfZTTYrkPCA8zL7GGrSdRgqAL3AOq
         Z2Q7Rk7PCei2eREuyb14tkzsoWCBNvpKwotREMn+VXjbZcq9Q5RJK+4AHYFAzRZ84d
         NCy/dVASrpkWDsEFbnKLf5540Evjtvedf1LZHRM6tD8/hI3WpB4u/s75VapHCGInD2
         vc8nmyhjOqQ9k5uG5eiGSc3ZiW+Lf6EWnBHbx57N2mgW7WQfVMPw2Rb43HR40she41
         PA5UnwPdmFMOw==
Received: by mail-ed1-f72.google.com with SMTP id cf6-20020a0564020b8600b00415e9b35c81so4510334edb.9
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:19:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Av5kn9IVqiEMwOUuim1I4aokjkuB5Y7LLwWdVqqCtTY=;
        b=M7nruP+YEmzzT10veIfyaTYF0UrjF1WDs2gNE7LB5Me25BB5CP0BYXcMlWV1DIXByR
         66gN2atYO1DKL7MIOulcomZoBD2mCZnKdgLJFvdV6FVxL8WQIY4PtqZngJT+hRrjpQqQ
         oHF63zV128hBuT6ul5gTZeeFQaLQvJVc9AxroCDG56s5dOLy3neP84NhrhL3JOsCe9Bu
         vQh4EOmeOfx5w6YanALHYiu2vQ5HMj+moPeyFDRVErNyxb4qrRq6+n02H2X/PVElCCUG
         u35gLn7/arHjnAQ+I2cONSZG2dADl1VTISKrKr4SGeKs0pB+v8z5cEBmL5ih1TcZNTDX
         jI6w==
X-Gm-Message-State: AOAM531Z6+mNJwUIrkeP24O7Mdr2zfFroYBxpBj0a94vG9yQpchQutKW
        cG+BGw+Mq1KbsbB3C7JS5oSITrzv+2llB8pejxCXrbUF8/+wpqLtHMpm9Ia0XA9iIffqqQBb3tg
        uRVib6jwcA8knf3+5zXsPfi6Gwp+7UZmTjIzVD8g=
X-Received: by 2002:a17:906:7952:b0:6da:94c9:cccb with SMTP id l18-20020a170906795200b006da94c9cccbmr7637828ejo.469.1646990382313;
        Fri, 11 Mar 2022 01:19:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyRKm1a5/uP3YrjyiVawWXoAkJeYr2NNxwI/Wq9OKmU1+1AG8kKCcxyamOntOnZjVkmmrvOxg==
X-Received: by 2002:a17:906:7952:b0:6da:94c9:cccb with SMTP id l18-20020a170906795200b006da94c9cccbmr7637825ejo.469.1646990382159;
        Fri, 11 Mar 2022 01:19:42 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id cf17-20020a170906b2d100b006daa59af421sm2741808ejb.149.2022.03.11.01.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 01:19:41 -0800 (PST)
Message-ID: <b0489963-4ddb-ec7f-ef0d-e48f99004be5@canonical.com>
Date:   Fri, 11 Mar 2022 10:19:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 0/3]sgpio:nuvoton:add support for Nuvoton NPCM SoCs
Content-Language: en-US
To:     jimliu2 <jim.t90615@gmail.com>, JJLIU0@nuvoton.com,
        KWLIU@nuvoton.com, linus.walleij@linaro.org, brgl@bgdev.pl,
        robh+dt@kernel.org, avifishman70@gmail.com, tmaimon77@gmail.com,
        tali.perry1@gmail.com, venture@google.com, yuenn@google.com,
        benjaminfair@google.com, CTCCHIEN@nuvoton.com
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220311060936.10663-1-JJLIU0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311060936.10663-1-JJLIU0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 07:09, jimliu2 wrote:
> Add sgpio feature for Nuvoton NPCM SoCs
> 

1. Explain what is SGPIO.
2. Fix all subjects to match subsystems.
3. Check git log to see what subjects are being used and how they are
formatted.

> jimliu2 (3):
>   dts: add Nuvoton sgpio feature
>   dt-bindings: support Nuvoton sgpio
>   gpio:gpio-npcm-sgpio: Add Nuvoton sgpio driver

Space missing after ':'.

> 
>  .../bindings/gpio/nuvoton,sgpio.yaml          |  78 +++
>  arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi |  30 +
>  drivers/gpio/Kconfig                          |  12 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-npcm-sgpio.c                | 634 ++++++++++++++++++
>  5 files changed, 755 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
>  create mode 100644 drivers/gpio/gpio-npcm-sgpio.c
> 


Best regards,
Krzysztof
