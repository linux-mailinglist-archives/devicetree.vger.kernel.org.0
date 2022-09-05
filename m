Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3315ACE64
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 11:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237101AbiIEI7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 04:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238013AbiIEI7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 04:59:07 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B5050188
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 01:59:04 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id e20so10363303wri.13
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 01:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qMb83d2Mm6a6mh+7YEGczs+GjjGflfa5g/QuvR+DiTU=;
        b=Kb7Z+9dsVNZAvjd2NtJ8V/GgmhyUZaCK4Du0bB9gwKSk8QDqVtopc3u2COkR23MJ11
         GfUFpnv+wEyzY093toF6YORnDxTxRcSzR+yqA9eMl32dJuSowcn3tPxtlHO22u34R0gn
         YWKMwdi/uV+5gAm2G9j9znsbcvttxZYd9xT9X566tEMz6j2DmPTqH7Q+P1P66OVAzvRv
         HjMb9q/dBZ4+XYjGDPEvXK2fXTVvAUGBzAqxWroxedxdjYmLWQDt6ejzqraT0BSIdByq
         uFfYn73pQfC0G3GjnG28bjPJLS6fsSuetLZfUSJxWKOyAYkHSB1KKLwdBqS6tsgD5E1c
         7DUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qMb83d2Mm6a6mh+7YEGczs+GjjGflfa5g/QuvR+DiTU=;
        b=X55aEt/UPWYHHhqTH7+gOtpFqUeED9mLBRKMQU1n9pJJ8BTPlyx4uhtKZ5csXKFe/n
         vEYgPvB2pTqWbYtTfq7FrpF22lgQBB8B7pDnwNxmKLGYESIOw1DLLAFMpn4m+jLBDC0l
         9yQZFk+CPVY46HFwL2jCccrd68/JqyE5mteSas3PIMub9YVJ5gcoAEfIIps2ncvOT40a
         T2CMxTNJp9qRFGSbbm3sxIxFXdGHrW84N0FlqeGezt/t9m3Y3gCs1Pj1YAu/1J5QdY2c
         cFSOuHwyTTN7xWNYMfh4mkQQ69LXI4LJA2o4pM6bcyiCzdHAUPhqYJmvMCLFyhEzcsp2
         xUjA==
X-Gm-Message-State: ACgBeo2Xvd568mgxmOMspgw+/E8QJoL+4c3AR3plFnSAoYg4eXU64KHV
        9IMNKgREq7GrOWIWXN1kkx8MuQ==
X-Google-Smtp-Source: AA6agR72bczK2Zykm9Hoysn0o118X96SbQLvuFOYIHk5CryKiJW10XaFDrTmXvf466CrhZwwpsteGg==
X-Received: by 2002:adf:de01:0:b0:228:62ae:78bc with SMTP id b1-20020adfde01000000b0022862ae78bcmr4330773wrm.41.1662368343149;
        Mon, 05 Sep 2022 01:59:03 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x1-20020a5d6b41000000b002250c35826dsm8290182wrw.104.2022.09.05.01.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 01:59:02 -0700 (PDT)
Message-ID: <5bd53318-5261-08ee-3d38-1aa74be3d56e@nexus-software.ie>
Date:   Mon, 5 Sep 2022 09:59:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sc8280xp-pmics: Remove reg entry &
 use correct node name for pmc8280c_lpg node
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
References: <20220905070240.1634997-1-bhupesh.sharma@linaro.org>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20220905070240.1634997-1-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2022 08:02, Bhupesh Sharma wrote:
> Commit eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
> dropped PWM reg declaration for pm8350c pwm(s), but there is a leftover
> 'reg' entry inside the lpg/pwm node in sc8280xp dts file. Remove the same.
> 
> While at it, also remove the unused unit address in the node
> label.
> 
> Also, since dt-bindings expect LPG/PWM node name to be "pwm",
> use correct node name as well, to fix the following
> error reported by 'make dtbs_check':
> 
>    'lpg' does not match any of the regexes
> 
> Fixes: eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
> - v1 can be viewed here: https://lore.kernel.org/linux-arm-msm/20220903084440.1509562-1-bhupesh.sharma@linaro.org/
> - Fixed the review comments shared by Krzysztof.
> 
> 
>   arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
> index ae90b97aecb8..24836b6b9bbc 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
> @@ -60,9 +60,8 @@ pmc8280c_gpios: gpio@8800 {
>   			#interrupt-cells = <2>;
>   		};
>   
> -		pmc8280c_lpg: lpg@e800 {
> +		pmc8280c_lpg: pwm {
>   			compatible = "qcom,pm8350c-pwm";
> -			reg = <0xe800>;
>   
>   			#address-cells = <1>;
>   			#size-cells = <0>;

Eh well I didn't drop the reg from this node because it was named lpg 
not pwm ;)

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
