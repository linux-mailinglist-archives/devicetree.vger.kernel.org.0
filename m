Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD9E16B06CB
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:19:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbjCHMTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:19:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjCHMTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:19:40 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C28797FF1
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:19:39 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bx12so15142356wrb.11
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678277978;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rXvALgLNXOwSxkTFpGdegQSuj49S1SEGCZhhXhGW1Qo=;
        b=SQjZi8e1Y8wjXcVmWAFiXFMxgkXzRUA08zefLSOzhq+ANL7UXTp9S74Ab3MergeMql
         k9CSw1NTqCoFTQ7FHBVu4zBG1jtLGJc1EzkkyitJt1iu8UQ3fg/Qpji8P+8EER4p8b+L
         oniAiIxhQnp2b7nrr/x59Wh3xXQSC/9fFzeY29sUYSgMLRxrbkFLH8nuHQWXIAaF9XIw
         GnO7sm/MuiMXOQ14XB8aHVscMHqc9jAEmswIDFHR5874IjX4O+vWtYGMckDcolHhD+IJ
         PAjkEspvJc/z5mlh/R+NpbPQWQlRaCkeZSOe8x6sCjR7KOEfw2DcUO7KY+9mM/ybfRyL
         bNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678277978;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rXvALgLNXOwSxkTFpGdegQSuj49S1SEGCZhhXhGW1Qo=;
        b=tkzwHSWQxs4QiZKDg6QCpBq/+kumf66vyoRnTLwqX7p++EzWzdzjcdGyEkLU1lfrj5
         7/yaU92+7/RedbCllo7r4j+o2wysNz0yBhNxBPwvVHMPARR9bLfzyYkjuZq11/w8dPDD
         uKL/6JV/LP8WZf3i2tf2u7tiJHjR0oskFWSdg2uYnupRK5vPxKn1LPnYKG7T76yZ9rg9
         AWugl3p5SPWGOpIlJpBQRofXOnuYIUBgdvbA5XSWBRbPSMICvztfbJjev0Dl1FkKLG9u
         itIN3ZiPtuo4p5BW6iBHvqIZIK4EE3k+LX4Qw1g2tkU9WNQR9nCzvhRhm/BaW+vRGRXY
         jQMA==
X-Gm-Message-State: AO0yUKUXH8ZGArtucxDv1TxgsT7sEM+7HLVD1YIZpETp8FoPzLw1tn6T
        6Ti3hRTiJPlrIViKuSp/Yfy4pw==
X-Google-Smtp-Source: AK7set95ELz8qiTpkF9TOq+N1ZvxqR9tCnjqO9/rzyHVM2ACM5iIX94fw1GxAHp6N4NHvTFJKrA+5g==
X-Received: by 2002:a5d:4ec4:0:b0:2c7:f56:2892 with SMTP id s4-20020a5d4ec4000000b002c70f562892mr11952190wrv.40.1678277977823;
        Wed, 08 Mar 2023 04:19:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:b029:83b9:1fb8:7c34? ([2a01:e0a:982:cbb0:b029:83b9:1fb8:7c34])
        by smtp.gmail.com with ESMTPSA id x21-20020a05600c189500b003e71a6be279sm15373743wmp.37.2023.03.08.04.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 04:19:37 -0800 (PST)
Message-ID: <db540297-2f9b-e420-be33-0a1f1a838862@linaro.org>
Date:   Wed, 8 Mar 2023 13:19:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 2/3] tty: serial: meson: Add a new compatible string
 for the G12A SoC
Content-Language: en-US
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        jirislaby@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, gregkh@linuxfoundation.org,
        Christian Hewitt <christianshewitt@gmail.com>
References: <20230307222651.2106615-1-martin.blumenstingl@googlemail.com>
 <20230307222651.2106615-3-martin.blumenstingl@googlemail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230307222651.2106615-3-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 23:26, Martin Blumenstingl wrote:
> Amlogic Meson G12A (and later) SoCs also have the "divide XTAL by 2" bit
> as the S4 UART controllers. Add a new compatible string for these SoCs
> and enable the has_xtal_div2 flag for them.
> 
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Changes from v1 -> v2:
> - none
> 
> Changes from v2 -> v3:
> - none
> 
> 
>   drivers/tty/serial/meson_uart.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/tty/serial/meson_uart.c b/drivers/tty/serial/meson_uart.c
> index 74110017988a..2501db5a7aaf 100644
> --- a/drivers/tty/serial/meson_uart.c
> +++ b/drivers/tty/serial/meson_uart.c
> @@ -779,7 +779,7 @@ static int meson_uart_remove(struct platform_device *pdev)
>   	return 0;
>   }
>   
> -static struct meson_uart_data s4_uart_data = {
> +static struct meson_uart_data meson_g12a_uart_data = {
>   	.has_xtal_div2 = true,
>   };
>   
> @@ -788,9 +788,13 @@ static const struct of_device_id meson_uart_dt_match[] = {
>   	{ .compatible = "amlogic,meson8-uart" },
>   	{ .compatible = "amlogic,meson8b-uart" },
>   	{ .compatible = "amlogic,meson-gx-uart" },
> +	{
> +		.compatible = "amlogic,meson-g12a-uart",
> +		.data = (void *)&meson_g12a_uart_data,
> +	},
>   	{
>   		.compatible = "amlogic,meson-s4-uart",
> -		.data = (void *)&s4_uart_data,
> +		.data = (void *)&meson_g12a_uart_data,
>   	},
>   	{ /* sentinel */ },
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
