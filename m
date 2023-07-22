Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51E3F75DB89
	for <lists+devicetree@lfdr.de>; Sat, 22 Jul 2023 11:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbjGVJsE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jul 2023 05:48:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjGVJsE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jul 2023 05:48:04 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D12AE47
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 02:47:57 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992ace062f3so439905666b.2
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 02:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690019275; x=1690624075;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yLhyN8pMB6jGCKau1Y0DkOxv/K9GhrUFRUUPHRidZoA=;
        b=PYsDlJsHqC2NIvqW3vpM2kaYvvqSGX80NAGQi5zg0JUOz0J3OP6vlxfV9UhLJxKi8e
         9oVerDLIyOuLSCHer9SU/TaslcK9ieyNRV4gHynB5rRgdszX4Qvu3QnTOin9CxEf/cev
         S2BsAilTgGmrILfxCwnZOoXYBNL+/g2WVcOY230jsFaZZAHkTzbAC/lMHbYgyB8JQw/I
         F1tDFSXhsr6wwa+uxm5BCfytZUh9Pe7CM1AOZrnl0zJET3LVF/lME8DH22/vSGbIAwCf
         1q1KPCt28Nz2t5Xk4LZloyYnzYGJ5gtGPARtzShmKBurzHaKQZCw1Phe2SEUwDkgnPeE
         XpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690019275; x=1690624075;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yLhyN8pMB6jGCKau1Y0DkOxv/K9GhrUFRUUPHRidZoA=;
        b=Vdypd2+t3bHMjljhdd8qDRBGb1PFo02uUG7B8C3pYPFoPx9rDYeRfSati83/VKDtei
         zWcBeSFcHcherhAgF+i4OVEYOLhTjvA/bLzO8/ovF7d/FHt9QdBDoSpH8Nsp9qCXd66k
         gd2IqaB02iw5Ofr8UTSi8PU6ez/yR2hmd7Gy092Ig2vVVAzb25+LYCuaWH4XrVShYGaq
         u+fZrXhkCLSBFNIFA++PmJ2HlzfFb3nxM8MOAR6tv++GJuU2qrCV9b/P4RQtsSCfJn4Y
         WkFyKQFwYB1O+JoXxgrea4EM0D1+a00xsm/TLDQ+E2lAXPT0xUCdEx1eZ8dhZoHUfOvh
         ngrQ==
X-Gm-Message-State: ABy/qLZt5afzU3BfPMzusCN4modmuDscDBmGQrCTvyPq6EEjTHbf3J3P
        yzLogKJsgH3m1O8GJ/kWPv0FUw==
X-Google-Smtp-Source: APBJJlHpXQtfsV1kOI9SsnQcshgNy2EdmTDJEHkIgT96bphtZgnz3hjkYk8eOV1GY8fH8HJ2c52grQ==
X-Received: by 2002:a17:906:3048:b0:992:4e20:bca4 with SMTP id d8-20020a170906304800b009924e20bca4mr3930676ejd.42.1690019275598;
        Sat, 22 Jul 2023 02:47:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ha5-20020a170906a88500b009944e912849sm3313353ejb.199.2023.07.22.02.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 02:47:55 -0700 (PDT)
Message-ID: <c3e3b35a-e399-6739-1b01-e6f701af965c@linaro.org>
Date:   Sat, 22 Jul 2023 11:47:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: i2c: arb-gpio-challange: convert to DT
 schema
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>
Cc:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230721133035.15222-1-krzysztof.kozlowski@linaro.org>
 <CAD=FV=U1humE-MrCgWmDqSjGZPnzP04-ScGcY7yBETuW-viyHQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=U1humE-MrCgWmDqSjGZPnzP04-ScGcY7yBETuW-viyHQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 20:06, Doug Anderson wrote:
> Hi,
> 
> On Fri, Jul 21, 2023 at 6:30 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-arb-gpio-challenge.yaml b/Documentation/devicetree/bindings/i2c/i2c-arb-gpio-challenge.yaml
>> new file mode 100644
>> index 000000000000..17f15490f073
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/i2c/i2c-arb-gpio-challenge.yaml
>> @@ -0,0 +1,138 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/i2c/i2c-arb-gpio-challenge.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: GPIO-based I2C Arbitration Using a Challenge & Response Mechanism
>> +
>> +maintainers:
>> +  - Doug Anderson <dianders@chromium.org>
>> +  - Peter Rosin <peda@axentia.se>
> 
> While I don't object to Peter Rosin being listed here if he wants it,
> I suspect that you added him because he was the author of
> "i2c-arb.txt". I guess that file was really only added to try to keep
> things common between this GPIO arbitrator and the one that he cares

I added him because he was listed as maintainer of all arbitration
bindings (as part of I2C MUX entry in MAINTAINERS).

> about: "nxp,pca9541.txt". Probably he doesn't want to be added here.
> 
> Speaking of "nxp,pca9541.txt", it seems like you need to convert that
> before removing "i2c-arb.txt". It still refers to that file even after
> your patch, doesn't it?

Indeed, thanks. I will convert it.

> 
> In any case, other than that, this looks fine. Thanks for doing the conversion!
> 
> Acked-by: Douglas Anderson <dianders@chromium.org>


Best regards,
Krzysztof

