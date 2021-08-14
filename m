Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E09FB3EC241
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 13:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238239AbhHNLJQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Aug 2021 07:09:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238147AbhHNLJM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Aug 2021 07:09:12 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A54A1C0613CF
        for <devicetree@vger.kernel.org>; Sat, 14 Aug 2021 04:08:43 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id q11-20020a7bce8b0000b02902e6880d0accso11478902wmj.0
        for <devicetree@vger.kernel.org>; Sat, 14 Aug 2021 04:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=31/JbiSbcZEWgMZgzrRTApsKedkysIYqUvcZgHv2fWk=;
        b=xtr7b4yIHWLMi/hlgb/u74nEHKoRWsXWPQOAFLFov2SnSJeJdJmqmsuQECDrrpJOW3
         dTBu7TSVrIeRnnznuwvijvXKZGJG/FSQdz8JsiAWGLMfRu3EWLE/JwGFpiUjXb8tv9bw
         5sgoKw4eOlFBT7bNkBN6l5HHkpRxI8FGC2gBruonIhrABkhtmbhpMMZ3SLkgusfpzWoh
         lFgm/w3aqnn9r0nKG6z5B5nCsekIe2zKd+2uV/uKY+bgy06sjgwCxeRdNfJDBiUhro3f
         8Y6w9Vzz1JhCZ44DUMskwXIWqaBOyaRIXMDL7tntwr389f6ED4X4Q8TpmYyKkswIL+Wn
         JO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=31/JbiSbcZEWgMZgzrRTApsKedkysIYqUvcZgHv2fWk=;
        b=oTbCdVI2zWEg+NOGzsqv83VHQY8TxE1+6QFj/BnnHvjiSVqFzeHZEgVL06Uhgdt46g
         cC2q/qpddMdIiz5NXvgPiV7iFSDH2Xgg7TZHWliK7y78JkM9FR9UMuiAGZazNFf3vaud
         iaBVBIKguJ30mDbYooQaw1ywDEQGKSrDULZzZXWK5/W4It/cjJBwWhr0uWCGvyOf6vIc
         SR8GNxneChegisAKzeByzZ8mhAnVS+/lK0eE0Isnx7jMvXJutxQTqSaBOpQGsHJGGnF5
         gQZvnjITTr17sWNzzIB6RHolC5M1LlefsavrtEr699ypgqRFumGmXjp9NbNExC7xBr3V
         qI0Q==
X-Gm-Message-State: AOAM533ESkyGHggOX2Mt5KGLhGl4vVnIoEbeEll12/POmSfUnE/tdskr
        2RkTdUhyHcfYrjZFMXFxzXgpUA==
X-Google-Smtp-Source: ABdhPJxV/xvzEk31NSVZ/o8ZdBfUUSARUr+OdsRZjDBTKuRuWeH+Sk83u5zO8NLeobYfmmzcMRjTFQ==
X-Received: by 2002:a05:600c:3555:: with SMTP id i21mr6485887wmq.156.1628939322106;
        Sat, 14 Aug 2021 04:08:42 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d? ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
        by smtp.googlemail.com with ESMTPSA id l18sm4955225wmc.30.2021.08.14.04.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 04:08:41 -0700 (PDT)
Subject: Re: [PATCH v7 2/6] thermal: sy7636a: Add thermal driver for sy7636a
To:     Alistair Francis <alistair@alistair23.me>, lee.jones@linaro.org,
        robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com,
        Lars Ivar Miljeteig <lars.ivar.miljeteig@remarkable.no>
References: <20210708115804.212-1-alistair@alistair23.me>
 <20210708115804.212-2-alistair@alistair23.me>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a3237afd-437d-c79f-5a3b-7a0e4da17d44@linaro.org>
