Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3D1D6F887B
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 20:10:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233282AbjEESKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 14:10:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233265AbjEESKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 14:10:51 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AE251E9B6
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 11:10:44 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50c8d87c775so1647838a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 11:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683310243; x=1685902243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DQBt9O9556cUDwM/8n6L+XNwPkEzkVWxHyZle1gkXm0=;
        b=dhCOOHqjNDYtwBV3y73eG5mx+qh8+rmCCbutjJWAHpGAuo3a1SADNxeP7V6Ej4h9O9
         GRqFToP2+KM9688fe0iJg6slfqOGXJxkL4cNLxNnxbG6oeG/2hKLy/Jb7UeqfSVDR5MB
         fW0WGcWirra+BdzZDuYZcYUuB3rEDiVxH8XCLgOjQZ8ghU/AEOXxMg+HxeRQjfRJzduS
         ymW5eF5bXMX/goxPRjvg0Px9eeHwH6PDNPz12dGdqsIWgkgjhaIdRH+nC8Q11QRNljcV
         tqRtsROP7PV9wJzfuUtszTYN3vooF3cWh332P4iLzkRZHVaWmkeni38bXNidH6MnDFiO
         0o/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683310243; x=1685902243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DQBt9O9556cUDwM/8n6L+XNwPkEzkVWxHyZle1gkXm0=;
        b=GDoCW6gdcTTCh41Oky90hBkbvlnlOriUt4b6od8PkReaEJg3AHIjiDUvW4yxxXwBC9
         6uPIWkcSpj4nrLZLek04S4nGkKR16QQI3HaT9gTYRbT8iNQobUydLa5S40YBQP2kMrnf
         sK+BKwZVocJoKWXDWrAxA3LJ73WkFCSHzQOwnWqAh1QhfnRWNGvAlhy/ZD3KzSuiROMk
         KzrvDU4D636PXBMNSCVwkr6Zr1Z/O8SHrU1WSs9VM6bBPj/3PLHADTFRV+nwMcn1LFi1
         3niHbhlMHM28jEJt4Gz0TeiFFga83UuPSzv+A61yFTlSGSBX3ucfIkBwYsrObJ4yY1vo
         QVDA==
X-Gm-Message-State: AC+VfDzI+ZC/Z80q8b/nYJvnOq8Yf8HJgN4DQ5eudqwtuJqwv+GovRZh
        qwJo3gRDw9odOgRIbYbvQeOxcA==
X-Google-Smtp-Source: ACHHUZ4CkUu61HPatWQxUGhsYIa4QfVRdHuzWrcLP3IPxF7Im7eghSPNTBdRv5T7vdAgjVLiF3c/nw==
X-Received: by 2002:a17:907:3207:b0:957:48c8:b081 with SMTP id xg7-20020a170907320700b0095748c8b081mr1435683ejb.24.1683310242848;
        Fri, 05 May 2023 11:10:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id t26-20020a17090616da00b0094ee700d8e4sm1233010ejd.44.2023.05.05.11.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 11:10:42 -0700 (PDT)
Message-ID: <a55c7ac8-1037-4509-a16e-83c7894b1a4d@linaro.org>
Date:   Fri, 5 May 2023 20:10:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3] dt-bindings: rtc: isl1208: Convert to json-schema
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Trent Piepho <tpiepho@gmail.com>, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
        linux-renesas-soc@vger.kernel.org
References: <20230505091720.115675-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230505091720.115675-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 11:17, Biju Das wrote:
> Convert the isl1208 RTC device tree binding documentation to json-schema.
> 
> Update the example to match reality.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thank you for your patch. There is something to discuss/improve.

> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/isil,isl1208.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intersil ISL1209/19 I2C RTC/Alarm chip with event in
> +
> +maintainers:
> +  - Trent Piepho <tpiepho@gmail.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  ISL12X9 have additional pins EVIN and #EVDET for tamper detection, while the
> +  ISL1208 and ISL1218 do not.
> +
> +properties:
> +  compatible:
> +    oneOf:

It's not oneOf, but only enum.

> +      - enum:
> +          - isil,isl1208
> +          - isil,isl1209
> +          - isil,isl1218
> +          - isil,isl1219
> +

With above fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

