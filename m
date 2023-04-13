Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 009266E11DE
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 18:11:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbjDMQLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 12:11:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjDMQLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 12:11:51 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AED74E6B
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 09:11:50 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id qb20so38321206ejc.6
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 09:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681402309; x=1683994309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SbVnJjK+PB772pYnknlZK9wnUbYBaN9qse3IlUBuCzs=;
        b=UahYXf0feyrrLrSXPnMPRxws4s0dn3vMlu9FYF4QFhxTW44A/T/t05a5yaOPQ3IBT3
         CiiX8sX9J4c19T0iOl6JzjcrRaqhdTvgmMH3WxghBQUz7jWQi6akMxcBDYfK4jcaBsaZ
         mQhXAifS6W8lI+r+UeWAapTvEFoyes/gFx32Jhco+hvAojjURtsj+wkBd5Rh1sCuEBOl
         7I5hkBPYGQGaK+M4zatZsiplLruusP2qhtFm+VQcBxrGM1mlpkzBkBSDP/FUtkhd8sE1
         8t++hScZrntWfvlxiAO/kIBRndgQtJL3oxX0HPoKd3dGmgLCSHVBwehLfTcnhN5T/xPZ
         mKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681402309; x=1683994309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbVnJjK+PB772pYnknlZK9wnUbYBaN9qse3IlUBuCzs=;
        b=eUd+4m8FMMg78buoCRuAQPmSxh9n2uvdmVXXQBI0L7r/8pf+4HzUNBvrWmO8uCbJ4Z
         1+AqoFWG2NH903KAZ6mu1rRBT8vvgfc8hKoRUnoRPX/9liaB6dvpOJECkaA/c2x+hazE
         JW/psiBfN+D0XQiZ1bLL2eQNuODIjrfJwwaJFR1NKHbmE0WU8w+2d/yPTiW4DBobp64C
         SOj4/+UTT7uT/1HnVsIVvcWCUsQ6DotPbla0zjEECxJ31K7CtqPZWBfic8y2hl3u+OsT
         XOh4HmB9fkdTefTkW6ei+E3T5c3k3UuF/tOYE8/QlstPevKzNF0qNOzkVtmIoM6xKhIR
         /i8w==
X-Gm-Message-State: AAQBX9faT0JBWxxYdKqALALYbEmp6PZwsBd6uMNICHKRGPx3RsUUpgOK
        FdjKITT1KmM3xaFMU9Aa8yD+9w==
X-Google-Smtp-Source: AKy350aLhdVzeZnAveuwnehn2FcS0a//QQGJZJFK26Vetabdq21GE3OUskbeU5SKq9Xj1qW3+lXcmg==
X-Received: by 2002:a17:906:7109:b0:931:85f8:6d00 with SMTP id x9-20020a170906710900b0093185f86d00mr3328716ejj.47.1681402309228;
        Thu, 13 Apr 2023 09:11:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5032:d2d4:ece5:b035? ([2a02:810d:15c0:828:5032:d2d4:ece5:b035])
        by smtp.gmail.com with ESMTPSA id gv16-20020a1709072bd000b0094a785e362dsm1203912ejc.141.2023.04.13.09.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 09:11:48 -0700 (PDT)
Message-ID: <93a34302-282e-0d3a-e7bb-b692eb2d78c6@linaro.org>
Date:   Thu, 13 Apr 2023 18:11:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
Content-Language: en-US
To:     John Clark <inindev@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230413144316.4247-1-inindev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230413144316.4247-1-inindev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 16:43, John Clark wrote:
> Add gpio-range properties to the pinctrl gpio nodes in rk356x.dtsi
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 802fcc96384e..793dbcb981dc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1796,11 +1796,11 @@ usb2phy1_otg: otg-port {
>  
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
> +		ranges;
>  		rockchip,grf = <&grf>;
>  		rockchip,pmu = <&pmugrf>;
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> -		ranges;

Not related to your patch.

Best regards,
Krzysztof

