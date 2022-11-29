Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EBBB63BB47
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 09:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiK2IMO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 03:12:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiK2IMN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 03:12:13 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C3D656D54
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 00:12:11 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id j4so21311137lfk.0
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 00:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xeIAyDjEJnBvYeV0qZkCC/xSer38lroB7hlZ6Bpy9D8=;
        b=QIhiG3sxHhzx3SogiNBl8JXjMovrhbAelVJRtEYkDjciVO5+Y+halevHvlFz3SP3AQ
         k4WOmqGDcE8tUCfJgvn74q0LFazOCrO2/F1rMFVMboV0AuMipElzYiLats/ZLjbPP9SB
         MRlGal7BnqUNwfOuy31YiAQhOqSBMpxdWPBuPJ0cDIetN1bBHnHsCtNiHR8vzimHtEPj
         fPCKcUoTVV5qLChVPy5hn4PpGi/KcCGTkcl6xjyYI0h7cCUaVJqJh7o9C/12gTo28ILm
         +eHlihvdmth1z4gbqoJ+zO3aY5TiLJHTafDEiSF97LPtgAnkWGD/iG0hm5FQXE56HX8w
         rCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xeIAyDjEJnBvYeV0qZkCC/xSer38lroB7hlZ6Bpy9D8=;
        b=cPS6Gh3afwZq+XnY87Ar2ZFPyALZUzA8bQ8g3ytIdX5nz7FbT57EBWtOPnJoVHnROW
         XqbXnuac8twnrUbQ18wNnANOsMbwTAS0Wot++UEiAXZMmrgu8xqu2HVeBufK1wrbcl/+
         c/jUw6ZsuaT4b9834DBmlwaEPQMCzSnZepmaOFS6tZf6MeGAdao/DPcvOfQygsjatDMT
         eKA23BiZK9WyJXGaFVRpDT9gNWmM84LQ30+8l12bNu2zS46quDzivPeYDMIp63FGkGur
         szeZxpRCqSjHjdKDkTtGLCgZ5/ckwcpESKHWCOsmSq5ratU7++uzSu5V0e4tgZOU4MgF
         v+VA==
X-Gm-Message-State: ANoB5pn04dv3aEUpIksrXWWgrQHlddGa0NUfj3YseAMqoeX/QzfPpd0p
        JOxQaxEV7cNaIV8CYEsw4KOjTA==
X-Google-Smtp-Source: AA0mqf4ZPxfn3ozzitVTWganzHU9BGjc12nkj8QPpZrZKKpwCWI++8cY5zxKNGNb2k+k/MzbDo8NzQ==
X-Received: by 2002:ac2:58d7:0:b0:4b4:fbce:606b with SMTP id u23-20020ac258d7000000b004b4fbce606bmr7107136lfo.27.1669709529913;
        Tue, 29 Nov 2022 00:12:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s5-20020a05651c200500b00279aca77a54sm216811ljo.60.2022.11.29.00.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 00:12:09 -0800 (PST)
Message-ID: <c35917d1-dfbd-f7d9-5c94-a9f0ee3b7ed8@linaro.org>
Date:   Tue, 29 Nov 2022 09:12:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v7 1/4] dt-bindings: hwmon: fan: Add fan binding to schema
Content-Language: en-US
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>
References: <20221121122932.2493174-1-Naresh.Solanki@9elements.com>
 <20221121122932.2493174-2-Naresh.Solanki@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121122932.2493174-2-Naresh.Solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 13:29, Naresh Solanki wrote:

> +  pulses-per-revolution:
> +    description:
> +      The number of pulse from fan sensor per revolution.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  target-rpm:
> +    description:
> +      Target RPM the fan should be configured during driver probe.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  pwms:
> +    description:
> +      PWM provider.

Ah, so it is not a PWM provider by this FAN controller? A bit confusing
description. Instead maybe:
	PWM signal for the fan

and do you expect more than one PWM for one fan?

Best regards,
Krzysztof

