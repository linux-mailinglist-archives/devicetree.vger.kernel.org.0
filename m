Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0B8163AB4B
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 15:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232272AbiK1Ol5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 09:41:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232590AbiK1Olg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 09:41:36 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62BBA22B1A
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 06:41:35 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id j2so10859702ljg.10
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 06:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W4lnKP3fXJhhfhYAB5tHHhf2uf6LSYxLid5Gmw6TDds=;
        b=ipZ6goqQRYRM039KEmlmpe+yXXPb65AXhrDqTOpiHM0io5rTidkJwGFGQNpxMZaqxM
         5tQdAd/KgUE0Rjbz4mJLMg7D4zEE4pav2S6SZnmuYhz8GvDM4ltrKnIHcY+9MyW/P0eX
         PVME1JKPzCCxuRHaSdPNHwQgG4jkoSFBc0sdSSfyo6xsAYAXsVTLBQirtACdbjxMQBmR
         O5x2SJyKMETQun8rl4N6CjeVIRSXLc/chVP52zQWCIusd8tzvLUTYsfBZmZBES/nVkzS
         JIdtqxGWblQ1MTu4FvcXZtj7Ck8rdHvsjru6tiEu1j+fOvdtCNajkATOVkZ0jJD3xdRN
         lXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W4lnKP3fXJhhfhYAB5tHHhf2uf6LSYxLid5Gmw6TDds=;
        b=cLV5bNDUPnodRKIo/pbKRs+EjxeerUGghM8czlcn8cI86QDJeDIsRhfcvMt796r2ih
         0QHr4GTAHlaU9A09YmjvWTABVUDbGbe4AuuAXl+amvnC0XLl+FZY/GMs1ZjsQ4CsNfYG
         ZNR+Hgdl+w9Ins6kpj4rfrkjlLayJp5D1MD/90Brk4IPGcx02qIgVq9PwIFFYMZRzGhs
         vektXaa6Ijom7w/oYAWT5r83n+cKErd7Rbn5RboLAV2sks/H2Bc6YqjVFXBYbJh5fdWN
         FIk84DeCZz5HIaDbN/g+18yCeLmyHbLAKQMOHgFjmKZP7r7wI56qTeSwOwVzCKgPAW0a
         zsHw==
X-Gm-Message-State: ANoB5pkBi9hD0H0DZ6hoxoR3aVgenVrdydEb80xzecOVVMMZmRTuz9mj
        wHsw7AsT7xJ98vATJuk1a3/zig==
X-Google-Smtp-Source: AA0mqf7/b6u6RudEIT37qPuumAQbfUbUQ127rX+UuN8zLFXXD6vVyh4onO0DbgE3eXvQWFtoiMyIFg==
X-Received: by 2002:a2e:2414:0:b0:279:9956:3e5 with SMTP id k20-20020a2e2414000000b00279995603e5mr3595815ljk.34.1669646493682;
        Mon, 28 Nov 2022 06:41:33 -0800 (PST)
Received: from [192.168.1.101] (95.49.125.236.neoplus.adsl.tpnet.pl. [95.49.125.236])
        by smtp.gmail.com with ESMTPSA id bj25-20020a2eaa99000000b002770a9ed61bsm1219129ljb.66.2022.11.28.06.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 06:41:33 -0800 (PST)
Message-ID: <a64d31a5-5e55-35b9-57e3-bb4214fe3e28@linaro.org>
Date:   Mon, 28 Nov 2022 15:41:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] ARM: dts: qcom: apq8026-samsung-matisse-wifi: Enable ADSP
Content-Language: en-US
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221125223400.94515-1-matti.lehtimaki@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221125223400.94515-1-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25.11.2022 23:34, Matti Lehtimäki wrote:
> Configure the reserved memory for ADSP and enable it.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> ---
>  arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
> index 1c52337af560..859e91c16c61 100644
> --- a/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
> +++ b/arch/arm/boot/dts/qcom-apq8026-samsung-matisse-wifi.dts
> @@ -133,7 +133,8 @@ wcnss@d200000 {
>  			no-map;
>  		};
>  
> -		adsp@d900000 {
> +		/delete-node/ adsp@dc00000;
Please delete nodes by referencing the label like so:

/delete-node/ &adsp_region;

Konrad
> +		adsp_region: adsp@d900000 {
>  			reg = <0x0d900000 0x1800000>;
>  			no-map;
>  		};
> @@ -169,6 +170,10 @@ rmtfs@fd80000 {
>  	};
>  };
>  
> +&adsp {
> +	status = "okay";
> +};
> +
>  &blsp1_i2c2 {
>  	status = "okay";
>  
