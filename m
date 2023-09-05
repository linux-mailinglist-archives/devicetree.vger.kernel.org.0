Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B32B5792D11
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 20:07:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbjIESHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 14:07:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238080AbjIESHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 14:07:18 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B873E42940
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 09:47:11 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99cce6f7de2so404879966b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 09:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693932356; x=1694537156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ITVqO5bicenhh3jxUPk7Zpl/DCHN9osVHVYICZSjhFw=;
        b=nLV9uYH5ZlYuQbFKctXnvf8fB7n2LpIfmyv/zMX99alVxtCirb7gKTXpBNQF7YoEQF
         tWPpqcT0oNSqeXz/iLhgoHXBj3jN2e94Y13WiFUJa+lKcEmCy6XttVC8NhCwReayQE2D
         CptP4ZJ4lyD1f4swalDUeZVKnf8Kwd4lFD3p7UregMSmf6ff93VuTsiErtuS6oYLFBku
         CUOwIbeBJ9z4pLuFdIoMJF/m3MpmAo2E1Pg8g99y7A/1MPWJTA9mKiMpMVWPcRcTAVJR
         7QMQkTxCAKQr7KZM1aKE9FvH/K37nwaon0nj2iq4bBhJxyN0tNIXAjvNR9aADUp+D/7G
         wqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693932356; x=1694537156;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ITVqO5bicenhh3jxUPk7Zpl/DCHN9osVHVYICZSjhFw=;
        b=S6x9GzeVCrZl9Au0d3sIvzC6on1dXLChRFkkf6aLUTeBmd0gewyWYPYOZU+WSJtSZs
         ZKXcsx8BYMqVrjAZdH8omq28bM9oL9EfNKpTCIZ+NUKEHnYtByzWut4CVWMCAmywqdes
         N+TDavLKHQkrLKLj4MniLHaenem+2c8XzsSmLeLAXVTYKpXd7mhs0b8bEciJIK5GeB2A
         G2JkBlGyDQaEVkxqAJImcHs0YlkCw/IoKa0HD38if05O3Afp/03HxPF7F2gjnC3np5P3
         xUDrFLx5LAqjqjibOV1o1AwgXzt4dLZGDnmQa6/R8l1IDwsmUd2cY6QrBfnWnJckdfF3
         UVMA==
X-Gm-Message-State: AOJu0YxZSwEjXVuBIny9ZbtkOsWX9NVDFfbB1sMj+X2bDBd0yqayEQB3
        tpm8G8Vwy7gTIzNAEB3YVtN7qg==
X-Google-Smtp-Source: AGHT+IFezyZ2iyzDBykWMivtiyqKBcnLI8r94bk/OvsGEvrihHti9Fz/5TMpZF4FUMogOwUT/65HTQ==
X-Received: by 2002:a17:907:a06b:b0:9a1:c00e:60cd with SMTP id ia11-20020a170907a06b00b009a1c00e60cdmr294105ejc.15.1693932355679;
        Tue, 05 Sep 2023 09:45:55 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id e6-20020a17090681c600b009828e26e519sm7740506ejx.122.2023.09.05.09.45.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 09:45:55 -0700 (PDT)
Message-ID: <39836874-e3c8-a09c-67ae-42dcb1b40644@linaro.org>
Date:   Tue, 5 Sep 2023 18:45:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: rtc: pcf8523: Convert to YAML
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, alexandre.belloni@bootlin.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, sam@ravnborg.or, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230905132324.3146722-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230905132324.3146722-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2023 15:23, Fabio Estevam wrote:
> +allOf:
> +  - $ref: rtc.yaml#
> +
> +properties:
> +  compatible:
> +    const: nxp,pcf8523
> +
> +  reg:
> +    maxItems: 1
> +
> +  quartz-load-femtofarads:
> +    description:
> +      The capacitive load of the crystal, expressed in femto Farad (fF).
> +      Valid values are 7000 and 12500. The default value when this property
> +      is absent is 12500fF.
> +    enum: [ 7000, 12500 ]

default:
(original binding had it, wasn't it true?)

> +
> +  wakeup-source: true

If there is going to be new version:

You can drop it and switch to unevaluatedProperties: false later.


Best regards,
Krzysztof

