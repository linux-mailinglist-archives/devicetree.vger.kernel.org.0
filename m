Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F40EF5A2103
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 08:43:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245049AbiHZGnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 02:43:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244989AbiHZGnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 02:43:08 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD73CD125E
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:43:07 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id q16so686347ljp.8
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=BC6xgpuPVrsYHJWMCxjbD8/CEKHAHjyVQ6dzDES7reE=;
        b=lk6N21IAZL6YGX+9AhHhJif0mxd8PuPEOdIgBWgumETu3a0ApfkcOIzzJ819JeUVvp
         XKkj07BYNiJQJ4ScmW7gOO4Rp/jFGWBYI+kzbGukF4r9FcWP3vOq7ws3l4LpjiNzrbID
         vAvMPoUgR3k5nZhC8keGGwOw4GsHaXt9WYrfqzjLNMIYHQrwGW08akRKDIMsYNSo/HdP
         iiOAMFiPEWjwT5bIAGQG8CJE5/Q+zeGwlnuRo15r7+AlmbxHymeKgNrqJjzm5KmU0I6V
         tuBoR4ke/tS26JCT+9cdfuV3oqddorubz834i4/6bdM8tGl4yl/OxVIQl/Lky7HF4N6s
         2s1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=BC6xgpuPVrsYHJWMCxjbD8/CEKHAHjyVQ6dzDES7reE=;
        b=f6OaThPlZoeBZej0ekIwSqyPZDzRQPZ/8YgNFsyCOFyLU9aNAC4gQ7DGcGY4f3ETJD
         Moa/d3WVXKESmlRRzjt5ScTzfm+LqNva6S/1gTRkJN7i08IVQEor1ir9rMTXmuybcowZ
         aNKb6tnnmnKMblQPihO2CPYdA9Jln/nHfJzBR4fWHX78VSi9r2n5o2bkPOF5oWIB7SMj
         MfuxMFD9/az4WGIB6yL6XA7LPFIGWvJHNX3jo7GyEdPepJqIurmbTBQFFQ2AEB3P2f1/
         NS5Eurv1+QEt5XI2DqmGnIqzdJwPemN0EZAYTTXLSmNp8EroCP8FRmIpb2TEbmP1i+Ju
         oKHA==
X-Gm-Message-State: ACgBeo3/5KRem7koFVkTKiQMxcPbnjCLF8dG+TIGrv23+LENm5/xaZ/i
        6HFA5P1ZeImYXiML+SxmMIaKjQ==
X-Google-Smtp-Source: AA6agR5WFVb1ntXNTkav2V0MvRlR4UsAwX6g20NgInvBS7sNVmxVVZmWLCVO+QvSg+V52HgOtK3zwQ==
X-Received: by 2002:a2e:9c8c:0:b0:261:d87c:8626 with SMTP id x12-20020a2e9c8c000000b00261d87c8626mr1884267lji.150.1661496185893;
        Thu, 25 Aug 2022 23:43:05 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id x27-20020a19e01b000000b00492c6ce35basm265784lfg.79.2022.08.25.23.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 23:43:05 -0700 (PDT)
Message-ID: <571db5f6-1221-f8e0-1cc6-ff84dcf83cf9@linaro.org>
Date:   Fri, 26 Aug 2022 09:43:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/2] nvmem: lan9662-otp: add support.
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220825204041.1485731-1-horatiu.vultur@microchip.com>
 <20220825204041.1485731-3-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825204041.1485731-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 23:40, Horatiu Vultur wrote:
> +static int lan9662_otp_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct nvmem_device *nvmem;
> +	struct lan9662_otp *otp;
> +
> +	otp = devm_kzalloc(&pdev->dev, sizeof(*otp), GFP_KERNEL);
> +	if (!otp)
> +		return -ENOMEM;
> +
> +	otp->dev = dev;
> +	otp->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(otp->base))
> +		return PTR_ERR(otp->base);
> +
> +	otp_config.priv = otp;
> +	otp_config.dev = dev;
> +
> +	nvmem = devm_nvmem_register(dev, &otp_config);
> +
> +	return PTR_ERR_OR_ZERO(nvmem);
> +}
> +
> +static const struct of_device_id lan9662_otp_match[] = {
> +	{ .compatible = "microchip,lan9662-otp", },
> +	{ .compatible = "microchip,lan9668-otp", },

Why do you need two compatibles here? Your bindings are saying only one
is needed...

Best regards,
Krzysztof
