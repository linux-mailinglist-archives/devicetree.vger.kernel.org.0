Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDBE84ADDCC
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 17:00:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358595AbiBHP72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 10:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241111AbiBHP71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 10:59:27 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2832C0613C9
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 07:59:24 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E3A154004C
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644335962;
        bh=GCejdhR+a/xBJu0EdDNmDz0h5nAc0bdug5YEZYD9D0o=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=d6dKpMYQ7SqpS6VioALkwrSX/7lH0jVSalazDnvVWhF4ZpEoixxyrA/mbodWQNFxw
         bC16r3FexJ8wqrnnr7hd/yqQv1FS1G5ml4nZOeexf7hMGRwuhW2HWF567xxuJBmiPJ
         dqbWBkpONGPWH24tHGJ8QMD6O9jtdUJcXzcBQ6rZAAEdelmY5sr+Bg0HYH3WRIMkKn
         1otuQiX0zGw/LpPHHQblBqr50OAzBoTYmhlrjrA8Uf8kZs/1CcRruSVU1B7N4q5eFi
         pbXWebr1t5dj9SoW08IVipWBoiUKeFEU8Kg4I2kY5ckW/zAoshtvBAcugabtWceZrZ
         WX3wjj22etH/A==
Received: by mail-ej1-f70.google.com with SMTP id o4-20020a170906768400b006a981625756so5956331ejm.0
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 07:59:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GCejdhR+a/xBJu0EdDNmDz0h5nAc0bdug5YEZYD9D0o=;
        b=Qvmj2Bk0WjlgKl9i0WdE2YAsk1tBPJI8qqQdGstAuMhLYxMV67T150k4CdAu9RcF2n
         QazVqixTBebgIGaQTHw4MwQW/N4PSR0BDCV5k23NSdGDQ2WeGvFtB+beZ2D1eywFYLzf
         DxB8NjybFl6lTyWoZjs+g85MbKskLRy7befWjivu8kS3Bm1I2U7zixS1jWKXNdViB/Wf
         eRFcFl9H70llDXhZoz874J6WGLMhnVzqvM+PIyUphIlDUpll5wLfm8kb/ATE++PSMPCO
         op9XZ+VAIIi8XnN6Qt+4QvGPitTueR74vPabt/J5HKHZ68LnrO/6ZeBB96GORVllq+Hf
         Flyw==
X-Gm-Message-State: AOAM533pOAkKDOsgFiPkuWxgQnIREBs3W5rT9ZFyN1Lnyg5g7c4DFt8R
        +7Vahns2R8xbmYrc7wBsxbRjUat+gXROn2xlAKk6lPcJZPAxHMCseZ+d44Qv67dgsx2LH7xtBeG
        rB6en1nH94663NczkDuUq2VQEcb/YZeO8ZwWuz8Q=
X-Received: by 2002:a17:907:60d0:: with SMTP id hv16mr4209710ejc.668.1644335962376;
        Tue, 08 Feb 2022 07:59:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzzMWiC01ysSyAaBuDoWTE5s3bHip+jTOUASLhVK6NUfNE19TNoA/lCw7TRiHSeEzA5hH0AUg==
X-Received: by 2002:a17:907:60d0:: with SMTP id hv16mr4209691ejc.668.1644335962134;
        Tue, 08 Feb 2022 07:59:22 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id q4sm4956884ejb.109.2022.02.08.07.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 07:59:21 -0800 (PST)
Message-ID: <fea9a9b3-5e15-e177-a0ee-ac08fa2b91ab@canonical.com>
Date:   Tue, 8 Feb 2022 16:59:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/3] dt-bindings: crypto: Convert Atmel SHA to yaml
Content-Language: en-US
To:     Tudor Ambarus <tudor.ambarus@microchip.com>,
        herbert@gondor.apana.org.au
Cc:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com,
        alexandre.belloni@bootlin.com, linux-crypto@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kavyasree.kotagiri@microchip.com, devicetree@vger.kernel.org
References: <20220208104918.226156-1-tudor.ambarus@microchip.com>
 <20220208104918.226156-4-tudor.ambarus@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220208104918.226156-4-tudor.ambarus@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 11:49, Tudor Ambarus wrote:
> Convert Atmel SHA documentation to yaml format. With the conversion the
> clock and clock-names properties are made mandatory. The driver returns
> -EINVAL if "sha_clk" is not found, reflect that in the bindings and make
> the clock and clock-names properties mandatory. Update the example to
> better describe how one should define the dt node.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  .../crypto/atmel,at91sam9g46-sha.yaml         | 59 +++++++++++++++++++
>  .../bindings/crypto/atmel-crypto.txt          | 25 --------
>  2 files changed, 59 insertions(+), 25 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> 
> diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
> new file mode 100644
> index 000000000000..e454f4468dc5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/atmel,at91sam9g46-sha.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel Secure Hash Algorithm (SHA) HW cryptographic accelerator
> +
> +maintainers:
> +  - Tudor Ambarus <tudor.ambarus@microchip.com>
> +
> +properties:
> +  compatible:
> +    const: atmel,at91sam9g46-sha
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: sha_clk
> +
> +  dmas:
> +    maxItems: 1
> +    description: TX DMA Channel
> +

One-item-description should work as well, so if you are going to resend:

+  dmas:
+    items:
+      - description: TX DMA Channel

but the code looks equivalent, so:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
