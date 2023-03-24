Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 935EC6C7D74
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 12:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjCXLss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 07:48:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbjCXLsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 07:48:47 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 927041FFC
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:48:46 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id o12so6843583edb.9
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679658525;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e8LtNo9O+N2urrNpkv74xPVkcVBPtljyRPq/ezfzVBE=;
        b=rI+XgDA/H+XuKYBqgGmgj0mj37fzfUDe7gDew0ugQBK+ayvpgkpx0sKAgfpQrVgVPc
         2ioMJcGrktbmW2Lv37II6n2IDGxydQIqCzQjcaag2dpAGzpm7WrrowwTJH57ajwq382f
         ZD+mKdkJhlJM9gueKNoCXDDh59imz8rUhYn/NiO1k3q3jZeoseDkK58MkhaDuAIW/UEZ
         obz+ZnJAzSNBTr8fOcquo3Ok15UO5YW75gr3WgVyYoD6NRmuCfUXz1QhFyVPP62Ofb91
         lSQ7khRiYqgksVeyH8fOWS9NJIQaARz1RQsVvrccon3nTti/TygLjD1/Ducxw2gm1ITK
         rFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679658525;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e8LtNo9O+N2urrNpkv74xPVkcVBPtljyRPq/ezfzVBE=;
        b=4dLVwEuZI/2GOzRssRXsF0M9a1xmixam9lLI8CwRcnXlmIvs9yJY5iTi2PTXemQBlB
         3GkO6D1H9/gxpdWUebo+utofNvNPx+bWBUB6ov8mD6x3CWZEaYrKjOhihMghhDze2ktk
         YuowRlUr4vEd/eGHPM4hDh2AjmMoXGIKZf7YL49koTUuAXGoQL4yagnWXptpqBlesZ/+
         uDeML8hAhiNmYxc9503n+btPX7kFtdzaeaSNbqVjdiAq2wYEKSeTIkSAUp7Mk83xkRw5
         PDTP8goIyN8y9xCaHMjLi9heT6MuCHWphDcKOoSAYVauyGEtQXASuEFw+ZHznhyYm103
         ziUA==
X-Gm-Message-State: AAQBX9e1qC5bInqGnkDjXW2Ga7aWE5HUrEOk8LTQQao6hyEStpxOwU9N
        v7BCUbQ42D/6poR/yo0HkNm4yQ==
X-Google-Smtp-Source: AKy350Y+nkI7+I9GQMdFtSG2iD87jfm69SH6LIPv9KX3N+Z4mg0ptJ3fVUsTNB68LSUeqAJXiOf4tA==
X-Received: by 2002:a17:906:580b:b0:931:20fd:3d09 with SMTP id m11-20020a170906580b00b0093120fd3d09mr2415525ejq.17.1679658524922;
        Fri, 24 Mar 2023 04:48:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3027:fb0b:ae08:588? ([2a02:810d:15c0:828:3027:fb0b:ae08:588])
        by smtp.gmail.com with ESMTPSA id y12-20020a17090668cc00b008d044ede804sm8084789ejr.163.2023.03.24.04.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 04:48:44 -0700 (PDT)
Message-ID: <4f90e84b-1a9e-bc96-c9b3-12f95ea7bcff@linaro.org>
Date:   Fri, 24 Mar 2023 12:48:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v6] ASoC: dt-bindings: Add tas2781 DT documenting that
 binding along with the driver
Content-Language: en-US
To:     Shenghao Ding <13916275206@139.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, broonie@kernel.org,
        lgirdwood@gmail.com
Cc:     kevin-lu@ti.com, shenghao-ding@ti.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        x1077012@ti.com, peeyush@ti.com, navada@ti.com
References: <20230324110929.27710-1-13916275206@139.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230324110929.27710-1-13916275206@139.com>
Content-Type: text/plain; charset=UTF-8
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

On 24/03/2023 12:09, Shenghao Ding wrote:
> Create tas2781.yaml for tas2781 driver.
> 
> Signed-off-by: Shenghao Ding <13916275206@139.com>

Where is the driver? Why are you sending these separate? You already got
comment about wrong threading, so I really expect some improvements.
> 
> ---
> Changes in v6:
>  - Remove all the "|" after "description:".
>  - Drop the reset-gpios description.
>  - Be consistent on the I2C.
>  Changes to be committed:
> 	new file:   Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> ---
>  .../devicetree/bindings/sound/ti,tas2781.yaml | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> new file mode 100644
> index 000000000000..af37595f3a6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 - 2023 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,tas2781.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TAS2781 SmartAMP
> +
> +maintainers:
> +  - Shenghao Ding <shenghao-ding@ti.com>
> +  - Kevin Lu <kevin-lu@ti.com>
> +
> +description:
> +  The TAS2781 is a mono, digital input Class-D audio amplifier
> +  optimized for efficiently driving high peak power into small
> +  loudspeakers. Integrated an on-chip DSP supports Texas Instruments
> +  Smart Amp speaker protection algorithm. The integrated speaker
> +  voltage and current sense provides for real time
> +  monitoring of loudspeaker behavior.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,tas2781
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      I2C address of the primary device.

What happened here? Rob's comment seems ignored and now we have
description without anything useful.

> +
> +  reset-gpios:
> +    maxItems: 1
> +

Best regards,
Krzysztof

