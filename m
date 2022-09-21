Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68BF75BF78C
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiIUHXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:23:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiIUHXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:23:50 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CEBA7CB48
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:23:49 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z25so7771978lfr.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zYXoXGYBs8EW5/2+PLZ8R95umDFslhQGS8LVrgnzPFo=;
        b=amsovrYY/8Wc9eaJ9TUk8nv4JjiA70E2/qLdE6MZsxrIlKWiUx1u2X4GMzDQ2zttQg
         tsxE0Mc2Wj2KCnXOCz89fzVsMKBhRZZsqSoOdfvhd739iuH3XqWisFhu98AjsFKILigX
         GhXOj220Xx4eq58Dky2D7LSd7q0prsJ2hf5IwzP726flx9veRqYfy0Y5VNYJIz2A40Kb
         D4hVUBWtZcX2n7pubXlj0911zJe02gg93BFcy42C3M4Xi9dkJ8HO7Qm5y7guaqJVuL9b
         UiW0UOrs9kYynN3QrKVHMIJ73Buy5ccsgfzeSsKpYLrZV8N8S53sTwjF+gDu3qgvs5fZ
         qCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zYXoXGYBs8EW5/2+PLZ8R95umDFslhQGS8LVrgnzPFo=;
        b=cio7qIha3KrogjaNYlN42EapaV1/5moUvRaY8S3yOndzz2rk+xcY9dAgviR/FWpTl5
         ZZf3rMQJL9JK/eCSwr6i2xceTKQdfX3uQB/ghZa9zE8WAmzbJbyynITf1jOqTv9UcIXv
         TxO83KVPYfTePXgr7t8uE8aT+6COcohtcj4EP+S4Vg23kVXGHgOqSKtS/SP5usm+pQKS
         WOoAGMzGL1me5mw1cFmBp8XqTGw5qeMJq6h05pp8V/8+jpZ6fVgiy7OIqMf0zf7WlwzY
         vZpGOcd+yZeHMRsdmj1ZG6wEQlNSAEYLdwok07tZNndX0ryofMnFtyCtf305ZPv8vIN4
         CODw==
X-Gm-Message-State: ACrzQf0WqbyAfVmgkf5n0vh7Ii42D9XRn4UeRHdhGcsbL0LxDMsXG1zt
        EryZPJ4qlLvDXpAY0CdF0KJ2hQ==
X-Google-Smtp-Source: AMsMyM5PX4hhSKyC3P+OrU7Wo7Ik40hyrxTigVYCeDkKWLWOekLO5ZygKPrRGVHZWeJT3/WunLVoFA==
X-Received: by 2002:a05:6512:1153:b0:49d:1d20:ea47 with SMTP id m19-20020a056512115300b0049d1d20ea47mr8999109lfg.342.1663745027686;
        Wed, 21 Sep 2022 00:23:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j10-20020a056512398a00b0049a0dec6e8esm313874lfu.139.2022.09.21.00.23.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:23:47 -0700 (PDT)
Message-ID: <44899c2f-99c0-5f1a-38ad-a700269e18e8@linaro.org>
Date:   Wed, 21 Sep 2022 09:23:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V2 1/2] dt-bindings: display: panel: Add Samsung
 AMS495QA01 bindings
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220920170937.14486-1-macroalpha82@gmail.com>
 <20220920170937.14486-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920170937.14486-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 19:09, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> new file mode 100644
> index 000000000000..08358cdad19c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: samsung,ams495qa01

Blank line.


> +  reg: true
> +  reset-gpios: true
> +  elvdd-supply:
> +    description: regulator that supplies voltage to the panel display
> +  enable-gpios: true
> +  port: true
> +  vdd-supply:
> +    description: regulator that supplies voltage to panel logic


Best regards,
Krzysztof
