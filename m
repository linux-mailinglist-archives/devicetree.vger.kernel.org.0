Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58A346BABBE
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 10:10:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231995AbjCOJKp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 05:10:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232123AbjCOJJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 05:09:59 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21FBA113C2
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:09:54 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id l7-20020a05600c1d0700b003eb5e6d906bso650696wms.5
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678871392;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0ehhM3WDQ0BzcG7Zytg5ZL1CgQcuprrt2BD+PBU8s/g=;
        b=uu+kBBddtJuRli4OXM4hbKnuLhtKkv/jS2KMvYUIZ7/Q/9PDSiQt9KGu5zKmTnJk4d
         KPtdQGA2+JGzcJrNSjc2URvoz7GUwfLIG5uU8RC7xtA8tgUkK6ZVUbuVdtprmgmL2tF7
         OiPUxtcEzGcqr4NIxJAJ+dDIzlw/qqzALwSx+ezpzXzhGLUX0eREVVkhpp2/Abc2Qfr3
         2Vnl6zp6B81OTjTyf3GWl2XsuAG+wUswTU5rftAIVkxL7WzebWNRnFQwQRL84CkSGNqz
         JV2sNtGMs2Nz6BrkidcaMwiJS0d4TGY3vmgTFv64cUnUn+EErZIOyr7Y/XZ+/H6kR4+O
         PNJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871392;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ehhM3WDQ0BzcG7Zytg5ZL1CgQcuprrt2BD+PBU8s/g=;
        b=lmNWYyFvT0XlceKlPRXhLIRFy6Ybws5uNuKLN1UGW7VBPS0PaiEtuZ4ceCAHGyWLGb
         QZmb88vONOj6U/otYI7hZ7jSWPjAaMCbCp8I7e5t726RRZcBx5+DW9Yp8xdopsnTCsm7
         8N+AVxciAQeKTh4h/2xMkbBPGrWkPPy69wjRo6XFBVwkzsD6toDxHPqD5zzIIRuFK91k
         Ff/U3CLt/R65Ib0En6EuzOm5NAD4vadcwNeC3xm9TeV6Jvw78AiQvAmgeT/fWMTLmm9e
         nIJYh4GhmnH4qV12UnVy4nW3EanytdvLsk3sAovd2xzHDSW0Gb+rgU5yHkaitMT9VECo
         63TA==
X-Gm-Message-State: AO0yUKVqzHYaRylw5IJQST2ZCrchbr2qqOfYt/+a3vO+wcTiCCidb5AL
        xd7laK0HYscInIvUq/xOLb0GOg==
X-Google-Smtp-Source: AK7set/UeVut8iVUM290qZrMIefOCnYRx2T85bTcp5RQsIKw/HHzpHn4F9JE6YWxp5XDl5Ui6/6g+Q==
X-Received: by 2002:a05:600c:4f44:b0:3eb:383c:1870 with SMTP id m4-20020a05600c4f4400b003eb383c1870mr16290455wmq.11.1678871392578;
        Wed, 15 Mar 2023 02:09:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:5d2d:8427:397b:8fe7? ([2a01:e0a:982:cbb0:5d2d:8427:397b:8fe7])
        by smtp.gmail.com with ESMTPSA id 4-20020a05600c024400b003eb966d39desm1252244wmj.2.2023.03.15.02.09.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 02:09:52 -0700 (PDT)
Message-ID: <aa9bfab7-220e-9488-8972-9a32fb11b0ff@linaro.org>
Date:   Wed, 15 Mar 2023 10:09:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: seiko-43wvf1g: Add the 'enable-gpios'
 property
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>
Cc:     sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, CPHEALY@gmail.com
References: <20230314111724.1520178-1-festevam@denx.de>
 <20230314111724.1520178-2-festevam@denx.de>
Organization: Linaro Developer Services
In-Reply-To: <20230314111724.1520178-2-festevam@denx.de>
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

On 14/03/2023 12:17, Fabio Estevam wrote:
> Sometimes a GPIO is needed to turn on/off the display.
> 
> Add support for this usecase by introducing the optional 'enable-gpios'
> property.
> 
> Tested on a imx53qsb board.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>   drivers/gpu/drm/panel/panel-seiko-43wvf1g.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> index 76160e5d43bd..c250ca36a5b3 100644
> --- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> +++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> @@ -7,6 +7,7 @@
>    */
>   
>   #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/media-bus-format.h>
>   #include <linux/module.h>
>   #include <linux/of.h>
> @@ -48,6 +49,7 @@ struct seiko_panel {
>   	const struct seiko_panel_desc *desc;
>   	struct regulator *dvdd;
>   	struct regulator *avdd;
> +	struct gpio_desc *enable_gpio;
>   };
>   
>   static inline struct seiko_panel *to_seiko_panel(struct drm_panel *panel)
> @@ -139,6 +141,8 @@ static int seiko_panel_unprepare(struct drm_panel *panel)
>   	if (!p->prepared)
>   		return 0;
>   
> +	gpiod_set_value_cansleep(p->enable_gpio, 0);
> +
>   	regulator_disable(p->avdd);
>   
>   	/* Add a 100ms delay as per the panel datasheet */
> @@ -174,6 +178,8 @@ static int seiko_panel_prepare(struct drm_panel *panel)
>   		goto disable_dvdd;
>   	}
>   
> +	gpiod_set_value_cansleep(p->enable_gpio, 1);
> +
>   	p->prepared = true;
>   
>   	return 0;
> @@ -252,6 +258,12 @@ static int seiko_panel_probe(struct device *dev,
>   	if (IS_ERR(panel->avdd))
>   		return PTR_ERR(panel->avdd);
>   
> +	panel->enable_gpio = devm_gpiod_get_optional(dev, "enable",
> +						     GPIOD_OUT_LOW);
> +	if (IS_ERR(panel->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(panel->enable_gpio),
> +				     "failed to request GPIO\n");
> +
>   	drm_panel_init(&panel->base, dev, &seiko_panel_funcs,
>   		       DRM_MODE_CONNECTOR_DPI);
>   


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