Date:   Sat, 14 Aug 2021 13:08:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708115804.212-2-alistair@alistair23.me>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2021 13:58, Alistair Francis wrote:
> From: Lars Ivar Miljeteig <lars.ivar.miljeteig@remarkable.no>
> 
> Add thermal driver to enable kernel based polling
> and shutdown of device for temperatures out of spec
> 
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/thermal/Kconfig           |   7 ++
>  drivers/thermal/Makefile          |   1 +
>  drivers/thermal/sy7636a_thermal.c | 107 ++++++++++++++++++++++++++++++
>  3 files changed, 115 insertions(+)
>  create mode 100644 drivers/thermal/sy7636a_thermal.c
> 
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index d7f44deab5b1..7112c63d9021 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -450,6 +450,13 @@ depends on (ARCH_STI || ARCH_STM32) && OF
>  source "drivers/thermal/st/Kconfig"
>  endmenu
>  
> +config SY7636A_THERMAL
> +	tristate "SY7636A thermal management"
> +	depends on MFD_SY7636A
> +	help
> +	  Enable the sy7636a thermal driver, which supports the
> +	  temperature sensor embedded in Silabs SY7636A chip.
> +
>  source "drivers/thermal/tegra/Kconfig"
>  
>  config GENERIC_ADC_THERMAL
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 82fc3e616e54..2e1aca8a0a09 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -51,6 +51,7 @@ obj-$(CONFIG_DA9062_THERMAL)	+= da9062-thermal.o
>  obj-y				+= intel/
>  obj-$(CONFIG_TI_SOC_THERMAL)	+= ti-soc-thermal/
>  obj-y				+= st/
> +obj-$(CONFIG_SY7636A_THERMAL)	+= sy7636a_thermal.o
>  obj-$(CONFIG_QCOM_TSENS)	+= qcom/
>  obj-y				+= tegra/
>  obj-$(CONFIG_HISI_THERMAL)     += hisi_thermal.o
> diff --git a/drivers/thermal/sy7636a_thermal.c b/drivers/thermal/sy7636a_thermal.c
> new file mode 100644
> index 000000000000..705a16fb1045
> --- /dev/null
> +++ b/drivers/thermal/sy7636a_thermal.c
> @@ -0,0 +1,107 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +//
> +// Functions to access SY3686A power management chip temperature
> +//
> +// Copyright (C) 2019 reMarkable AS - http://www.remarkable.com/
> +//
> +// Authors: Lars Ivar Miljeteig <lars.ivar.miljeteig@remarkable.com>
> +//          Alistair Francis <alistair@alistair23.me>

// SPDX-License-Identifier: GPL-2.0+
/*
 * Functions to access SY3686A power management chip temperature
 * ...
 *
 */

> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/thermal.h>
> +
> +#include <linux/mfd/sy7636a.h>
> +
> +struct sy7636a_data {
> +	struct sy7636a *sy7636a;

Only regmap is used AFAICT, so storing the regmap pointer is enough and
the structure is not needed neither the code associated with it.

> +	struct thermal_zone_device *thermal_zone_dev;

This field is only used to check the return code of the
thermal_zone_device_register function. It can be local to the function
below.

> +};
> +
> +static int sy7636a_get_temp(void *arg, int *res)
> +{
> +	unsigned int reg_val, mode_ctr;

Is it possible the sensor returns negative values ?

> +	int ret;
> +	struct sy7636a_data *data = arg;
> +	bool isVoltageActive;
> +	ret = regmap_read(data->sy7636a->regmap,
> +			SY7636A_REG_OPERATION_MODE_CRL, &mode_ctr);
> +	if (ret)
> +		return ret;
> +
> +	isVoltageActive = mode_ctr & SY7636A_OPERATION_MODE_CRL_ONOFF;
> +
> +	if (!isVoltageActive) {
> +		ret = regmap_write(data->sy7636a->regmap,
> +				SY7636A_REG_OPERATION_MODE_CRL,
> +				mode_ctr | SY7636A_OPERATION_MODE_CRL_ONOFF);

What is this conditional block ? Please add a comment to explain why
these 'isVoltageActive' test are needed.

> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret = regmap_read(data->sy7636a->regmap,
> +			SY7636A_REG_TERMISTOR_READOUT, &reg_val);
> +	if (ret)
> +		return ret;
> +
> +	if (!isVoltageActive) {
> +		ret = regmap_write(data->sy7636a->regmap,
> +				SY7636A_REG_OPERATION_MODE_CRL,
> +				mode_ctr);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	*res = *((signed char*)&reg_val);

Please revisit this.

> +	*res *= 1000;
> +
> +	return ret;
> +}
> +
> +static const struct thermal_zone_of_device_ops ops = {
> +	.get_temp	= sy7636a_get_temp,
> +};
> +
> +static int sy7636a_thermal_probe(struct platform_device *pdev)
> +{
> +	struct sy7636a *sy7636a = dev_get_drvdata(pdev->dev.parent);
> +	struct sy7636a_data *data;
> +
> +	if (!sy7636a)
> +		return -EPROBE_DEFER;
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(struct sy7636a_data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, data);
> +
> +	data->sy7636a = sy7636a;
> +	data->thermal_zone_dev = devm_thermal_zone_of_sensor_register(
> +			pdev->dev.parent,
> +			0,
> +			data,
> +			&ops);
> +
> +	return PTR_ERR_OR_ZERO(data->thermal_zone_dev);
> +}
> +
> +static const struct platform_device_id sy7636a_thermal_id_table[] = {
> +	{ "sy7636a-thermal", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(platform, sy7636a_thermal_id_table);
> +
> +static struct platform_driver sy7636a_thermal_driver = {
> +	.driver = {
> +		.name = "sy7636a-thermal",
> +	},
> +	.probe = sy7636a_thermal_probe,
> +	.id_table = sy7636a_thermal_id_table,
> +};
> +module_platform_driver(sy7636a_thermal_driver);
> +
> +MODULE_AUTHOR("Lars Ivar Miljeteig <lars.ivar.miljeteig@remarkable.com>");
> +MODULE_DESCRIPTION("SY7636A thermal driver");
> +MODULE_LICENSE("GPL v2");
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
