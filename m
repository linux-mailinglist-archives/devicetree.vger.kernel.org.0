Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38B856B59F4
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 10:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjCKJPr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 04:15:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbjCKJO4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 04:14:56 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21944145B3C
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 01:12:11 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id y4so553490edo.2
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 01:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678525822;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uw4cAGGgibSwDMH3Jhp+ycifcaLWuwvJWXMBQMAHLL8=;
        b=yW3q7BzZhpeN5LeV7HBwj8NAaPqj5zY+6rB6/sImmy6Sfg/aUtdFuYv7q8cESDAdmD
         9xcQ3rD7yegEDdOw0Z4iCVavF/SUJsgVBwOzHhMWFWTlNXctVQl1xKXYZJAl5kam/oTf
         hJLJXKgHO6ykDxhdWS1UF+JWwy+KKiHYL/SyIS32Ytuf6I58aTNIn/XlfIEQ5U1ld/7K
         0SoDSmy3M1LTtXwQ1jhH+olfaO6h5qpv/cg72waU5NCC/z/hizvXLNNmGqe/6e7gYfC5
         utgJN5nNul3VQ4K7JcX0NZnZmwP4SgLxm72rNovOasusLu6JPngv1wXUKtRQkMSNCkiP
         8uPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678525822;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uw4cAGGgibSwDMH3Jhp+ycifcaLWuwvJWXMBQMAHLL8=;
        b=LOMHw6brGQfGuYIR+7qxgkK5u05aDIsA9K+FOqkbGoK3mn0+eMsRncvcDpjvEQg5O0
         wx1ppjR6IdcnYdKt3nvdtSNA3vvrNu9sSxCUYXbsAVuavfzJakScFScHiA6j1Ua0GvAl
         rcm5ddewCnGbgzqlaBBVLgWLtTqLkRTiy2zf6vVlmKnhvJ93ckrt9B/d8whotVjMvV99
         C37QTG3kUYsHX1UAuA1utrsJWmPkXvaFzt0+Tf3wD91HBO2X/nV9TbEOEw4OQ0ZSrfx/
         EYZ4RLoZyQKmO6mRBaYxylbRXUrYhVHt/sPp9PF+0MAFK5CM+tFKtHbkI2DgsAmBsO2V
         ZyQA==
X-Gm-Message-State: AO0yUKXKQkdMGHsTXJPwzcYRNyy2oWGhjq/P/nDWN9tTsR4NWmffGLtu
        7H8CwrNwwMuo5dXs/o44S4ltfw==
X-Google-Smtp-Source: AK7set8/V8muly8GrRqJlvD9mRt0320JEfLtLQwThdTKCMA0OrS8U3c/dwGkGS2n8AdHC2f24grKTw==
X-Received: by 2002:a17:906:8a64:b0:8b1:bafe:6135 with SMTP id hy4-20020a1709068a6400b008b1bafe6135mr25360315ejc.60.1678525822075;
        Sat, 11 Mar 2023 01:10:22 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:fa97:2d7c:bdd7:e1b? ([2a02:810d:15c0:828:fa97:2d7c:bdd7:e1b])
        by smtp.gmail.com with ESMTPSA id ae12-20020a17090725cc00b00922547486f9sm200836ejc.146.2023.03.11.01.10.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 01:10:21 -0800 (PST)
Message-ID: <de5d336e-43c4-9016-134c-bf5a0aa18280@linaro.org>
Date:   Sat, 11 Mar 2023 10:10:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V2 2/2] ASoC: dt-bindings: max98363: add soundwire
 amplifier
Content-Language: en-US
To:     =?UTF-8?B?4oCcUnlhbg==?= <ryan.lee.analog@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, rf@opensource.cirrus.com,
        ckeepax@opensource.cirrus.com,
        pierre-louis.bossart@linux.intel.com, herve.codina@bootlin.com,
        wangweidong.a@awinic.com, james.schulman@cirrus.com,
        ajye_huang@compal.corp-partner.google.com, shumingf@realtek.com,
        povik+lin@cutebit.org, flatmax@flatmax.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        ryans.lee@analog.com
References: <20230311011409.210014-1-ryan.lee.analog@gmail.com>
 <20230311011409.210014-2-ryan.lee.analog@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230311011409.210014-2-ryan.lee.analog@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2023 02:14, “Ryan wrote:
> From: Ryan Lee <ryans.lee@analog.com>
> 
> This patch adds dt-bindings information for Analog Devices MAX98363
> SoundWire Amplifier.
> 
> Signed-off-by: Ryan Lee <ryans.lee@analog.com>
> ---
> Changes from v1:
>   Fixed a syntax error for the 'dt_binding_check' build.
>   Removed unnecessary properties.
>   Added description about SoundWire device ID of MAX98363
> 
>  .../bindings/sound/adi,max98363.yaml          | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/adi,max98363.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/adi,max98363.yaml b/Documentation/devicetree/bindings/sound/adi,max98363.yaml
> new file mode 100644
> index 000000000000..0e71b6c84007
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/adi,max98363.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/adi,max98363.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX98363 SoundWire Amplifier
> +
> +maintainers:
> +  - Ryan Lee <ryans.lee@analog.com>
> +
> +description:
> +  The MAX98363 is a SoundWire input Class D mono amplifier that
> +  supports MIPI SoundWire v1.2-compatible digital interface for
> +  audio and control data.
> +  SoundWire peripheral device ID of MAX98363 is 0x3X019F836300
> +  where X is the peripheral device unique ID decoded from pin.
> +  It supports up to 10 peripheral devices(0x0 to 0x9).
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max98363

Aren't soundwire devices supposed to use device ID as compatible?

Missing blank line

> +  reg:
> +    maxItems: 1
> +    description: Peripheral-device unique ID decoded from pin.
> +

It's not a DAI?

> +required:
> +  - compatible
> +  - reg

Missing blank line

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soundwire {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        amplifier@3 {
> +            compatible = "adi,max98363";
> +            reg = <0x3>;

That looks a bit different than regular SoundWire bus. I would argue
that it's not SoundWire at all...


> +        };
> +    };

Best regards,
Krzysztof

