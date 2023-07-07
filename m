Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8BC74AC44
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 09:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbjGGHuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 03:50:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231213AbjGGHuO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 03:50:14 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A6AF1FD7
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 00:50:13 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-314172bb818so1595768f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 00:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688716212; x=1691308212;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xzJZgWFeHHGjXKAh4OaYqE3z7DeRElG2dg11xE9GqWA=;
        b=Wq7nkwenow+m00LJH3DXwOFMahQtljMEay80GmxnhXkPnM7oEDXjB+XHrOvcvOL6VC
         IIKGioCQeaAbTesF9F7eJnsPQ/4s23aH7LrJTC8fLkRsOZDlXboPDyxNIKjWBh7NgKn8
         YcgjiRf+gPoarIPP0tfnqZN0hMN3gNVe/A1BDPAU6Lxme6ofNMtWM8LYwU6FH0JiE7pa
         jo20zRz+up4lQWkYYC0acljJ6Kn6/S6LQB1ZHFh/drYq1dRA3WHjFw7MFjDxG/c9a/tt
         fElyV75oHDKkg+mls8gWZvv4nNyagJW3nP6qR3Ika4l/EXGHBMNpA6/79pVWMsGyHHWG
         z+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688716212; x=1691308212;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzJZgWFeHHGjXKAh4OaYqE3z7DeRElG2dg11xE9GqWA=;
        b=KEMEg4QHrZs+ZdrJXRrk/7umXS+aa6HO5vliMmjf5Jb6wfn56tbwWpflHawfcIa37p
         9PVHcg32IhADe9wAvYfs/plh33oEY9ruedLaun7Ap51rr1Mp6mWAACtFKzDNvOKcfkm+
         apFzeu5GLkoOuhI9zw6+QDX+Yq106Bh82N16x+OmdWjNie8uw9rrT0W9inKMDsz/67mf
         /yZSmqFGP8YYlW4Ds5PDov80BDVBpNTsFuOdfnZ9XANM7yS5K9sQyNihWfGfs7BV4qOb
         NY+LDl+on8bsQClBBP3XV4VHp1iNVFmdO5ijzMAHZjERNMf5NuUwfCkiAiEXn4YNrh2T
         l6wQ==
X-Gm-Message-State: ABy/qLbX2hPe7upkD7/JA0/cLHg5CsFx4Lr22Sorn77b875dx368VqZ5
        yfNvFIysTWEllM1THM0vCaOPF0y7ByXtRuLvZGDD0QbB
X-Google-Smtp-Source: APBJJlG5qX5zH+MbgQHt6l/RMXUjACz3YLpcUYX5x8n+MEzfvZ3cxiLnB41OwzrgRLGnyXmawFSZDQ==
X-Received: by 2002:adf:e581:0:b0:314:3587:ec72 with SMTP id l1-20020adfe581000000b003143587ec72mr3624852wrm.69.1688716211912;
        Fri, 07 Jul 2023 00:50:11 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id a5-20020adffb85000000b00313e4d02be8sm3763868wrr.55.2023.07.07.00.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jul 2023 00:50:11 -0700 (PDT)
Message-ID: <b2205518-67bd-85a2-6af7-260dcf21416c@linaro.org>
Date:   Fri, 7 Jul 2023 09:50:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 3/4] soc: c3: Add support for power domains controller
Content-Language: en-US
To:     Xianwei Zhao <xianwei.zhao@amlogic.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
References: <20230707003710.2667989-1-xianwei.zhao@amlogic.com>
 <20230707003710.2667989-4-xianwei.zhao@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230707003710.2667989-4-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2023 02:37, Xianwei Zhao wrote:
> Add support for C3 Power controller. C3 power control
> registers are in secure domain, and should be accessed by SMC.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> V1 -> V2: Fixed some formatting.
> ---
>   drivers/soc/amlogic/meson-secure-pwrc.c | 26 +++++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
> index c11d65a3e3d9..a1ffebf70de3 100644
> --- a/drivers/soc/amlogic/meson-secure-pwrc.c
> +++ b/drivers/soc/amlogic/meson-secure-pwrc.c
> @@ -11,6 +11,7 @@
>   #include <linux/platform_device.h>
>   #include <linux/pm_domain.h>
>   #include <dt-bindings/power/meson-a1-power.h>
> +#include <dt-bindings/power/amlogic,c3-pwrc.h>
>   #include <dt-bindings/power/meson-s4-power.h>
>   #include <linux/arm-smccc.h>
>   #include <linux/firmware/meson/meson_sm.h>
> @@ -120,6 +121,22 @@ static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
>   	SEC_PD(RSA,	0),
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
> +
>   static struct meson_secure_pwrc_domain_desc s4_pwrc_domains[] = {
>   	SEC_PD(S4_DOS_HEVC,	0),
>   	SEC_PD(S4_DOS_VDEC,	0),
> @@ -202,6 +219,11 @@ static struct meson_secure_pwrc_domain_data meson_secure_a1_pwrc_data = {
>   	.count = ARRAY_SIZE(a1_pwrc_domains),
>   };
>   
> +static struct meson_secure_pwrc_domain_data amlogic_secure_c3_pwrc_data = {
> +	.domains = c3_pwrc_domains,
> +	.count = ARRAY_SIZE(c3_pwrc_domains),
> +};
> +
>   static struct meson_secure_pwrc_domain_data meson_secure_s4_pwrc_data = {
>   	.domains = s4_pwrc_domains,
>   	.count = ARRAY_SIZE(s4_pwrc_domains),
> @@ -212,6 +234,10 @@ static const struct of_device_id meson_secure_pwrc_match_table[] = {
>   		.compatible = "amlogic,meson-a1-pwrc",
>   		.data = &meson_secure_a1_pwrc_data,
>   	},
> +	{
> +		.compatible = "amlogic,c3-pwrc",
> +		.data = &amlogic_secure_c3_pwrc_data,
> +	},
>   	{
>   		.compatible = "amlogic,meson-s4-pwrc",
>   		.data = &meson_secure_s4_pwrc_data,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
