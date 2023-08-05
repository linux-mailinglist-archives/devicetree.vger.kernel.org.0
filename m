Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48B557711F8
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 22:00:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjHEUAL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 16:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjHEUAK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 16:00:10 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B1CA1735
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 13:00:09 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fe0d5f719dso5447232e87.2
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 13:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691265607; x=1691870407;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XhAu6PmKEo0kF+z5P57FmVQZkIDKTY7ThIP5e5i9EeM=;
        b=GtCKm6FtlPOymmajhv3nxUAoW2sPekKv5EQPTu9lT9CMbo5RThPMSYOGg3KzRvr8zr
         +tisfFMak46z5kLHkbtW4D7IDt8ueT6TNd2NpJJ60/dDSllNfHSZ6s75jXRBx7b43/BA
         2z3w4pbTTeU4ePt5VxJXjR3FbFtj9i6InmMOlSj52X2RRvfHPMfd01RoPtznHdWW4t3J
         cUBa9iOt0QC7jsYFjF8cY1f4FUzTQzPj2cJxpj/ILzQWkVXQZ1rs99Ls7GkAGqMBWsKM
         JSPl8EfpPlAJSOllj9rxunqBpZKCkKTa5n2qse8jGNAVD77+JSBb78mTpQT7TKXNBXgc
         Rlrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691265607; x=1691870407;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XhAu6PmKEo0kF+z5P57FmVQZkIDKTY7ThIP5e5i9EeM=;
        b=VUj92wfOjkIQ8ZH4I5sptT5dntTR1KsiAMlvh7EvQyP8403GXra3cZYdDU5clRx0xI
         HdPK+S82HZjdfxxvSrlTRPro1umaamlkeWw72cg2Jfp1uKfKdFnTeO4q/v/FWmNC67Qk
         bnlQz1BdCKV2jVWv9O9WsPw/RzZYYbfMzVGzwzPeZQbkVhDGie1nw43eJguo2zydekaY
         GPUAoGSmEt+7JKVNGIXw89e3FuPbV3X/t8AzAKLXu73u+BS3ALQ8d45Coxz0hBPYRVA8
         XZ1aQn/sf3+2C2SSH4uVtTr8O0YEdrSRv7ZZCzd0NFXQt2st4mN1EHT5mru4p5DMYu5Z
         vV7A==
X-Gm-Message-State: AOJu0YwFc6Scjj2S5sXo6s70oo6xkLj/1hm9XK/Nq3/PyT0J6ZlkFY+D
        dWihYxX5bk/5nabGERZcCFKysg==
X-Google-Smtp-Source: AGHT+IEDfY2I0VIl1G5sonT8G6oVVJQXTwrxdQOIYvZlil26v0aEv6jBikszqDBIEwhbe0DHv0bCKw==
X-Received: by 2002:a19:4f44:0:b0:4fe:2ac1:4151 with SMTP id a4-20020a194f44000000b004fe2ac14151mr3177922lfk.63.1691265607363;
        Sat, 05 Aug 2023 13:00:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id i22-20020a50fc16000000b005232e637c24sm310020edr.84.2023.08.05.13.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 13:00:06 -0700 (PDT)
Message-ID: <fa32cc95-6b9d-01e6-b65a-d41f3aeeae4f@linaro.org>
Date:   Sat, 5 Aug 2023 22:00:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/2] regulator: dt-bindings: Correct yamllint
 warnings/errors
Content-Language: en-US
To:     like@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        liweilei@awinic.com, liangdong@awinic.com, wangweidong.a@awinic.com
References: <20230804102703.931418-1-like@awinic.com>
 <20230804102703.931418-3-like@awinic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230804102703.931418-3-like@awinic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2023 12:27, like@awinic.com wrote:
> From: Alec Li <like@awinic.com>
> 

...

Subject: no improvements

> +
> +properties:
> +  compatible:
> +    const: awinic,aw37503
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^out[pn]$":
> +    type: object
> +    $ref: regulator.yaml#

This does not make much sense. You had here unvaluatedProperties. Why
dropping it? I asked to drop additionalProperties. Open the email and
look where the comments are given. In which context.

> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - outp
> +  - outn
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        regulator@3e {
> +            compatible = "awinic,aw37503";
> +            reg = <0x3e>;
> +
> +            outp {
> +                regulator-name = "outp";
> +                regulator-boot-on;
> +                regulator-always-on;
> +                enable-gpios = <&gpio 17 0>;

Please use proper defines.... you included the header for this.

Best regards,
Krzysztof

