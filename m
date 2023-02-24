Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CC176A1B30
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 12:14:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjBXLOF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 06:14:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbjBXLOE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 06:14:04 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2BE213D4A
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 03:14:02 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id ec43so52884030edb.8
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 03:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b4D6hX91fb92VP82KNoA4xeL0ZK1TUyb4FSrEk92iZw=;
        b=zNcNrNzKfAKA5t/pAA7zijWFeVt36mJVhdHAeL4/YAlXPxdmWlKdR6R+xi+LrlWP33
         z2Dt9BjXIn+4OqbmsvOUYbfiwdwSYia64/Lw2AxfOP49gPuxf+r7nWvl/96yHIQSaZ5D
         +1bNEERoen9tf9vFvKxn6+SYz7+jID2wwp4PMWG2lkqm61CmdgDJoIJfDMs+sQ7HRiVx
         uLFboR8A41OR6Mgl8CKjyZPx4ZDnUNuVa9z9bS4I+4wxDNf8EcoPR0YCcIfxtKYuS8tj
         F6gSTyQBPPWtQ5Uit7thD9i9mwfZvqfj3mQaP5u369414I1D16RU1XlRwAshaGKww/QR
         329g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b4D6hX91fb92VP82KNoA4xeL0ZK1TUyb4FSrEk92iZw=;
        b=Yykg7gy5IVG+bX5ZzwURcT+tep3NHoVEdCMXUSmRXoFNu8TsJN7dq33uG4joDSSsYY
         O8JG8+j3bWnxwcllCs5zhbeEt49yTkXFB63zB1ZMlZacLUckUq35QEmx7gWsb7Dlkbph
         kUkAkZh9G0BbpKCsV44+q/oUkl5PJiprqrlXzoNvpIQF9YYcrfXPebuIJuTNTXXqmVdn
         degqSXcPDoUybtyge5O5yOF3Cbpnf/hKu1Xw07tjXRXSaK4kXHNuy2a90KKeGlPQACwd
         60u2+9e6V+2ASaa5TsczVDtQR1LUigPR31McXSGG1uQBVa0lx9qb785ePywnR5urxZbL
         tScQ==
X-Gm-Message-State: AO0yUKWM+uPX6y/rzOrixMnZF70HDalTsYTLwee0YVwkOGp9oWR3xgTJ
        oqFGitnOFxzZCU52qIsI/Kl1WpNuxb2FyajV
X-Google-Smtp-Source: AK7set+gc4yhE+A0IXsPpE9c67JqLb4w2Z5XdXbf0h0MLlfYinTEULSVEUAfshoVmYErhQRuFjwloQ==
X-Received: by 2002:a05:6402:54c:b0:4ad:7224:ce94 with SMTP id i12-20020a056402054c00b004ad7224ce94mr15016385edx.15.1677237241273;
        Fri, 24 Feb 2023 03:14:01 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w15-20020a50c44f000000b004af70c4b4a7sm1534058edf.97.2023.02.24.03.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 03:14:00 -0800 (PST)
Message-ID: <d4d4c5e6-4700-2404-618a-5cb21946b555@linaro.org>
Date:   Fri, 24 Feb 2023 12:13:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 2/7] dt-bindings: gpio: rockchip,gpio-bank: add unique
 hardware GPIO ID
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org,
        brgl@bgdev.pl
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
 <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2023 20:46, Johan Jonker wrote:
> Add a unique hardware GPIO ID to the Rockchip GPIO nodes with
> the "rockchip,gpio-controller" property to be independent from aliases
> and probe order. "gpio-ranges" can't be used for that, because there is
> no semantic restrictions on how they are set up.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> See discussion:
> https://lore.kernel.org/u-boot/CACRpkdZx8EaSFLeh4vruRsdC+Sx_ieBiKmuE7t37zhiYqtS3WQ@mail.gmail.com/
> ---
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index 2e9a5179c..39ac41e9d 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -52,6 +52,12 @@ properties:
> 
>    gpio-line-names: true
> 
> +  rockchip,gpio-controller:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 8
> +    description:
> +      Unique hardware GPIO ID.

Neither commit msg nor this description explain why do you need it.
Also: what is a unique ID? why only 8 of them are allowed? Why assigning
arbitrary numbers should be a property of DT (answer: it's not)?

Best regards,
Krzysztof

