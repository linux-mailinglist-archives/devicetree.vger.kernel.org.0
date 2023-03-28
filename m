Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7D26CB941
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 10:22:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230411AbjC1IWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 04:22:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbjC1IWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 04:22:31 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68D545279
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:22:12 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id eh3so46134130edb.11
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679991731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TjLk7s/ILNPy05fW3mtB8q+T3+ZfJadYGXeEI//OHA4=;
        b=nbVgsIqDmhYjo2zpI1NxF9G7P13ZUCoomofgad9VxdCmVGj6Nu3tBawyjCSeRg1jxG
         VfmoFSaRMJgNmxHFUVX94hkTRg6MBrIBXssSDToYHfi4JpviP6q2Mi8s6G7SWIg8MNFD
         TWxJUDigcLS9p/mKxugg4jOd6JbZDVbtlVCUg0ngqdgG87zhDsgJIKkRTgU2EEG/uw1e
         hf4nwVFHC6l69V4pdCKqi9jwACf/df8FDrNXCyAjPoLOwsEqZcGND0g3S4oCTwv/UaKZ
         z7VWSxEG6gxsUK3WjBOm99ekdolfW75Wp80rZDW8hgXqd8iiBX0qGdU4j1PVjndDzS51
         yEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679991731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TjLk7s/ILNPy05fW3mtB8q+T3+ZfJadYGXeEI//OHA4=;
        b=URmRJ7JT0XCnbfo3z6Uhxdril8sjqMnhYqUcGfmWLVoKKWF6pP9dautqFZ0YhcfZgm
         gfzq0QHvnC0JNAUzRFDiHGrwR39M1W6WhUYJDeRPDLiIQTLcqsg0pFMmLWXvNxvg+Yum
         iTUvH2J7MAFTKsDc4TSDkA9hQmLPj44nbJrtePp+ugWHgdKc9MdSdQxr00tfWlbEjP3X
         Y7DQHFf4ipNYN6QcSqQ3qONzVIsDEstBg5egUm5egb4j5RgqggYuvLFBwPjoM9UNPMgs
         pgDZbX9gzgF5aCoppByiIrQK5LQN46YU0M28kOI7nJLWJNFOORAbccLZXQjAKiBe2Gg+
         BeaQ==
X-Gm-Message-State: AAQBX9cner+kauzasEX0PBWmEtci3KLbvVo4EeCf++XrUQlNP/FW2kII
        idefLv7LgPqpoMMvnK8vhmo1vQ==
X-Google-Smtp-Source: AKy350bZ4edHuT+xY2SDY2CDRsHlxVx3YYIulDNRVyIMWIfCBo1UlW2mN+FmnKM1kDtckc9i+joyjQ==
X-Received: by 2002:aa7:c249:0:b0:4fb:395a:6aa4 with SMTP id y9-20020aa7c249000000b004fb395a6aa4mr14791797edo.31.1679991730921;
        Tue, 28 Mar 2023 01:22:10 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id r12-20020a50c00c000000b00501d2f10d19sm11134313edb.20.2023.03.28.01.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 01:22:10 -0700 (PDT)
Message-ID: <0a77e40f-1b6a-38ed-78df-9259959fd2c1@linaro.org>
Date:   Tue, 28 Mar 2023 10:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3] ASoC: dt-bindings: ak4458: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, broonie@kernel.org,
        daniel.baluta@nxp.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, shengjiu.wang@nxp.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230327213250.29199-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327213250.29199-1-danascape@gmail.com>
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

On 27/03/2023 23:32, Saalim Quadri wrote:
> Convert the AK4458 audio DAC bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---
> Changes:
> V1 -> V2: Use the correct way for dsd-path property
>           Drop ak4458 label form example
> V2 -> V3: ak4458 is the only one that does not support dsd-path, so we
>           do not require to define an array
> 
>  .../devicetree/bindings/sound/ak4458.txt      | 28 --------
>  .../bindings/sound/asahi-kasei,ak4458.yaml    | 65 +++++++++++++++++++
>  2 files changed, 65 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/ak4458.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/ak4458.txt b/Documentation/devicetree/bindings/sound/ak4458.txt
> deleted file mode 100644
> index 0416c14895d6..000000000000
> --- a/Documentation/devicetree/bindings/sound/ak4458.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -AK4458 audio DAC
> -
> -This device supports I2C mode.
> -
> -Required properties:
> -
> -- compatible : "asahi-kasei,ak4458" or "asahi-kasei,ak4497"
> -- reg : The I2C address of the device for I2C
> -
> -Optional properties:
> -- reset-gpios: A GPIO specifier for the power down & reset pin
> -- mute-gpios: A GPIO specifier for the soft mute pin
> -- AVDD-supply: Analog power supply
> -- DVDD-supply: Digital power supply
> -- dsd-path: Select DSD input pins for ak4497
> -            0: select #16, #17, #19 pins
> -            1: select #3, #4, #5 pins
> -
> -Example:
> -
> -&i2c {
> -	ak4458: dac@10 {
> -		compatible = "asahi-kasei,ak4458";
> -		reg = <0x10>;
> -		reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>
> -		mute-gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> new file mode 100644
> index 000000000000..3842e75d9921
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/asahi-kasei,ak4458.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AK4458 audio DAC
> +
> +maintainers:
> +  - Shengjiu Wang <shengjiu.wang@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - asahi-kasei,ak4458
> +      - asahi-kasei,ak4497
> +
> +  reg:
> +    maxItems: 1
> +
> +  avdd-supply:
> +    description: Analog power supply
> +
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

What happened to dsd-path? Do not remove properties from the bindings
without some valid reason.

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const:
> +              asahi-kasei,ak4458

This is one line - const: foo bar

> +
> +    then:
> +      properties:
> +        dsd-path: false
> +
Best regards,
Krzysztof

