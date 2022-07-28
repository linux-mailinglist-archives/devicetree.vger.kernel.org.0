Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C2345846C1
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 22:06:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbiG1UCL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 16:02:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbiG1UCK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 16:02:10 -0400
Received: from smtp.smtpout.orange.fr (smtp-28.smtpout.orange.fr [80.12.242.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 301AF201AA
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 13:02:09 -0700 (PDT)
Received: from [192.168.1.18] ([90.11.190.129])
        by smtp.orange.fr with ESMTPA
        id H9hto2P7UoEdDH9htogjBd; Thu, 28 Jul 2022 22:02:06 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Thu, 28 Jul 2022 22:02:06 +0200
X-ME-IP: 90.11.190.129
Message-ID: <3033c2bb-bfe7-459c-2a2b-e99bf33b28b5@wanadoo.fr>
Date:   Thu, 28 Jul 2022 22:02:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/2] iio: time: capture-tiecap: capture driver support
 for ECAP
Content-Language: fr
To:     jpanis@baylibre.com
Cc:     devicetree@vger.kernel.org, jic23@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        mranostay@ti.com, robh+dt@kernel.org
References: <20220728175124.468461-1-jpanis@baylibre.com>
 <20220728175124.468461-3-jpanis@baylibre.com>
From:   Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220728175124.468461-3-jpanis@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 28/07/2022 à 19:51, Julien Panis a écrit :
> ECAP hardware on AM62x SoC supports capture feature. It can be used
> to timestamp events (falling/rising edges) detected on signal input pin.
> 
> This commit adds capture driver support for ECAP hardware on AM62x SoC.
> 
> In the ECAP hardware, capture pin can also be configured to be in
> PWM mode. Current implementation only supports capture operating mode.
> Hardware also supports timebase sync between multiple instances, but
> this driver supports simple independent capture functionality.
> 
> Signed-off-by: Julien Panis <jpanis-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>

[...]

> +static int ecap_iio_remove(struct platform_device *pdev)
> +{
> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> +	struct ecap_iio_dev *ecap_dev = iio_priv(indio_dev);
> +
> +	if (ecap_dev->enabled)
> +		ecap_iio_capture_disable(indio_dev);
> +
> +	regmap_exit(ecap_dev->regmap);
> +
> +	pm_runtime_disable(&pdev->dev);

Hi,

should these 2 functions be part of an error handling path of the probe, 
or handled with a devm_add_action_or_reset()?

Just my 2c,

CJ

> +
> +	return 0;
> +}
> +
