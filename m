Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E28446BC7BA
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:51:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbjCPHv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbjCPHvz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:51:55 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D68046EA4
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:51:51 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id fd5so4019561edb.7
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953110;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SqBYAJISm+xBYuJniVgL6Vtz9zjcIWWDyN48wAu/KDU=;
        b=lnTewBAO3G0u3bTSTT1mW63DMUn1vYj5aSnz30+U9T4zrIfTeEMf09IxtfBI9ypo3s
         99wyjSTmC4wJ/1poHQp2AJWzRuoDFe+3UifIiAYpUX92ZTEjAF254OPkiHGrGdopmy7z
         sJsmfb4PKdJV47u7x6sCoe3GfLW+GwwXmbWnoRC8EVCFL43UtJVPgmfIn8Yrgkzw6hFI
         pWfGBqdh/cWi73mwxmNx74ooh1qi1W4Ipt1yJEuESE6EikMyQGDI4QuHyKD/07O+7ohc
         BC2+aJkZ7WLlpLZmzAQDtjb/7N93GzW92VZGCtPmBw0FlQq0J1x9qyBRI+R6XmKklCX2
         7SYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953110;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqBYAJISm+xBYuJniVgL6Vtz9zjcIWWDyN48wAu/KDU=;
        b=Yru54VBH2L+Gzuc9ZkQmdXf/4KoqNRlLVJPK3SIGtdUeL6OyYdxCiJMGUzgmXJBO8r
         kJFyzKq9DbS1ArckDVFJIRcr0OUV0lN7KuojnFp8IwYglBXnuc4gbOGqVVNXLYhnyYaw
         tNSahY2LiJzXCHEjXX+wnjqr225uKyjeTlo2OurNY9v8nj+bo4L4zDwE0pPgAzBuRZsP
         a6AkPFbKC4XTAtwi/MS04rxKKrXYK1Qn8U3EXUCCUFqfQAbxQ54aH5jeQOYrVpE8cV10
         kdtEKbcrd8NxV2ULYPdBivNA4w31eZjXEjW+O8fI1sH72qhRLPlqrWa5IjNYkbGS2Cly
         XuYA==
X-Gm-Message-State: AO0yUKVIJpRg8UZ386CezF02e60cdUCp3bGoXgkxOkkyfboRoxEXGK7Z
        OAe+gF+YOFPrRKIs7YzDq7qpKA==
X-Google-Smtp-Source: AK7set/Z4ZcKVAlzgoCCzTTMAKl279txErOikpL4DryuHVlF04ywm9rUpDpTFI+1vzYR1TcBqoVxEQ==
X-Received: by 2002:a17:906:c009:b0:930:6591:15ee with SMTP id e9-20020a170906c00900b00930659115eemr1183394ejz.10.1678953110172;
        Thu, 16 Mar 2023 00:51:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id og49-20020a1709071df100b0090953b9da51sm3487249ejc.194.2023.03.16.00.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:51:49 -0700 (PDT)
Message-ID: <cbfad8ff-fe52-4e25-40d8-84ff43f5c3ad@linaro.org>
Date:   Thu, 16 Mar 2023 08:51:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 13/15] reset: Add Nuvoton ma35d1 reset driver support
Content-Language: en-US
To:     Jacky Huang <ychuang570808@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, jirislaby@kernel.org
Cc:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        schung@nuvoton.com, Jacky Huang <ychuang3@nuvoton.com>
References: <20230315072902.9298-1-ychuang570808@gmail.com>
 <20230315072902.9298-14-ychuang570808@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315072902.9298-14-ychuang570808@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 08:29, Jacky Huang wrote:
> From: Jacky Huang <ychuang3@nuvoton.com>
> 
> This driver supports individual IP reset for ma35d1. The reset
> control registers is a subset of system control registers.
> 
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
> ---
>  drivers/reset/Kconfig        |   6 ++
>  drivers/reset/Makefile       |   1 +
>  drivers/reset/reset-ma35d1.c | 152 +++++++++++++++++++++++++++++++++++
>  3 files changed, 159 insertions(+)
>  create mode 100644 drivers/reset/reset-ma35d1.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 2a52c990d4fe..47671060d259 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -143,6 +143,12 @@ config RESET_NPCM
>  	  This enables the reset controller driver for Nuvoton NPCM
>  	  BMC SoCs.
>  
> +config RESET_NUVOTON_MA35D1
> +	bool "Nuvton MA35D1 Reset Driver"
> +	default ARCH_NUVOTON

|| COMPILE_TEST


> +	help
> +	  This enables the reset controller driver for Nuvoton MA35D1 SoC.
> +


Best regards,
Krzysztof

