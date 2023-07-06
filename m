Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC6274960B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 09:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230115AbjGFHJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 03:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233740AbjGFHJP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 03:09:15 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 387C31BD9
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 00:09:14 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b6fbf0c0e2so4289281fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 00:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688627352; x=1691219352;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=plmZ0h8i9sq4RHWU4DDCLjYO4HpotTDagLCFOMDhSlY=;
        b=xIwiu9Y6vbnS82nhfebFqnQdHjPSKebEsBwnSxUMm8JSAlTWAmIDYrEWOS4xAXETiq
         CMdRmqIz4OLiv4jNcTZw5JVgjC3Z6/ZxOZez6DTQioXnT4GNfRjVHI+dR+UvoU0msYVl
         nUOsbabplWcjcarlchb96kV8mVpAeH8aPr5zf2UStLpILjApZd5ja8PNdbDC6H3TDak6
         nbrpTxpywB2jiqZZIvb309RDW+2sxuE850yGXtilfurszckER6Z3aBZkWM0TYc/lbZX/
         elkmAYi9vB8frufrILukrR/SNpDXADzidXh+Gdi5q9Jn5QTpuuB/OGjQfWltff2awozg
         Pe8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688627352; x=1691219352;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=plmZ0h8i9sq4RHWU4DDCLjYO4HpotTDagLCFOMDhSlY=;
        b=iZkgH/6Q/PLABu66JxG0cMVbEInSIhO/iOn39aAjUzDcgbC7MaJbF5aF976l7IFHBT
         vzgC9wCP64YnGKFsshfRYetQjPoc02UWI6CwSLLLDFI+RtF0lNLSEn/0TqKjcE8yNZGU
         6Q7ZSo8YP65GUiAiE8eyS6PkjcU9wJ5FX60sm99vW9luHRx2ykTx4LlI6vedE2RjBXio
         4vZ2fNCtyMWAwEhZ3OT6xxqZD2EJqJ4JfYdH2SaBltrMBbsLlKWqgDXhpZSplnVEHk0h
         8OIQZCG+HlPMN/JhtSc3aJchFcQp+fqmhwJjJomn54E7zeWE7nafJ7Cyv34erB2/CmlT
         be4w==
X-Gm-Message-State: ABy/qLYfmUY0fbI+amBdnhG9dLUDi8HyJ3S3n3+yQ08I/aPSdpZR1nFk
        tEd2Na6yOh9FTlSn7lJ9u3htww==
X-Google-Smtp-Source: APBJJlGQIR7wFWC4Jxx97JnuXfSxfTwE5u86C3BNsee1uxgxFPIMdNLES68r80nFrhLiA2eZWixj4g==
X-Received: by 2002:a2e:7802:0:b0:2b6:c236:b040 with SMTP id t2-20020a2e7802000000b002b6c236b040mr683275ljc.12.1688627352432;
        Thu, 06 Jul 2023 00:09:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:15d1:2748:ead4:bdff? ([2a01:e0a:982:cbb0:15d1:2748:ead4:bdff])
        by smtp.gmail.com with ESMTPSA id c3-20020a5d4143000000b003143d80d11dsm1006985wrq.112.2023.07.06.00.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 00:09:11 -0700 (PDT)
Message-ID: <62de5067-f651-67d8-3779-46b1fe0bdd08@linaro.org>
Date:   Thu, 6 Jul 2023 09:09:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 4/7] tty: serial: meson: introduce separate uart_data
 for S4 SoC family
Content-Language: en-US
To:     Dmitry Rokosov <ddrokosov@sberdevices.ru>,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        jbrunet@baylibre.com, jirislaby@kernel.org, khilman@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     kelvin.zhang@amlogic.com, xianwei.zhao@amlogic.com,
        kernel@sberdevices.ru, rockosov@gmail.com,
        linux-amlogic@lists.infradead.org, linux-serial@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230705181833.16137-1-ddrokosov@sberdevices.ru>
 <20230705181833.16137-5-ddrokosov@sberdevices.ru>
Organization: Linaro Developer Services
In-Reply-To: <20230705181833.16137-5-ddrokosov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2023 20:18, Dmitry Rokosov wrote:
> In order to use the correct devname value for the S4 SoC family, it
> is imperative that we implement separate uart_data. Unlike the legacy
> g12a architecture, the S4 architecture should employ the use of 'ttyS'
> devname.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
> ---
>   drivers/tty/serial/meson_uart.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/tty/serial/meson_uart.c b/drivers/tty/serial/meson_uart.c
> index ad0748a10db7..6a63184b8091 100644
> --- a/drivers/tty/serial/meson_uart.c
> +++ b/drivers/tty/serial/meson_uart.c
> @@ -818,6 +818,11 @@ static struct meson_uart_data meson_g12a_uart_data = {
>   	.has_xtal_div2 = true,
>   };
>   
> +static struct meson_uart_data meson_s4_uart_data = {
> +	.uart_driver = &MESON_UART_DRIVER(ttyS),
> +	.has_xtal_div2 = true,
> +};
> +
>   static const struct of_device_id meson_uart_dt_match[] = {
>   	{ .compatible = "amlogic,meson6-uart" },
>   	{ .compatible = "amlogic,meson8-uart" },
> @@ -829,7 +834,7 @@ static const struct of_device_id meson_uart_dt_match[] = {
>   	},
>   	{
>   		.compatible = "amlogic,meson-s4-uart",
> -		.data = (void *)&meson_g12a_uart_data,
> +		.data = (void *)&meson_s4_uart_data,
>   	},
>   	{ /* sentinel */ },
>   };

With the real struct name:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
