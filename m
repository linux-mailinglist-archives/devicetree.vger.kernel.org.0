Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1249745D4F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 15:29:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjGCN3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 09:29:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbjGCN3r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 09:29:47 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6998110C6
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 06:29:35 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-314172bb818so5123589f8f.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688390973; x=1690982973;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/VhzLPQHUerf9yIXAHQ3k56ZyHp33w08cf8vUBWG7Y=;
        b=njVWohKchlcMEssQAmIF1k9K45Bbsrd0GbQfEH6owssZIqpB91tbfaZvQBAe2y6d1N
         pfYh+rKJvhufICIyrpnVitykosZoAVctBURaePVLlsfTfbkyTRZHEZHi3Cwb2R1Ef2Mb
         zPNZyr0j7/n69lqkf1LcW1BVdC45GIbm429M52QLjFBtW+HPuNBK9Brwx6z1rtL6ervi
         J18BdPRMVF+ob1T3MaG2ubOle4LHZ6bX6GWGxuqpzeXoMdxExxR5eztZ50719pVvVZXQ
         mget4xvTOK6HJHHZRrIizrB/mjd6/JRYFiY+unzHfnSkh5xQ/AICSlgjz/c67zA4qYd2
         wIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688390973; x=1690982973;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/VhzLPQHUerf9yIXAHQ3k56ZyHp33w08cf8vUBWG7Y=;
        b=T31iib8TtsVatk6fnywiw2yofKXI8ynQqudkHvTVUcmGRR5BXZIW9EZnyru9j/ZwdM
         GGFG31hWrtFzkUcYNyO9bkPtOldYLNYYHgQno1+O2SwqSbbib/13QwpQ8UMcOUtwJwnG
         yj+IVSrAq1kdKFMn/KDSx5PaSDf3FA0mlqhtza3wK82tNOyoEydLOAyih8tSR8/tWEmO
         4g6OJQNU1yrB6L+qGMVNbV9f/OU+x22l1AqAOXzTQJEe7UiQi4fALKsGuZdWUTW6Ab2x
         SHhfglceN+41YfeSRHzaOriKuhW4FwVa3v8HEtyuZLZk48GjjovhOBnM9d2KCpWwQnRk
         vqdQ==
X-Gm-Message-State: ABy/qLZmkS62HCHx/G2Y6A645qmWampE8MkBJQr5hyRP6XwEFgfCMhhC
        W4L8wAbgi2VWJKfPOY40r5RK8Q==
X-Google-Smtp-Source: APBJJlGMsazVkHFxwQldk7Ee64dl++ep07uZano3iNOZM0/SiZWu6RXho/B4b8i2C1OknUXd7j1Nag==
X-Received: by 2002:a5d:6986:0:b0:314:37a9:f225 with SMTP id g6-20020a5d6986000000b0031437a9f225mr2684111wru.40.1688390973573;
        Mon, 03 Jul 2023 06:29:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cf0b:9dd4:190:b74f? ([2a01:e0a:982:cbb0:cf0b:9dd4:190:b74f])
        by smtp.gmail.com with ESMTPSA id k5-20020a5d6e85000000b003063a92bbf5sm25802354wrz.70.2023.07.03.06.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 06:29:33 -0700 (PDT)
Message-ID: <e85f6dee-d62c-9f2f-b1de-8c38bb5aeb14@linaro.org>
Date:   Mon, 3 Jul 2023 15:29:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] soc: c3: Add support for power domains controller
Content-Language: en-US
To:     =Xianwei Zhao <xianwei.zhao@amlogic.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
References: <20230703093142.2028500-1-xianwei.zhao@amlogic.com>
 <20230703093142.2028500-3-xianwei.zhao@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230703093142.2028500-3-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 03/07/2023 11:31, =Xianwei Zhao wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add support for C3 Power controller. C3 power control
> registers are in secure domain, and should be accessed by SMC.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   drivers/soc/amlogic/meson-secure-pwrc.c | 28 ++++++++++++++++++++++++-
>   1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
> index 25b4b71df9b8..39ccc8f2e630 100644
> --- a/drivers/soc/amlogic/meson-secure-pwrc.c
> +++ b/drivers/soc/amlogic/meson-secure-pwrc.c
> @@ -12,6 +12,7 @@
>   #include <linux/pm_domain.h>
>   #include <dt-bindings/power/meson-a1-power.h>
>   #include <dt-bindings/power/meson-s4-power.h>
> +#include <dt-bindings/power/amlogic-c3-power.h>
>   #include <linux/arm-smccc.h>
>   #include <linux/firmware/meson/meson_sm.h>
>   #include <linux/module.h>
> @@ -132,6 +133,22 @@ static struct meson_secure_pwrc_domain_desc s4_pwrc_domains[] = {
>   	SEC_PD(S4_AUDIO,	0),
>   };
>   
> +static struct meson_secure_pwrc_domain_desc c3_pwrc_domains[] = {
> +	SEC_PD(C3_NNA,	0),
> +	SEC_PD(C3_AUDIO,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_SDIOA,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_EMMC,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_USB_COMB, GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_SDCARD,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_ETH,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_GE2D,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_CVE,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_GDC_WRAP,	GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_ISP_TOP,		GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_MIPI_ISP_WRAP, GENPD_FLAG_ALWAYS_ON),
> +	SEC_PD(C3_VCODEC,	0),
> +};

Please move this struct before _s4_

> +
>   static int meson_secure_pwrc_probe(struct platform_device *pdev)
>   {
>   	int i;
> @@ -179,7 +196,7 @@ static int meson_secure_pwrc_probe(struct platform_device *pdev)
>   	for (i = 0 ; i < match->count ; ++i) {
>   		struct meson_secure_pwrc_domain *dom = &pwrc->domains[i];
>   
> -		if (!match->domains[i].index)
> +		if (!match->domains[i].name)

Is this change necessary ? If yes please move it to another patch
and explain it's purpose. If it fixes something, add a Fixes tag so
it can be backported.

Thanks,
Neil

>   			continue;
>   
>   		dom->pwrc = pwrc;
> @@ -207,6 +224,11 @@ static struct meson_secure_pwrc_domain_data meson_secure_s4_pwrc_data = {
>   	.count = ARRAY_SIZE(s4_pwrc_domains),
>   };
>   
> +static struct meson_secure_pwrc_domain_data amlogic_secure_c3_pwrc_data = {
> +	.domains = c3_pwrc_domains,
> +	.count = ARRAY_SIZE(c3_pwrc_domains),
> +};

Please move this struct before _s4_

> +
>   static const struct of_device_id meson_secure_pwrc_match_table[] = {
>   	{
>   		.compatible = "amlogic,meson-a1-pwrc",
> @@ -216,6 +238,10 @@ static const struct of_device_id meson_secure_pwrc_match_table[] = {
>   		.compatible = "amlogic,meson-s4-pwrc",
>   		.data = &meson_secure_s4_pwrc_data,
>   	},
> +	{
> +		.compatible = "amlogic,c3-pwrc",
> +		.data = &amlogic_secure_c3_pwrc_data,
> +	},

Please move this entry before _s4_

>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, meson_secure_pwrc_match_table);

Thanks,
Neil

