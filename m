Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C899705348
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjEPQLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbjEPQLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:11:32 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AAE055A6
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:11:13 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bc22805d3so21721269a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684253469; x=1686845469;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7p/foU/Z+9BG7cQnOKsXNUHZZqTvS7a50L5z/soVgXc=;
        b=K1naCidoCTVdiXN5+DnJgZBVMdMmQRRxY3oYHwNL9AJuf1HTqcts838MMjv5lH5dDd
         vRKcJ2BafwzgQmBfJqZ5i1MyZyiJXMNUuAqkH3+yqf1E7439xxS6482VnPtNp41GFL2D
         4/msKQ8w4n7foxL+kV4sb9w++LlTZF+U8QDhRgUpfKAwW2vXxZTnewFZ0Djs8BMXFJlr
         5BNa0tkuuWVbF5EyYyllDiZ1HOxbxAhzviOx5QGdL5GJu/aGes3meiLWXbL12lBGTOtM
         S4n4V0C2Gok+y1MfDQIulWxC6shC0qK0q3a29DFaZvqDV1fPNA4G8/0rFqLAZUpiJk+l
         OWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684253469; x=1686845469;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7p/foU/Z+9BG7cQnOKsXNUHZZqTvS7a50L5z/soVgXc=;
        b=ayo7qtBIzV79e9gEBlHY0NYhcMZc81UIOIH6Z4warcW5G5tQTPRr/Yw+7Q26RVagW1
         5PqHtKQk2PP++4d5zmw5HtR6jWUkoQI5my341AnLliUIb9ZMOPV+Uw6CDINCcjZi3xHr
         ewRsSfTPJTm7w062ABcC7e+Mnva1JbVyIH8/yuxbASs2duQtB1AMauo08MPCGYLFT/29
         ewkeLiXsDgeybIPZjrvRcMP6RojLxNWdXC1I7x6fgOOXwaEyLVHGhrKdx3mDIBAzS+wX
         gIx/wh8yhuoA/hApt1nKgJlN98gdRv/lviNhrew1RiG4GKVZx1wwZ8ZEbbr+lGLb6J7e
         aZhw==
X-Gm-Message-State: AC+VfDzpbzh51pu20jYm9WAK1FxLNguOtQjf/pE8EInYxk26VXVdbxzU
        RBPGP95G22+ERfrGZcnrJglRBw==
X-Google-Smtp-Source: ACHHUZ5Kd8EtwJyqdxv7ZNDBBV1Cu4wZCgXFdQ7YpmcrZmBxcqME8HikwP5KsGDuZiPYNFpWnSjmbg==
X-Received: by 2002:a17:907:7f1f:b0:966:550f:9bff with SMTP id qf31-20020a1709077f1f00b00966550f9bffmr30442911ejc.59.1684253468817;
        Tue, 16 May 2023 09:11:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id s1-20020a1709070b2100b0096a16761ab4sm9746250ejl.144.2023.05.16.09.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:11:08 -0700 (PDT)
Message-ID: <ced69a34-5350-abd4-637a-691bf4af140d@linaro.org>
Date:   Tue, 16 May 2023 18:11:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8810: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 07:44, David Lin wrote:
> Convert the NAU8810 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        codec@1a {
> +            #sound-dai-cells = <0>;

Please put sound-dai-cells at the end. In DTS convention is to have
compatible first, reg second.

With this:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +            compatible = "nuvoton,nau8810";
> +            reg = <0x1a>;
> +        };
> +    };

Best regards,
Krzysztof

