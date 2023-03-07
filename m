Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 109446ADD13
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 12:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjCGLQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 06:16:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230296AbjCGLPj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 06:15:39 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECF691ACD8
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 03:13:32 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id by8so12748669ljb.7
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 03:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678187607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JOb+ese1G9EOeUzjmNMkD2P+gItFSqPvD5nHFyy1oPY=;
        b=f5j1teKS1STo0sB3a7p3ugHg4el2apLby6L25iQkSUf7jFZm3Ew3v2gR7FTZZiuH2F
         7cBvegoFfuW78HToK5NFrGtU3BJfe0VMsxofysPywYmmBxRj7esfOcBD/GvGmeNpfKoN
         uwyeY5aXuP5yxxeDPYtgwOBTASP632TnNs6oNIlSm3osjixi3WFaRYGZIQT9EcyyRqri
         0x9dxcUeW/c6PWDVz1bioM649Ap4obHsNZATC1nlWDl7Vp6ZE4L/w0J/7yOMH7oGZoHa
         EG9slI+u5gNr+XNxqRHuN1sfWNuAUoDBAOslrT77JEctmorii4nlU+xhgdiOmjAdc3BV
         IoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678187607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JOb+ese1G9EOeUzjmNMkD2P+gItFSqPvD5nHFyy1oPY=;
        b=VSav1JNKmYvmFw0oYTvPnjLXJbvuGEBfjS1s7rHNFvbHsfoWkWxEI3UZ8V5OfSXCUl
         DoDu1DV/IEbLoeQ4pXNf5RwJj2Qrf+h5Dr7o5f+kKDSIUDBEicXBuO0ilk5Kxk8JMl+C
         hQCGYhOyhs1UtQe1lqjuNT/GT9SGGQWjebUzrpyWKUgCOWqxFflYYcXsziBDl4M9yoIp
         +oIOYrUHxNVKfHEGA24hNr/Awopo7GdvMMKGTAD3vhgho6bGqlA8duj5Sh3kBNpFnhKk
         KHaU6vIA61hAcXNzCTe/u+rrypb+xrr21PdihPmEbfoGX/ESxwymPeUN1fVHpdJ6coDP
         b0hg==
X-Gm-Message-State: AO0yUKWy3CXVWx7tlHeSrsTaH2Y+OIP9oVL0iAoOfAWsG6dTgmO0tU18
        +sxCgjZg5jrE6Rt1+I1K1pHIUw==
X-Google-Smtp-Source: AK7set9G9umUriGHuIBtEjMY7Oj/2R8YqqszMz6w+ITLJyztplcz7ffXvIOH2pSgTXs3O6OHl6KwYA==
X-Received: by 2002:a2e:86c4:0:b0:295:965f:415 with SMTP id n4-20020a2e86c4000000b00295965f0415mr3945621ljj.10.1678187607676;
        Tue, 07 Mar 2023 03:13:27 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id b15-20020a2e988f000000b00295a50e7529sm2148793ljj.90.2023.03.07.03.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 03:13:27 -0800 (PST)
Message-ID: <e9ec543a-0da6-9314-9e9e-62f7ede9efaf@linaro.org>
Date:   Tue, 7 Mar 2023 12:13:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] gpu/drm/panel: Add Lenovo NT36523W BOE panel
To:     neil.armstrong@linaro.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230217-topic-lenovo-panel-v1-0-9d7ee1602089@linaro.org>
 <20230217-topic-lenovo-panel-v1-2-9d7ee1602089@linaro.org>
 <6c58497d-47c4-002f-4f39-977706f9df87@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6c58497d-47c4-002f-4f39-977706f9df87@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7.03.2023 10:19, Neil Armstrong wrote:
> Hi,
> 
> On 17/02/2023 12:29, Konrad Dybcio wrote:
>> Introduce support for the BOE panel with a NT36523W touch/driver IC
>> found on some Lenovo Tab P11 devices. It's a 2000x1200, 24bit RGB
>> MIPI DSI panel with integrated DCS-controlled backlight (that expects
>> big-endian communication).
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>   drivers/gpu/drm/panel/Kconfig                     |  12 +
>>   drivers/gpu/drm/panel/Makefile                    |   1 +
>>   drivers/gpu/drm/panel/panel-lenovo-nt36523w-boe.c | 751 ++++++++++++++++++++++
>>   3 files changed, 764 insertions(+)
>>
> 
> <snip>
> 
>> diff --git a/drivers/gpu/drm/panel/panel-lenovo-nt36523w-boe.c b/drivers/gpu/drm/panel/panel-lenovo-nt36523w-boe.c
>> new file mode 100644
>> index 000000000000..83478e471493
>> --- /dev/null
>> +++ b/drivers/gpu/drm/panel/panel-lenovo-nt36523w-boe.c
>> @@ -0,0 +1,751 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2023 Linaro Limited
>> + *
>> + * Generated with linux-mdss-dsi-panel-driver-generator with
>> + * some manual adjustments.
>> + */
> 
> <snip>
> 
>> +static int nt36523w_boe_bl_update_status(struct backlight_device *bl)
>> +{
>> +    struct mipi_dsi_device *dsi = bl_get_data(bl);
>> +    u16 brightness = backlight_get_brightness(bl);
>> +    int ret;
>> +
>> +    brightness = cpu_to_be16(brightness);
>> +
>> +    dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
>> +
>> +    ret = mipi_dsi_dcs_set_display_brightness(dsi, brightness);
>> +    if (ret < 0)
>> +        return ret;
> 
> It's not wrong as is, but could you switch to mipi_dsi_dcs_set_display_brightness_large() ?
Sure!

Recent-ish panels only talk BE brightness data, very cool that
somebody made a wrapper for this!

Konrad
> 
>> +
>> +    dsi->mode_flags |= MIPI_DSI_MODE_LPM;
>> +
>> +    return 0;
>> +}
>> +
>> +static int nt36523w_boe_bl_get_brightness(struct backlight_device *bl)
>> +{
>> +    struct mipi_dsi_device *dsi = bl_get_data(bl);
>> +    u16 brightness;
>> +    int ret;
>> +
>> +    dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
>> +
>> +    ret = mipi_dsi_dcs_get_display_brightness(dsi, &brightness);
> 
> And here to  mipi_dsi_dcs_get_display_brightness_large() ?
>> +    if (ret < 0)
>> +        return ret;
>> +
>> +    dsi->mode_flags |= MIPI_DSI_MODE_LPM;
>> +
>> +    brightness = be16_to_cpu(brightness);
>> +
>> +    return brightness;
>> +}
>> +
> Please send a v2 with those changes and keep my reviewed-by
> 
> Thanks!
> Neil
