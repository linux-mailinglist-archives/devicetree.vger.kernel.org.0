Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1946C7F7E
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 15:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230125AbjCXOGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 10:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230426AbjCXOGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 10:06:31 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA1971B554
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 07:05:56 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so3226375wmb.5
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 07:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679666755;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WG6gphWl27lAGqIb66Yn+gMHDN2FKDd0CjkaAmh1aqs=;
        b=hx9HF8DLfkyh4bxrj1FkrTEKV2pEkXm+b+DeeofWFl8I9fo5obHKFa5TXVoKr8v22O
         uBz4NaeiaOu/3+CruH2yfScKi8TZV5HEezj4T2Y0zyVH3Lq5I/Cf0T8YMcmEVbrk5rYr
         kvJDgFJ59O7Fh0dWR/Ac38WfqYsSrZ5lJ3pEy/gWaP5ukPJPFGX+OngIdtOcKa53GJa3
         sPVP8Enc0e7eqvC5asKWtqxIGBcX/v0Zpkfize9JzmAKkZBUSsurHejXZQcmVHfDEHu9
         FtvnHisaIIKk+7kt1jOF5DpPs9WDmUqfMH0q9saOqr766l/7gu82aQqJ2f1P4H4YJqNP
         Jacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679666755;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WG6gphWl27lAGqIb66Yn+gMHDN2FKDd0CjkaAmh1aqs=;
        b=hYgbw/1xxZQw+twoVVKUx048L7EiBXjYEJI8iJjR2XY/XmcUZd4eNKiEo7QeYwC8U7
         0WO9S2DTcXBpPgCrhlh4ylG0clfOxmugrdAdE9pylzelZm1NgVD+MNrZq0wPrRnpAUve
         29gNTJMi+pCVBedN4OB9npS/JrBfKCfOheyx7cuzNe32PgPeNas/ARH9kfaXNxk5hW38
         JFy4EsRPXzUrIUfvFr+2Adiza93nuG/Jw750kQ3v9lp30BvSX+hE1y4B1jxbRj7Hfi41
         N2fG4WuFHUTiuKaW/hKhZZ9lblobqDTS3BxdDMEQ4bR+6TPyFzsqgwIvLH9K2fZmFrSu
         0LIg==
X-Gm-Message-State: AO0yUKUnY7fvYOkx1bMqrSOqYIUBFAdA28omunRVNkCdSDvi/NmkHmHD
        MD1nW0pPGUcMUHlQDQnOfOwIpkm2kpUnODdyH/onoQ==
X-Google-Smtp-Source: AK7set/uKpNVbtBBd4lUVSBuF+3iaCY52KMHAaXgmlQVPGEuXOp9zixUhtUEm4rvwQ9j3FbsKvcREg==
X-Received: by 2002:a05:600c:209:b0:3ee:282d:1016 with SMTP id 9-20020a05600c020900b003ee282d1016mr2422277wmi.25.1679666755220;
        Fri, 24 Mar 2023 07:05:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:213f:a579:70af:e4a0? ([2a01:e0a:982:cbb0:213f:a579:70af:e4a0])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003eddf20ed5bsm5195872wmq.18.2023.03.24.07.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 07:05:54 -0700 (PDT)
Message-ID: <f1088121-02c7-86da-d603-7c2015030b0e@linaro.org>
Date:   Fri, 24 Mar 2023 15:05:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] firmware: meson_sm: populate platform devices from sm
 device tree data
Content-Language: en-US
To:     Dmitry Rokosov <ddrokosov@sberdevices.ru>,
        krzysztof.kozlowski@linaro.org, robh@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, jianxin.pan@amlogic.com
Cc:     kernel@sberdevices.ru, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        rockosov@gmail.com
References: <20230324140141.6743-1-ddrokosov@sberdevices.ru>
Organization: Linaro Developer Services
In-Reply-To: <20230324140141.6743-1-ddrokosov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/03/2023 15:01, Dmitry Rokosov wrote:
> In some meson boards, secure monitor device has children, for example,
> power secure controller. By default, secure monitor isn't the bus in terms
> of device tree subsystem, so the of_platform initialization code doesn't
> populate its device tree data. As a result, secure monitor's children
> aren't probed at all.
> 
> Run the 'of_platform_populate()' routine manually to resolve such issues.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
> ---
>   drivers/firmware/meson/meson_sm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
> index 77aa5c6398aa..b79d0e316cb1 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -316,7 +316,7 @@ static int __init meson_sm_probe(struct platform_device *pdev)
>   	if (sysfs_create_group(&pdev->dev.kobj, &meson_sm_sysfs_attr_group))
>   		goto out_in_base;
>   
> -	return 0;
> +	return devm_of_platform_populate(dev);

You should check return and jump to out_in_base on error instead.

Neil

>   
>   out_in_base:
>   	iounmap(fw->sm_shmem_in_base);

