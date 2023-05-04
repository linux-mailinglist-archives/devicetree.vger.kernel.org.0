Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08DE16F6546
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 08:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbjEDGvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 02:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbjEDGvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 02:51:50 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF475359D
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 23:51:48 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so112533a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 23:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683183107; x=1685775107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XkriIEnF+SMi7XmO2oQEpJ9/7UJVN1m657QRAcHFU2I=;
        b=J3GbqpxAY4W/MgxqPnU150ta59l75BznB3UgAPNMxO6JGTcgVV95AJ2L9yyY+oE8dB
         GBe5ZacDzmN9jbnRJ9S/TeKGM7SbiouSk47W/IQxs5DLNNwu3WmkCCV17kOV5tAH/GfK
         PVZEKFlNGlOVAIfKI9NvLmX+N23P5f+FHixLw5s1pvCJPhtxmqy7OYoT++pnQeClRzTa
         3v1bbHRVAjWrKYLr0xpjLKAUGFbvnkSq+nrvmXSOt6vS1s+6AHPGWcGF31XhkHHoVxV4
         W0lyAPzs9gEr3myvQwBldjIsszJSgtd/cxu/tmIXfW4+wqm1jvlsHLzdVNGW3Ob+w3Mz
         dhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683183107; x=1685775107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XkriIEnF+SMi7XmO2oQEpJ9/7UJVN1m657QRAcHFU2I=;
        b=U4nnbdg5NCi76TR8V5x0M021fcoNdES4TbsVP9ABYbJHZUtKvqEvDEBpOSvX6aEz5Q
         PInzgG/Vi1B/x13cBXaw3DxDEpKbjG29qoXtEL+CxDQ5ClYLZOCb/hls/jXcM+s54/ee
         eqaUt8YvG8bBiFxScvpdHXTQCPwzQ4To/L0hvvD1+tHKXr+SVygx514v35+IcOVJGjgI
         WGRMaS/VnpVsgMWO41pCVm+aVzxmD00yQ/FpZW5qBIpNUjA79Rsieo6Lspfu6EROfHpG
         ml4i25Uya5DZhD8mCRbp6wbY1A17gM8y7lHvv03FI2CRBzgcPOLftRRMNKy3y1exL484
         qUyQ==
X-Gm-Message-State: AC+VfDyDOiIEy5xm84QDwij/OV+l9GPZBWy6AFACBq8A080+yijhIoOO
        EOhetN+aWzx8+AKCM3StZkYhTMz2sVIh4ECqkeRliJ8e
X-Google-Smtp-Source: ACHHUZ6M1HW1OJBBntDHesKB293NwEgDd5tSONL4R5C7U9TnYJfZLcDt8psT86IVYo2nmcnZF1fEGQ==
X-Received: by 2002:a17:907:868a:b0:95e:e0fa:f724 with SMTP id qa10-20020a170907868a00b0095ee0faf724mr5639869ejc.39.1683183107411;
        Wed, 03 May 2023 23:51:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id lh15-20020a170906f8cf00b0094e62aa8bcesm18368176ejb.29.2023.05.03.23.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 23:51:46 -0700 (PDT)
Message-ID: <9ece615f-0a6b-fff4-e129-ea7ca224a6a8@linaro.org>
Date:   Thu, 4 May 2023 08:51:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v5 1/3] dt-bindings: misc: esm: Add ESM support for TI K3
 devices
Content-Language: en-US
To:     Neha Malcom Francis <n-francis@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, u-kumar1@ti.com
References: <20230503123212.208457-1-n-francis@ti.com>
 <20230503123212.208457-2-n-francis@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230503123212.208457-2-n-francis@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 14:32, Neha Malcom Francis wrote:
> Document the binding for TI K3 ESM (Error Signaling Module) block.
> 
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>

???

You were already asked to keep it and it was in v4, so you had to
explicitly remove it from your git... It takes me time to figure out
what is happening here. But ok, if you do not keep my review, comment
follows.

...

> +  ti,esm-pins:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      integer array of ESM interrupt pins to route to external event pin
> +      which can be used to reset the SoC.
> +    minItems: 1
> +    maxItems: 255
> +
> +additionalProperties: false

Put aditionalProperties after required:, just like in example-schema.

> +
> +required:
> +  - compatible
> +  - reg
> +  - ti,esm-pins



Best regards,
Krzysztof

