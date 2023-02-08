Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6900168EF01
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 13:34:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbjBHMeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 07:34:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjBHMeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 07:34:14 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B23B33BDA6
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 04:34:08 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so1375680wms.0
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 04:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NApcTHIL8LQ0WFUaSYDt91UR5S+St7BhBLbbOTErpU8=;
        b=Ld0qd1sczDVgvvMcWGAg1+5hW3DtHRwtFfDuo/NtFkb99aYYycA0cs7V+m/dPxK8f5
         fNjp3YJDPnlIUfF2f8+RjMyUq1/PxiDT7GxtNhdnEPdrPC3PRDLlrl8j1h/Dj373kpdM
         rWP2NJ9PNqxFeZw/UGq+EP8ynaS/e2Oh/x8soCBY2uyHS70M7zkVMF0+NIHUeX5j9dfr
         CxIb6V0iGxTUuiHVHNp+IL1m0AMQ/fnCg5PyY3DYMFXiYzjVf8dDXvuFNaF9eLl3K8mf
         UhzEwKlnwQV/96FwAcMGJYRdiBb1uEwIUSfTV+AaZ4EZijGsE+rG3aorAYTMLCiU5l6P
         xQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NApcTHIL8LQ0WFUaSYDt91UR5S+St7BhBLbbOTErpU8=;
        b=1PBQE6S7KwByvt0d8S6KHf1/K/2bz4ASr5ZdLVUBNchfON8sJ3Vx6+dkJlJt463A7Q
         ML95doBUYfni+VkfK2jLkjvEK4IlZT/+mIwrjYOnRH+vVphziPDfwKmsx0wQXNv4u0kU
         uB3moLDomKE3O7DJ67/iD2SOyeo4LBdtfpQ94Eq/2PDAlZQAEUU7OnE7fqWPwEX4uZc/
         dwpC5LHOanNr7WZGIkwb2rEs8OhXzyci24nMBXjy//rCuOIZJJOTZnROp6IF0QbkEmiq
         hzzmKMnzZyLxth1NWW8m//Srfq9mYVwyI4hRTCK6HWa5wUFGtFhGYvJMJrExHZiu1FaH
         zmfA==
X-Gm-Message-State: AO0yUKXF73M7cvsdDYeFlPLknvITUeRQKWY4PLXGWj9AyTYcdkrhQECA
        0BCa50G68/51azF9EkLm4VN3z+4CLfzNtSDza0U=
X-Google-Smtp-Source: AK7set+rEc+7o8KwhGFhLxLZS4SoFRJ8ysU4c2vGcdF1tGsk+sAb9/VWFFxL88Vizq3VWuZ9Fmn0oA==
X-Received: by 2002:a05:600c:46c6:b0:3de:56a8:ae6b with SMTP id q6-20020a05600c46c600b003de56a8ae6bmr1609168wmo.34.1675859647305;
        Wed, 08 Feb 2023 04:34:07 -0800 (PST)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c191400b003dd8feea827sm2103730wmq.4.2023.02.08.04.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 04:34:06 -0800 (PST)
Message-ID: <3a06d80c-7f52-2c5c-840e-09a0a08400f4@linaro.org>
Date:   Wed, 8 Feb 2023 13:34:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Subject: Re: [PATCH v1 1/2] arm64: dts: meson-a1: add gpio_intc node
Content-Language: fr, en-GB
To:     Alexey Romanov <avromanov@sberdevices.ru>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
References: <20230202141520.40003-1-avromanov@sberdevices.ru>
From:   Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20230202141520.40003-1-avromanov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 02/02/2023 à 15:15, Alexey Romanov a écrit :
> Add gpio interrupt controller node.
> 
> Signed-off-by: Alexey Romanov <avromanov@sberdevices.ru>
> ---
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 6268c323a810..a04ddf0f4cd3 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -158,6 +158,16 @@ clkc_pll: pll-clock-controller@7c80 {
>   					 <&clkc_periphs CLKID_XTAL_HIFIPLL>;
>   				clock-names = "xtal_fixpll", "xtal_hifipll";
>   			};
> +
> +			gpio_intc: interrupt-controller@0440 {
> +				compatible = "amlogic,meson-a1-gpio-intc",
> +					     "amlogic,meson-gpio-intc";
> +				reg = <0x0 0x0440 0x0 0x14>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				amlogic,channel-interrupts =
> +					<49 50 51 52 53 54 55 56>;
> +			};
>   		};
>   
>   		gic: interrupt-controller@ff901000 {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


I'll take it once v6.3-rc1 is tagged.


Thanks,

Neil
