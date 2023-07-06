Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 589D7749E40
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 15:54:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232681AbjGFNy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 09:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbjGFNy4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 09:54:56 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4285B1BEA
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 06:54:54 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51dfa0771cdso1003496a12.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 06:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688651692; x=1691243692;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJZIZaXi9+UMAV6SzKJCfkOpgDP4Lodb3brLJpgo+E0=;
        b=bg5odx8aK40mX3j9+IoldO8bOk7Q6UJ80I6WYOnvN3cvqQ/NzVPYbisFdH42EBncGu
         wRn20470gK3yyXuzRe/PhfrLkGmUP1UBapt+tarplzaNZ4+b7ec2CDJ9ov1KOmn1/UJO
         XqDDKKwMmQ8C735pGjpBTQhOMae4rvglBoJhGZaUcGlIPWTmDA7IKW4Gr/G5rl54UFyG
         Jz8dAdgt5JfmlgKExw7j4Zn87m5S2b6us59580RL7le9ryo9u9C1XfXLquv0yL2slt8V
         jCREiTNvj681GBwkeAaBUw7z3ZqoTJKW9jYyars66wQZ9Rf50fcDWLYAfZSTWgk+Gtlm
         iVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688651692; x=1691243692;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJZIZaXi9+UMAV6SzKJCfkOpgDP4Lodb3brLJpgo+E0=;
        b=k4TSIsyx1HAM0oF7PCRDM1exiR4BAHQKPvSTf1n5jtjNKZtRHijk+9++EbCqRV4lRQ
         oRyD51LQQb7ZLHl1FTE6Uz0Xb4/RPWIBkdXA9hAmAxPltE116b88iwPsHWYWb54aB3FO
         RIDa8mFkwogbYi8qvrCMikp3FSCxsLdatjys7l2OvneF+zCOzhhFTzTgbcd2Ur3KBO2m
         LzyAa9a/HZ9dpYkqeML03BGxXhrNcPX3a59BbNKJWHTHzb8rwyVU+OOKeytkc6i4Zcb/
         a1ng9JSojBqIToCI74jghxZXJxvrLDDrrnb+SuTzVPNFDwGzd86fGCToaG/eJizF+0D5
         eT8Q==
X-Gm-Message-State: ABy/qLbmDtbPNNQNW34bkii76T043H+xlyJZL6ZwlSpAF1wPY7/Nzpq0
        1FhaFwHcpk4xE/LQjDTgTJiYKA==
X-Google-Smtp-Source: APBJJlE+2vHvI4Z4KJIJhk8YVlZZPb330YMaIGshIPS5z/4VS8YZ4GrDE6Mi7v6oZzC4po8QkYlzCQ==
X-Received: by 2002:aa7:c610:0:b0:51a:2013:583 with SMTP id h16-20020aa7c610000000b0051a20130583mr1758445edq.13.1688651692535;
        Thu, 06 Jul 2023 06:54:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h13-20020a50ed8d000000b0051e362db186sm123271edr.60.2023.07.06.06.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 06:54:52 -0700 (PDT)
Message-ID: <941ead9e-9e46-b5cb-0a8b-345df6606484@linaro.org>
Date:   Thu, 6 Jul 2023 15:54:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RFT PATCH 1/3] arm64: dts: rockchip: correct audio-codec
 interrupt flag in eaidk-610
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2023 08:48, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
> 
> Correct the interrupt flags, assuming the author of the code wanted same
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW

This should be HIGH in both cases. I will send a v2.

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> index d1f343345f67..6464ef4d113d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> @@ -773,7 +773,7 @@ brcmf: wifi@1 {
>  		compatible = "brcm,bcm4329-fmac";
>  		reg = <1>;
>  		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;

Best regards,
Krzysztof

