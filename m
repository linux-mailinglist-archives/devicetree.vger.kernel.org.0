Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEE876CB9FE
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 11:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbjC1JDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 05:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbjC1JDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 05:03:18 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929D449F6
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 02:03:14 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id y4so46687773edo.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 02:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679994193;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lfMOEaRMfB0CkwnzwtCztEWzGStOffJ3pjNN6FrOs04=;
        b=fVq/jk9CPHN2TZ9GLq/iFgE1d+5kXscbLsN+JfDzDoUbp/95oWZQLWnsb/6nmOVrF8
         26CX9jUnM6CS5QaUQiIFQm/MUuaFUUhLCLSRQPLVk7xZh2lgTsEnujq88I3m4UyaYacv
         1kZsp/WMQEzJQvtm0Sg2U8f/IiEy0qkk738Z55Ov7vZe9sovIytvHpxr9PSc1j7Rckxu
         JzKRTM9uvJXBaaS6XGxXp2NcvBmE+zLmiH3F06Dz98j/UVIz+UAYfJzr+5yH2hu8zci0
         CUX3HmQS2ahC9k8M0dsOZPIsZnd2nBeLzWAyP6dxBcly6d3kU6HqaXCAJMAEJMObufFT
         o8wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679994193;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lfMOEaRMfB0CkwnzwtCztEWzGStOffJ3pjNN6FrOs04=;
        b=LJrxZqoO3uxpB6RGHlr5UOkdbG1HLfx2oHDDPilu0LMKy49mvGhKz64tClVvxPInAp
         eeGqoUFDbjiu7kgO/q0ajmFbB9Izv9VXzsStZUm40lz4wzWhiZdExb3OJbaBBkOA4j7+
         J0TPu7MLBFwvpxmIO5HhwY/t2PgmBrN2DGcgS7hFKYq46uk3gNHkfMGEp/oPyfzqAzlB
         6ElGfYb5yQFKPbLWgr1qIYUYjKwSlSF2sKYWjHVFAGWQcQC9SkWH7aAiviHc2KU5LQC8
         DveQpP7JHwtC69EkoHIH1QTV2zmzyNZV+WSY4BOR+8hL2/WRZa2ez2wuQCaVcxa4XUkY
         sBGg==
X-Gm-Message-State: AAQBX9cV7Nvt3HAvc/ibgtFDmPurzGCl24F5WkjH3td6v/h2xkLmt6/3
        bl9u2zUrx0kY2KtkGSau6mPh3g==
X-Google-Smtp-Source: AKy350al+r6wRfNsIEvo9SsoXyJYhtOAMam/bUH+WmK7eupq1spp+97C+1AZzxYOdKNWwQRHwHUZZw==
X-Received: by 2002:a17:906:f294:b0:933:9918:665d with SMTP id gu20-20020a170906f29400b009339918665dmr14977857ejb.11.1679994192998;
        Tue, 28 Mar 2023 02:03:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id bv1-20020a170906b1c100b00939e76a0cabsm10092601ejb.111.2023.03.28.02.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 02:03:12 -0700 (PDT)
Message-ID: <992c64c5-48f8-e267-283d-51a57f238433@linaro.org>
Date:   Tue, 28 Mar 2023 11:03:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4] ASoC: dt-bindings: ak4458: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, broonie@kernel.org,
        daniel.baluta@nxp.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, shengjiu.wang@nxp.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230328084753.55200-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328084753.55200-1-danascape@gmail.com>
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

On 28/03/2023 10:47, Saalim Quadri wrote:
> Convert the AK4458 audio DAC bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>

(...)

> +  dvdd-supply:
> +    description: Digital power supply
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  mute-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO used to mute all the outputs
> +
> +  dsd-path:
> +    description: Select DSD input pins for ak4497
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    oneOf:
> +      - const: 0
> +        description: select #16, #17, #19 pins
> +      - const: 1
> +        description: select #3, #4, #5 pins
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: asahi-kasei,ak4458
> +
> +    then:
> +      properties:
> +        dsd-path: false

When I commented on adding allOf, I did it in specific place - after
required before additionalProperties. You decided to put it in different
place, not the one I asked. Also not the place example-schema is
suggesting. The placement of people comments in emails is important. We
answer here always inline, thus comments apply in the place they are given.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

