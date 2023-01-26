Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B978D67D078
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 16:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231809AbjAZPmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 10:42:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbjAZPmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 10:42:14 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B6D6DFE8
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:41:50 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso3487775wmc.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k0m12v3Di2o/+lIlzBAfogul/kt+ur4S1vNxsmILAGw=;
        b=n/tt0TbbZY0kvvmlybh+maDKHQ0be4D7R2GJKVsJPSnJpVsx0QLfpqZZqdY0GvK2Rj
         CDDH1MgMpvljpXQpOQZODWUXYojOW/ygyBIW5eLeOqR1t9yhYV+UpJOGKnrxpH79FpYD
         eJUQKgSM2oK309E6IXdbCCYlwwu47qgl0ob6zmebhg1Z83DhVXlVoVW/hpmT7LfqDHE+
         s1Rk5q26JwDcJ8vYdVxuro2CG1Mt/rFiV2Nu9V1CsS0NBtql8GlWwAnH5ypNl22MJpQw
         VfcF+NcQqSMFhL0zzCieU4CVxSqFYgaIHpNiOHdy6QcMZlzupyeVoYkDihkeDxmUT/Pb
         cqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k0m12v3Di2o/+lIlzBAfogul/kt+ur4S1vNxsmILAGw=;
        b=n9E/YyMabtBA1cKuLtwrHvq17vdmHqMDcRmaD2tCyDlug5DnJlV3mmPezgipj1wfzZ
         iqToZ83aW51C8syOTxcnmmNNrve6YVf07KocXcBz0tQV0FEPTTRmJGUsTtObn6LPqwfU
         Xi/ef0kfzYQtwrWqu2PWscHOfaQAjzZPJ2OADoznx8uGna09gyylS7rahJKylXoTQ0Z8
         IB4f63H5c+DZwrsseZbR5d4I627fLZRfJ5kNg6iC8TdNZ2zpSaPxuC0s3Y7pkuejCRwV
         3ZWh/78l+vCi+T+tUcs54IZRy+oCR9+uif2ymVp8DPHDd5MAXx56q4A160jkJ6O+FRce
         8bTg==
X-Gm-Message-State: AFqh2kqoAy395e0xPeUbOG0x3OpHxZlY3MPZnEBOKWelJPj3zFybqLcH
        bOv4d3YFJKTwW5I6119Rnm4RhQ==
X-Google-Smtp-Source: AMrXdXuOVMWTSO6PYETKl64COGKG0SdwZcv6kBqbetqGCuLNBWyPlhLiAo0Ppr7eUnXdj8jthAjXvA==
X-Received: by 2002:a05:600c:4a27:b0:3da:fae5:7e2f with SMTP id c39-20020a05600c4a2700b003dafae57e2fmr35805078wmp.3.1674747709376;
        Thu, 26 Jan 2023 07:41:49 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j38-20020a05600c1c2600b003daff80f16esm7367238wms.27.2023.01.26.07.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 07:41:48 -0800 (PST)
Message-ID: <c851113d-c243-c883-f038-3e61a5b8b066@linaro.org>
Date:   Thu, 26 Jan 2023 16:41:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/4] DRM: BRIDGE: TFP410: Support basic I2C interface
Content-Language: en-US
To:     Jonathan Cormier <jcormier@criticallink.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Jyri Sarha <jsarha@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Williamson <michael.williamson@criticallink.com>,
        Bob Duke <bduke@criticallink.com>
References: <20230125-tfp410_i2c-v1-0-66a4d4e390b7@criticallink.com>
 <20230125-tfp410_i2c-v1-2-66a4d4e390b7@criticallink.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230125-tfp410_i2c-v1-2-66a4d4e390b7@criticallink.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 22:09, Jonathan Cormier wrote:
> From: Michael Williamson <michael.williamson@criticallink.com>
> 
> The TFP410 driver does not support I2C.  As such, the device remains in
> Power Down if the I2C is enabled by the bootstrap pins.
> 
> Add basic support for the I2C interface, and provide support to take
> the device out of power down when enabled.  Also read the bootstrap mode
> pins via the CTL_1_MODE register when using the I2C bus.
> 
> Signed-off-by: Michael Williamson <michael.williamson@criticallink.com>
> Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
> ---
>  drivers/gpu/drm/bridge/ti-tfp410.c | 95 +++++++++++++++++++++++++++-----------
>  1 file changed, 68 insertions(+), 27 deletions(-)

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

hint: it is entirely different.

> 
> diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
> index b9635abbad16..323a6d9ed188 100644
> --- a/drivers/gpu/drm/bridge/ti-tfp410.c
> +++ b/drivers/gpu/drm/bridge/ti-tfp410.c
> @@ -6,6 +6,7 @@
>  
>  #include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
> +#include <linux/regmap.h>
>  #include <linux/media-bus-format.h>
>  #include <linux/module.h>
>  #include <linux/of_graph.h>
> @@ -21,6 +22,20 @@

(...)

>  
>  static void tfp410_i2c_remove(struct i2c_client *client)
> @@ -408,7 +449,7 @@ MODULE_DEVICE_TABLE(i2c, tfp410_i2c_ids);
>  static struct i2c_driver tfp410_i2c_driver = {
>  	.driver = {
>  		.name	= "tfp410",
> -		.of_match_table = of_match_ptr(tfp410_match),
> +		.of_match_table = tfp410_match,

This does not look related to the patch.

Best regards,
Krzysztof

