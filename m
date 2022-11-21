Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81F71632239
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:34:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbiKUMep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:34:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbiKUMe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:34:27 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF2A5C767
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:34:08 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso8890091wms.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VOlTSrmRtbUCBfz8gCz4WOvdg96YJQdXKVBz3QHx9bs=;
        b=V8siZQDFyD/hT3Om+NOj7hhswdGA7duSCrWm61KEQ/mP6nhbGLe+pX5cO4Hiv1aC06
         SGgQNBp7orlIKTRM5cxRhiv3KzMQbDKPOa9hbcF3WeO4Jxegg6R08UoCINuxKi/agRb1
         REO7D9+ZzE+0xXwc7/L7hj8R0XLsxWUqxHMDWjYNr82OMiWjExLT5SHTwfJEmgufx72t
         DQ6vJs5A6lBut1ePzFui5MR86Qqc0dczNfJT4uX/O5ZF2xARBS01lEvdFcVrfe9DJKtW
         IFUSN7HjfWpjb04GqXsFglT1LSsj37zJ7nrjX3EFM+f6M5HpE+DbBc/2iG2lm4LaJxmH
         dIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VOlTSrmRtbUCBfz8gCz4WOvdg96YJQdXKVBz3QHx9bs=;
        b=ecDmzSaWNCWwLu9W6OUCbFZov3KJpVUW5t5hNTjymzANWJhFsLzlEyS4XGmi5OQX0u
         /wjHg53qf6a1M/DQP4B0jK2UJxSrDMgiNGeyrO3hXRRgv65zDS3qoWFQVWDKVQWycNac
         g7IUkUAvNXD4FzJ6k9iuX8CfI1HAtOxJL0f7FlUQCd5efSCCs0gVbQMlE3ZZvD+nn+0s
         zVDpRYWeQOOElhoq/B+K9WZLQRZNVTPK+ywR+oPVX/x9NdION/Axpk6MSjvoXL5Pwk/x
         rfdKIreVZdxH8E2GLLvQgvGLg37TdAyRLXiypaDK03GxdsQ+/CzZBnNpsb9dbLl50XwK
         MItg==
X-Gm-Message-State: ANoB5pmUpQ37Y58R9tbUMAQduBy3GC8RUDJn7qTQBKLIJFqM2+P4sRIL
        +Uky8fNGcX7G9AGnPJJ5kZI=
X-Google-Smtp-Source: AA0mqf6heJdZ9/M6W4IHJWOvjmp4NclZNoZVkaQ1Z+boxuga0PuFE6uaHa6xFt9cYsPIr036klryoQ==
X-Received: by 2002:a05:600c:4e50:b0:3d0:bda:f2c with SMTP id e16-20020a05600c4e5000b003d00bda0f2cmr3600512wmq.117.1669034046972;
        Mon, 21 Nov 2022 04:34:06 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id q125-20020a1c4383000000b003c6cd82596esm18130468wma.43.2022.11.21.04.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:34:05 -0800 (PST)
Message-ID: <8572b192-bab4-645c-4046-3e5586178312@gmail.com>
Date:   Mon, 21 Nov 2022 13:34:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/9] pinctrl: stm32: Remove check for pins-are-numbered
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-3-bero@baylibre.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20221121015451.2471196-3-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> Remove the check for the unnecessary pins-are-numbered
> DeviceTree property
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>


Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>


> ---
>   drivers/pinctrl/stm32/pinctrl-stm32.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
> index cc9472b284047..1cddca506ad7e 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
> @@ -1499,11 +1499,6 @@ int stm32_pctl_probe(struct platform_device *pdev)
>   	if (!match_data)
>   		return -EINVAL;
>   
> -	if (!device_property_present(dev, "pins-are-numbered")) {
> -		dev_err(dev, "only support pins-are-numbered format\n");
> -		return -EINVAL;
> -	}
> -
>   	pctl = devm_kzalloc(dev, sizeof(*pctl), GFP_KERNEL);
>   	if (!pctl)
>   		return -ENOMEM;
