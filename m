Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 748816FD807
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 09:19:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236514AbjEJHT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 03:19:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236490AbjEJHTs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 03:19:48 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E7BB5FD4
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:19:47 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc0ced1d9so10319559a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683703186; x=1686295186;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nmk9cMa7ZRPEfm1fw5sH2d5n1idTxrKBeSjk+/HBhWs=;
        b=P42meyipf8VOG/pKzXra8EVr67CRItb1ph2/JDLH95HKs2fMGO4ZiK9Ch8I1XjaPxc
         /5X04HySCOF5asSHuT/iaYeHOwhWFB5SdORkRoU1pmeToi6Zjv6Qfb1Tyq1CA6UL0A7a
         9iVDEXuaUjtCpwD6VvSiQ1dg0Gm71Woln2wLe0FatEKVgS3zvgf+sI214WZIOYBW3IuI
         q/stepndCNY7B6CyeBOAMwFtC5SqCpsTqnfr0qPK33zwqbwMlZqick3kVNuefrgct8Wk
         5QyBQI5EG5Q03qCoKts7t+Z6ILzUdxTUD8GQ6Q+4qTl3yig0vfDTTo8Zh6SPXL+mDVEg
         E5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683703186; x=1686295186;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nmk9cMa7ZRPEfm1fw5sH2d5n1idTxrKBeSjk+/HBhWs=;
        b=WTpugHanz57c3mz4WqSoZs6VKhuG+CyK3iT34YtEJfixkTupQ0N9UgVioXNaAKq8+k
         ffSK6VNT/PEC2duZGqCYIJ+Qqcf8L60dYmO/LpKoGEkRrJL1/JHzNalILw+GC5lX2vPk
         IWebE6qfP2AkuN4Xv26eojSdzlfgwqwnHWWohqsnDLsr8pmP1H2MCtquqeJZ43B9Hza5
         G3zJ4+5huL8x74ZMrdpGTEckpzt4F/VfWVB+YzW3kf6JxzjDdoYArUy7X0fH9sITIHih
         vC3Fm/t0s1cIlBB0hhefvR84ja/Jyu770oToYaFV1eRLjeGEj9GcL89PwZKSOwTS1l5I
         rK2w==
X-Gm-Message-State: AC+VfDz8nUO/XJLWgSYjrDB1JiRyDgdxPOebvJBPRngVGV0Oej1+5VHA
        DKOSNY8HUHQJJhVmOQJRDtvlaA==
X-Google-Smtp-Source: ACHHUZ5DYEVKbOYN6RVK0i7fXzSsO6CHPkNIwqoHnsmdzIZ9WCqCjfwODWwJgwPKZxwgIu0xCeB93w==
X-Received: by 2002:a05:6402:203b:b0:505:48c:3266 with SMTP id ay27-20020a056402203b00b00505048c3266mr13269966edb.20.1683703185740;
        Wed, 10 May 2023 00:19:45 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id y12-20020aa7c24c000000b0050bf7ad9d71sm1566197edo.10.2023.05.10.00.19.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 00:19:45 -0700 (PDT)
Message-ID: <39afb004-5f28-2633-a8be-412cb5e74404@linaro.org>
Date:   Wed, 10 May 2023 09:19:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8825: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230510034409.585800-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510034409.585800-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 05:44, David Lin wrote:
> Convert the NAU8825 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---

Version your patches and provide changelog after ---.

If you just send the same with the same mistakes, that's a NAK.

>  .../devicetree/bindings/sound/nau8825.txt     | 111 --------
>  .../bindings/sound/nuvoton,nau8825.yaml       | 242 ++++++++++++++++++
>  2 files changed, 242 insertions(+), 111 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/nau8825.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml
> 


> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        nau8825@1a {

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

