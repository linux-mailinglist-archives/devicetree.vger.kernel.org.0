Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05A1F6C8D85
	for <lists+devicetree@lfdr.de>; Sat, 25 Mar 2023 12:40:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbjCYLkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 07:40:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbjCYLkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 07:40:42 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9DF240C9
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 04:40:41 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id b20so17644674edd.1
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 04:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679744440;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DTol1r9uBjQtjViUXZvGnJBWn6E401clZwW7d9p3LvI=;
        b=YqvjyukUcuA+AESFUQriCVAoam8bJdXyDND4tpwAUZqnBMqOkO/dbMysX20eMGzcgS
         hsTwZ9Aq/SRMncrRKxijRjsdSk35AxvaWlSH7pQUyTEj/dmTHAU838i+1KWECZiq2tIS
         ZpwXxhIYnKATdOj477BRCHE+1aaDHLl+REPKkoJMb80HyAD87EcxWg56D4hBeb6gepRx
         +qiRFhv7SIZzZ5A7OEFJ8YEmGdrZDb9XM0WVP98iwrFAO4Pp0+wXc44gOyAQFj+nc7Gb
         8vOAcq0Vdnc9PjdpPZmvYRLgY+oIQbfS3MDCwRbeNgZsc0+H50/rRseQPILR1KnImkTO
         +FdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679744440;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DTol1r9uBjQtjViUXZvGnJBWn6E401clZwW7d9p3LvI=;
        b=ZhFfDQGLHRSOovsW6PFx3HFhU8XOClXYY7uJFbZab2m5mfqysecR7OD2W2YzxcPICh
         0pn1MEhGNNGauZeA7hApgrpmAfHvHBztsZVeA7HE+X3BV5/gCa+XNtc+yINe73AyMKJh
         Fnw3bje0u1rxn4+FbCM3a4jg5+80XOQcQ1+zE2mE6wEznEXPDlxOJcIEycPIs5MXR0wm
         8S5NjndR5x6jyggQaN2FEH/V/Y0fCneaGUOHjRfMXvDbjfVWsmjQoJ/gnoZ+zMkHCNWX
         MRHViY5HiG3cKWcwgMegy+PjRiNEpKqtd1aC+SyxP5HXnJapz/4pqEWwikuWdhc5FOWW
         Avgg==
X-Gm-Message-State: AAQBX9fkfdbDFvsesg+8ykt0eLR3UmUboYJ1o7m7Zc5QPUq/95lZH90F
        kcdvBIkpUQ03OuwdWjJZAR1s8Q==
X-Google-Smtp-Source: AKy350YtmHS7oR4d2KLW5JFyUa+HXtWQkzPWoHrS2hSfgUyq9kKqKH+kcGjxMXUWrNZgAbYzSKfGcA==
X-Received: by 2002:a17:906:43d8:b0:878:6b39:6d2a with SMTP id j24-20020a17090643d800b008786b396d2amr5910032ejn.46.1679744440422;
        Sat, 25 Mar 2023 04:40:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d230:b2c7:d55:c9c8? ([2a02:810d:15c0:828:d230:b2c7:d55:c9c8])
        by smtp.gmail.com with ESMTPSA id mh12-20020a170906eb8c00b0093210cf625bsm11296606ejb.187.2023.03.25.04.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Mar 2023 04:40:40 -0700 (PDT)
Message-ID: <460ee8a7-23a8-fc70-1eb6-88bbaa99b35a@linaro.org>
Date:   Sat, 25 Mar 2023 12:40:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v9 1/3] dt-bindings: mfd: x-powers,axp152: Document the
 AXP313a variant
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Lee Jones <lee@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Martin Botka <martin.botka@somainline.org>,
        martin.botka1@gmail.com, Shengyu Qu <wiagn233@outlook.com>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230324113013.254371-1-andre.przywara@arm.com>
 <20230324113013.254371-2-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230324113013.254371-2-andre.przywara@arm.com>
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

On 24/03/2023 12:30, Andre Przywara wrote:
> From: Martin Botka <martin.botka@somainline.org>
> 
> The X-Powers AXP313a is a PMIC used on some devices with the Allwinner
> H616 or H313 SoC.
> According to the datasheet, the DC/DC converter PWM frequency is fixed
> (to 3 MHz), so disallow the property that lets us set this frequency
> for the other PMICs.
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/mfd/x-powers,axp152.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index b7a8747d5fa0e..4b4f42cb09ef7 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -79,6 +79,17 @@ allOf:
>        required:
>          - interrupts
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: x-powers,axp313a
> +
> +    then:
> +      not:
> +        required:
> +          - x-powers,dcdc-freq

Should be simpler x-powers,dcdc-freq: false

I'll fix the other cases.

Best regards,
Krzysztof

