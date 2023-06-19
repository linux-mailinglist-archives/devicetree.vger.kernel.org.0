Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65D5B735844
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 15:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231635AbjFSNPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 09:15:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbjFSNPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 09:15:38 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCEA310C1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:15:25 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f8735ac3e3so1035933e87.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687180524; x=1689772524;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+YPJOJ5L3MWjtCB52xk5eS93Th4XSUqSOIlj2WHBEhg=;
        b=iq8sowFVSy4KDw6h3muRTfFSZ3z1+ra1L9/ZoTYlF0Vk96QkWs2ZsmMXxmCLhWBDze
         +Oqu7YyGYHQEEVG/2BqhcrsZTOBxoCqr63OIBkrHSsFfeIc/EcxolgsMt012Io+3m4rO
         GINuLtNT/DdU0nbCztjvYc3ZVpxNWm5o6r45GO00tq2eCISt9+Ivbjw1iEgTdm70hDvt
         w9qdmHMr2wrjdZYKkZPZX+rFeagaXT74c7ZHJJeatWJzuwLZ/vlqHz3z69wQtu/GQfS4
         vGluoA7o6AZytjEH2UCB7hhBzWWBmd+kpnih7bZz8cLFl3MjQSqC204SEXIqH/0lVHLJ
         ACgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687180524; x=1689772524;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+YPJOJ5L3MWjtCB52xk5eS93Th4XSUqSOIlj2WHBEhg=;
        b=Mlw+l2H3H7GqpxayyQ75eTSROdfKZKe01AQuJVsbRYQBbCEr1WJ4Lqx4QE1Qq6xJtS
         AzfQjnSwNebIwLNSHHX73WkW+AIehkPlE3Cdq40kt9YrSAd4c/N3KApyYXwsj7Tks4Kp
         0mBSG0AbkZTDhtBZ2Z9njJ+bTxakTjpgV8yanqI6j1usw5zsoit46F050F6ZcRn0Q9d7
         VGTjdSFr4HRGOItoEqA7lqx0AdbMCdU9f57aMEfNo3KsrUyH71cQhS5OxXmJe+uBVqdq
         lSUiUliyndKKDYvgQ/+mGuNITWQ+2KSjbjkDC9Gu8e0amSn2NH5SCd2cidrNZaj2gWPq
         Zmuw==
X-Gm-Message-State: AC+VfDxXYhHDLwSJv6KvzuzHUmFnkjtOmbkXfRolv8yNJrs40zwvdJc+
        vjj1jYZdvFKUQ6aqhCkKfMmalg==
X-Google-Smtp-Source: ACHHUZ5utYoup+Ru3jxjbU/d1HgktZx87yg0OGve+z9YKM8N7sciJtL0xT+3X6T8Y+h3ndNEw0MXng==
X-Received: by 2002:a19:6904:0:b0:4f8:5d0f:c779 with SMTP id e4-20020a196904000000b004f85d0fc779mr3007552lfc.40.1687180524080;
        Mon, 19 Jun 2023 06:15:24 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id r23-20020ac252b7000000b004f86d8a9320sm624246lfm.215.2023.06.19.06.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 06:15:23 -0700 (PDT)
Message-ID: <42be3b5f-3067-45f3-9487-1f81742a6607@linaro.org>
Date:   Mon, 19 Jun 2023 15:15:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 14/15] arm64: dts: qcom: sc8180x-flex-5g: align gpio-keys
 node name with bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
 <20230617171541.286957-14-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230617171541.286957-14-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17.06.2023 19:15, Krzysztof Kozlowski wrote:
> Bindings except certain pattern for gpio-keys children:
> 
>   sc8180x-lenovo-flex-5g.dtb: gpio-keys: 'lid' does not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> index 39c6ef0802aa..fca08db89769 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> @@ -36,7 +36,7 @@ gpio-keys {
>  		pinctrl-0 = <&hall_int_active_state>;
>  		pinctrl-names = "default";
>  
> -		lid {
> +		lid-switch {
>  			gpios = <&tlmm 121 GPIO_ACTIVE_LOW>;
>  			linux,input-type = <EV_SW>;
>  			linux,code = <SW_LID>;
