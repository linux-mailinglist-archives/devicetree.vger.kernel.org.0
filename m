Return-Path: <devicetree+bounces-415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC4E7A178B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:33:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68C2F282CD2
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D856D296;
	Fri, 15 Sep 2023 07:33:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1938D294
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:33:21 +0000 (UTC)
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF85CB4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:33:18 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-31f4a286ae1so1533997f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763197; x=1695367997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hfitv4X6lwToXcy41tlreOifKHqkBiKe2Y188NSkf/E=;
        b=DRFs+qoTAtfypD5qI5Z2DRa2Q1cpzymtHLPLC5UOK/YOySkGliQwmQDyGc3NnkjZ28
         Ik7WX2/aLQ/Y+XMxkJ4/e0/F9Zn1uiedp3WOoYnMB7HFXAUDn15CPbNLqFHXNneL09zA
         bY/xW3d5EYcc5JZWg6RLqrGtT2HMyqN/94Ubc7Ux4oyxL1myPkmL9yec9Jq7gvmwbb5y
         1L0C8PRKAIWi/2V1pxxHf+XBkXD+xT5vhM7wEoePcX9Nt45ZnLmCPx/+8R2GZiGZXtgz
         +aE+RoZQBNOb8PMEjPF+6BKCyTgDyP69Wgq/+kWbAm8lhtOuAiSvOLwdGfntmOS7Q0xP
         Qm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763197; x=1695367997;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hfitv4X6lwToXcy41tlreOifKHqkBiKe2Y188NSkf/E=;
        b=ISHNNoqd45QNV+agHIbCev5mEfdclsFGq+PL7lE+t5DUxZn6E6a8m/2MXAuhN8+172
         OGOykwjKIAWgDPw0dxTo0jdXnK6n9HGo0mRByjLzmBN7vmqhzIVniBh6z+cXZ9Uo/s4d
         wpCIycqM2Cg4FF6gO/Bme5FxZYuDcxcQZIv08RQTQml6aPx9udcNaXJKQl3EnYu+B79x
         PWbUXWNQowEMF6ml4Ym3XpwAY16ThCGTx0w/TZcqScJL/MeFTnK015T95pYG8XPUnunA
         LAsGVkyU48MHBxoWRm9RgC713gBSyyzy++XZ0ZPmjT/vlHHhd5eKeRNijTw10ZVSnBsg
         zFpw==
X-Gm-Message-State: AOJu0YxiCkR2DqmG9yobdJa7Y/MYznmTinpNGW+MNG8QybMXNVhu/61T
	torXPXcX4Aj5FeJxBiGU4rGrtQ==
X-Google-Smtp-Source: AGHT+IHX3L0cvYtW1rLjajL2hbQapX8lSDljHUYvbrbSihTE5UDsyi8Cdbldh20ED7vBOil/5s2bYQ==
X-Received: by 2002:adf:eccc:0:b0:316:efb9:ffa with SMTP id s12-20020adfeccc000000b00316efb90ffamr792560wro.35.1694763197069;
        Fri, 15 Sep 2023 00:33:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id f3-20020adff983000000b003143c6e09ccsm3663543wrr.16.2023.09.15.00.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:33:16 -0700 (PDT)
Message-ID: <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org>
Date: Fri, 15 Sep 2023 09:33:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:25, Wang Chen wrote:
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> 
> Add quirk to skip setting the input clock rate for the uarts on the
> Sophgo SG2042 SoC similar to the StarFive JH7100.
> 
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Missing SoB.

> ---
>  drivers/tty/serial/8250/8250_dw.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> index f4cafca1a7da..6c344877a07f 100644
> --- a/drivers/tty/serial/8250/8250_dw.c
> +++ b/drivers/tty/serial/8250/8250_dw.c
> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
>  	.quirks = DW_UART_QUIRK_IS_DMA_FC,
>  };
>  
> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
> +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {

Why? What is wrong with old name?

>  	.usr_reg = DW_UART_USR,
>  	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
>  };
> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
>  	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
>  	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
>  	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
> -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
> +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
> +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },

So devices are fully compatible? Then use compatibility and drop this
patch entirely.


Best regards,
Krzysztof


