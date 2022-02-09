Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 048BE4AF00B
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 12:43:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbiBILn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 06:43:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiBILn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 06:43:28 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13942E171CF4
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 02:34:20 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 73CC53F324
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 09:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644397644;
        bh=ukUcgEqDwtgLJM31dxy+4xX8XcrHusscNiWdsQHxisk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=UZ3DiYldzlMrIWAwQzMLm/gzw01IiE5656OqN40moJa8sjNwlYBnP/oSvNtj5MJqu
         us8EOR13OOwS50XKvSOriCSSjeABQe+ak+PsJefOUvWUWNh+t6GSZ20RSDTkoNIqFW
         KyZJP7t9hGW0WChY7ixPpSaTaX6dKD/IBpcJeb2JA7pWKJ+4GSQpWOXqA3YpOlPoK2
         zrS0gVa1RjMz+SykrFtlbYEg5Y0NkYJqAmFayB8wJreioArKWGpQa1MKaIq08BZ99U
         jyK7GnH/BAz8OznmST88Yd/7BRz+ANz2YYcOv1A0lg3871KtPwUI0+Uto9uFnc4kcw
         +4lVGtZ1rsF2Q==
Received: by mail-ed1-f72.google.com with SMTP id bq19-20020a056402215300b0040f276105a4so1024090edb.2
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 01:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ukUcgEqDwtgLJM31dxy+4xX8XcrHusscNiWdsQHxisk=;
        b=ivizDXJ5yU4IiK/KFE6kk0ZCO3vN4/MrxKWfyFsMhgGC1saK68F53V6m4EsxBrQ3JM
         qcG3/LcxCXHpQu+mzcHT9+CorQoSFOHVq3BWuSgkihYXrK1hDKDzaYGnKHz8xyPVZJ29
         af0xlxQVzqP85/8NOMHYxZv3fvtAa7sOINswQcc8sqMCTvryYB8czCtnvHwpXdlXvHxZ
         54nNPj/gVXTSL4h38b5NfxfC83lX06cfrAP1FUu/aTmVz+no/h3lJDz0FRyruIsTgUu3
         j6kGp3rFyfTh11zazhesQKCyggjfCYUSTbwynn6Z0S7+sYKr8eyiGFZnFx8Pz0Bx1YSx
         xGKA==
X-Gm-Message-State: AOAM530t/hcKslRgRLXLPTzwrE3qopt/fprjvyPA5o/ubWJursjUlAsq
        NAsEt1hUxMlmb7AmDLY665XDm8rP4sQSoTmmQmhP4z50myR4cCerGt2GCxkuDJM+7TbU6uXROys
        iM6fUOTKenJ35ntIZftF+T9upQ2mAdqu80X/1+2c=
X-Received: by 2002:a17:907:948c:: with SMTP id dm12mr1116260ejc.770.1644397643710;
        Wed, 09 Feb 2022 01:07:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy9uxWgVcPknk7fehf+KnxlsIBkuqa3Vzp0iYYmlZOw5P2qEBJnVCBCmibBMCkfMCTZST/mHg==
X-Received: by 2002:a17:907:948c:: with SMTP id dm12mr1116243ejc.770.1644397643507;
        Wed, 09 Feb 2022 01:07:23 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id j20sm262008ejo.27.2022.02.09.01.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 01:07:23 -0800 (PST)
Message-ID: <1196e292-23ea-78e5-7d72-38586f65e26e@canonical.com>
Date:   Wed, 9 Feb 2022 10:07:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: timer: Convert faraday,fttmr010 to yaml
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, daniel.lezcano@linaro.org,
        robh+dt@kernel.org, tglx@linutronix.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220209090058.1472964-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220209090058.1472964-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2022 10:00, Corentin Labbe wrote:
> Converts timer/faraday,fttmr010.txt to yaml.

s/Converts/Convert/

> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Changes since v1:
> - added moxart example
> - relaxed some contraints as driver only support one clock and one
>   interrupt (as used by moxa,moxart-timer)
> Changes since v2:
> - increased max size of interrupts
> - fixed all issues reported by Rob https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220126160021.3537591-1-clabbe@baylibre.com
> 
> All aspeed-bmc-vegman*dts are expected to fail and will be fixed via:
> https://patchwork.ozlabs.org/project/linux-aspeed/patch/20220127141604.1163-1-a.kartashev@yadro.com/
> 

(...)

> +
> +  syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: true
> +
This should be false (and was false in your v1).

Best regards,
Krzysztof
