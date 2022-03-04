Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 713F24CCFAB
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbiCDIMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230126AbiCDIMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:12:05 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84C461965C4
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:11:17 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 061F23F5F9
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 08:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646381475;
        bh=079WhDvsQsd4+AC1TE22JsWE+FsGWAHbTwzZ9wEQgqI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=IFxgM6qYjC3XnYnA5fQDGIu9Z0bcbiNOKQtZlI0JrRpIDqWzaEPuyskpYuzi4UW/i
         bSTrZnqkZBLBAlJ8NYyK2oI4U6UTIB2thkJnEw2hbydIdL+33+7R+l3PC5uDU3l8UE
         Kd3U058l6EU/pwaIcMMfKOLWk+gCdkDcqFN6KAtiPI6yPcRj5ua8W/YDNSzBGogmvj
         CVQOp7vRdd4gDYJy0M6E5yZsyrbCgePgH9cPFbCYm/7Tl4PYlvuioLBDa9eUPr7Ihi
         GBwYXDNtQgCYvjIfn03K2Hl+bNeAC9GdhqBQufyDlMW0udrjDmiUMuHuSVKaL/VxPa
         wwgm8imHx7hQw==
Received: by mail-ed1-f72.google.com with SMTP id y10-20020a056402358a00b00410deddea4cso4208452edc.16
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 00:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=079WhDvsQsd4+AC1TE22JsWE+FsGWAHbTwzZ9wEQgqI=;
        b=gPE9ovG3D3wmA7x2okI48Z0ri25c4qQs7SQeRvOrMjllT4QgpFyHR6s3VwrS5dbtfn
         y1lxl4mJGvIeBcfX6E5FZ4oawlFz9MR7kcM+6/CJ60FGlLynrwchSGlqU/9fdwBVYeY1
         r+zOTjZOdQPOrzKqDebDcVWBFtZKNl8W9SbRa8FNMfWhuLcKXQThEKq/nEOyfEY4gbKM
         ammfsehTFItxYuUwA0rQ+Yv6A8v0u7a6W7/sA4EHgIR3f+OC0HZkbJ+Ikw2BBpQxvbXr
         L8/1phfxtuIjAXKdyK8Rsdt8+fcGOHvZt7VvJD1j0DcT5jurLaTmCcsKKfOWCARlnXqb
         e1JA==
X-Gm-Message-State: AOAM533WVJ7DwcJyxCzvPnH+zKZkNLNJzCkz043YkUtBiJsdSBZ9HiBs
        lMgPv2VLBDQVMla0yj/ip+bOJcDJlo/rJbn+qZT7Rr4OeDsjMH3HStfp4RC8M9ykkDayLcqjzZo
        2PFB7fiHmk1CzlK84pCKx91HXXO+RCq8xNmzcsQ0=
X-Received: by 2002:a17:906:7706:b0:6d6:e521:5471 with SMTP id q6-20020a170906770600b006d6e5215471mr13458564ejm.387.1646381474660;
        Fri, 04 Mar 2022 00:11:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJykdULPAXZXHqBVxP+e9NDn6PTTMWVN0rWd0x/QKLOfXHF/zyK4wYYwWRYiMIDxZziDWN59XA==
X-Received: by 2002:a17:906:7706:b0:6d6:e521:5471 with SMTP id q6-20020a170906770600b006d6e5215471mr13458548ejm.387.1646381474401;
        Fri, 04 Mar 2022 00:11:14 -0800 (PST)
Received: from [192.168.0.138] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r7-20020a170906548700b006d4f4eccd24sm1484465ejo.77.2022.03.04.00.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Mar 2022 00:11:13 -0800 (PST)
Message-ID: <898d5cd5-efd6-831e-5a47-ef4e59482624@canonical.com>
Date:   Fri, 4 Mar 2022 09:11:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Content-Language: en-US
To:     Georgi Vlaev <g-vlaev@ti.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        ldewangan@nvidia.com, nm@ti.com, vigneshr@ti.com
References: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
 <20220304080811.45132-1-g-vlaev@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220304080811.45132-1-g-vlaev@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2022 09:08, Georgi Vlaev wrote:
> Convert the TPS62360 regulator binding to DT schema format
> using json-schema.
> 
> Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
> ---
> V1 -> V2: Make the example indentation consistent.
> 
>  .../bindings/regulator/ti,tps62360.yaml       | 99 +++++++++++++++++++
>  .../bindings/regulator/tps62360-regulator.txt | 44 ---------
>  2 files changed, 99 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/tps62360-regulator.txt
> 
> diff --git a/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
> new file mode 100644
> index 000000000000..525e9a46ce1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/ti,tps62360.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TPS6236x Voltage Regulators
> +
> +maintainers:
> +  - Laxman Dewangan <ldewangan@nvidia.com>

It would be good if Laxman acks this, but from my side:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
