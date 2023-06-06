Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD3FF7246B1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 16:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237391AbjFFOrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 10:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237575AbjFFOq6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 10:46:58 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBC81739
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 07:45:53 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-973bf581759so991733966b.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 07:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686062751; x=1688654751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5FgbnJ1bsRAIXrOhPmDZJCKyCj6maHTABysFsvbytiA=;
        b=y5SEgGrEZ1EWMk6ghPUJcBoGitQg140Z/oPAVDHLRQVqV1KAWix9C6wh6mkelZhwio
         xx7XYztdidH6DG3+jmKpHUivQ5KbvCK7HW4DOiuDB0KlOS5L4bdDFThI8+65q6Meq1w7
         sHbSFQjvwkTRQGzkjIEfBCcj9K8G2C9rjO/9fnA3RZd2BgvSSx3myxb633Ir+BLnGyv5
         OcCViL9Nl78rWhhYu1sjCCYT+YsyTbTxbuI9zmxdJ6s713POvQHxw7LECypHRTEVQrok
         bSbNGoabg4EBXKovEUOxkEZK3oS+THMGLQh84chdVMtssXFvbiGrr94K6cbj2kpzu6J7
         EFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686062751; x=1688654751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5FgbnJ1bsRAIXrOhPmDZJCKyCj6maHTABysFsvbytiA=;
        b=EzPfkX4Vivrs03rLqA/Iqr4gXgbvIFfR0Ent5lIS6e0x6sq2TeMIXRDmIGvzB0Frtp
         FwFhs/lET1v98stUlbO0AUszKdMvkiUj+4ZfLTI6pdey7TwC5PkDdt88/LezZVJGICu0
         Wyo1++KIVsMlVkycl5qutUVKzOfTgNQA/1xOcs8uFrZvDbrVi0GNsi1MddmrMpqTPaib
         IL1aQyBmWK0/yhBbo+5XNCNJVxU8+h5CnMM2yMnlqChyR7+uUesTK4n3WUfUgPMsig7Z
         +2wdUO+CgKuFCZzW3jlOKPaLdgWGJuFgAqd6VfExcUYdgTr7bJKdq0MKxbYNwz9HnKvj
         KWDg==
X-Gm-Message-State: AC+VfDzhf74oIVdP6O4aNFY+jXaHfnC24d2GinmzhW+ykvlUPj9ixXge
        OZpja1ulj7VllzqM0Lpgi9crQg==
X-Google-Smtp-Source: ACHHUZ7U1PHE+8ZZ1Zs/foB9JcDKRRh8swEoEqzslsBVlhlTq+oksNt09fcoF7V3Gc3jS0KgO8S4Lg==
X-Received: by 2002:a17:907:6e09:b0:94f:29f0:edc0 with SMTP id sd9-20020a1709076e0900b0094f29f0edc0mr2992682ejc.44.1686062751527;
        Tue, 06 Jun 2023 07:45:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c26-20020aa7df1a000000b0051560edc8d4sm5118555edy.45.2023.06.06.07.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 07:45:51 -0700 (PDT)
Message-ID: <dfe2c108-0268-c4d0-226e-b3d2bc8c3369@linaro.org>
Date:   Tue, 6 Jun 2023 16:45:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 3/3] drm/panel-fannal-c3004: Add fannal c3004 DSI panel
Content-Language: en-US
To:     Paulo Pavacic <pavacic.p@gmail.com>, neil.armstrong@linaro.org,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230606140757.818705-1-pavacic.p@gmail.com>
 <20230606140757.818705-4-pavacic.p@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606140757.818705-4-pavacic.p@gmail.com>
Content-Type: text/plain; charset=UTF-8
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

On 06/06/2023 16:07, Paulo Pavacic wrote:
> Fannal C3004 is a 480x800 display made by fannal that requires
> DCS initialization sequences.
> 
> Signed-off-by: Paulo Pavacic <pavacic.p@gmail.com>
> ---
> v4 changelog:
>  - formatting and style changes

Are you sure? I see other changes - removal of some code, handling
errors and GPIO.

>  - change community room

What does it mean? Where is this change in this patch?

...

> +
> +static const struct drm_panel_funcs fannal_panel_funcs = {
> +	.prepare = fannal_panel_prepare,
> +	.unprepare = fannal_panel_unprepare,
> +	.enable = fannal_panel_enable,
> +	.disable = fannal_panel_disable,
> +	.get_modes = fannal_panel_get_modes,
> +};
> +
> +static int fannal_panel_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct fannal_panel_data *panel_data;
> +	int ret;
> +
> +	panel_data = devm_kzalloc(&dsi->dev, sizeof(*panel_data), GFP_KERNEL);
> +

Drop blank line.

> +	if (!panel_data)
> +		return -ENOMEM;
> +
> +	panel_data->reset =

You have wrong wrapping here. devm_gpiod_get_optional() goes after =.

> +		devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +

Drop blank line.

> +	if (IS_ERR(panel_data->reset)) {
> +		return dev_err_probe(
> +			dev, PTR_ERR(panel_data->reset),
> +			"error: probe: get reset GPIO: (%d) Check the fdt\n",
> +			ret);
> +	}
> +
> +	mipi_dsi_set_drvdata(dsi, panel_data);
> +
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_CLOCK_NON_CONTINUOUS |
> +			  MIPI_DSI_MODE_VSYNC_FLUSH | MIPI_DSI_MODE_VIDEO_HSE |
> +			  MIPI_DSI_MODE_NO_EOT_PACKET |
> +			  MIPI_DSI_MODE_VIDEO_SYNC_PULSE | MIPI_DSI_MODE_VIDEO;
> +	dsi->lanes = 2;
> +
> +	gpiod_set_value_cansleep(panel_data->reset, 1);
> +
> +	drm_panel_init(&panel_data->panel, dev, &fannal_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);
> +	dev_set_drvdata(dev, panel_data);
> +
> +	drm_panel_add(&panel_data->panel);
> +


Best regards,
Krzysztof

