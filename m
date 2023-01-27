Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 424A167E4C3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:12:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233736AbjA0ML7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:11:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232808AbjA0MLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:11:44 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECF1081B1A
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:05:55 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id h17so5316439ljq.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PdWwpxSDGoFOEKob9mo9a9s1gaxlIdAqkjIS2XozuJA=;
        b=QoX7zscQqk1q24sRZv0Q/YfFxePAwvFGNJanFsKGNWah+mUtOfsVjYGDd4kPcRrhrG
         QrN/ReYd4UvcUkQX5TyVvh/LOfsJ7MPR3IsEa8zhyvwsYEORB9iv5hF87noh32cdSqGl
         nVEeFYTYccIt/cSlUdGOeY6NI3ylBodtlxHKjemgNMAm22Atp8txm+Rfi+HasKiKjn0v
         292tZDIVzWqQ8lwuI6F+hUwisWygfiAsbdhhVcuLeuo1z4H+wmBLRyqpSHWQBK5KTf1M
         urZqiLhApf/UQ7//11NpGep4dUJWiiVDua9Fz7PO3ywYaP4JxbBZjmrPWnr1fNh4/HGF
         263Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdWwpxSDGoFOEKob9mo9a9s1gaxlIdAqkjIS2XozuJA=;
        b=g8lQ8L8Cn5Tg5IP1VTvQlW6kaA9t4URMw/4WCdTLqDo32fsGDFKJzgcxRhHjk75tTe
         r0VhotvwoqF95Z+uiO4zQyorLzE9W7IsmSbROmXwX1/ARKG6c7ItnoIFIYOq+0Bf4ACu
         nGNGjG2uuavWRH4AEm47miJ4GBbfEFm8MSchTnkNVP6sVw0yBjga/F9CYJK7MHMHRjXL
         92A/8PsYm/6VgHUW2TTldGMJ2gZhRod9PY9nYrphBT2JFBMNK5ukwid27fiGxeX91fF7
         bRjGc6o017WekUglr68qtvT5L6aMxkpCbku31Ow8bgTRaK1K5fk/8AbFY26N2vQoBs4S
         MHTA==
X-Gm-Message-State: AO0yUKUgrs2IChELSzg9iGr6zFEfLuZ/l7gsoz5XelhD8nac4/U1fLTE
        oGO4r3A+ZeID0nt2e9SwDPB/5ZkzR6kjzsxv
X-Google-Smtp-Source: AK7set8yigFJ4av/4J15xC9/5hmmdm0vu2XLuoGUZUY9zmxqZQi8UMKe8pvSUeOfgO2uFYzrtiR1OQ==
X-Received: by 2002:a17:906:12cc:b0:878:7b5a:281c with SMTP id l12-20020a17090612cc00b008787b5a281cmr4321135ejb.10.1674820320018;
        Fri, 27 Jan 2023 03:52:00 -0800 (PST)
Received: from [192.168.1.101] (abyl20.neoplus.adsl.tpnet.pl. [83.9.31.20])
        by smtp.gmail.com with ESMTPSA id w10-20020a170906d20a00b008448d273670sm2087788ejz.49.2023.01.27.03.51.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 03:51:59 -0800 (PST)
Message-ID: <a218e7a1-5819-6853-0600-0ba991e7fc9b@linaro.org>
Date:   Fri, 27 Jan 2023 12:51:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 02/11] ARM: dts: qcom-sdx65: align RPMh regulator nodes
 with bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230127114347.235963-1-krzysztof.kozlowski@linaro.org>
 <20230127114347.235963-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230127114347.235963-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.01.2023 12:43, Krzysztof Kozlowski wrote:
> Device node names should be generic and bindings expect certain pattern
> for RPMh regulator nodes.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx65-mtp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> index 85ea02d8362d..ed98c83c141f 100644
> --- a/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> +++ b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> @@ -65,7 +65,7 @@ vreg_bob_3p3: pmx65_bob {
>  };
>  
>  &apps_rsc {
> -	pmx65-rpmh-regulators {
> +	regulators-0 {
>  		compatible = "qcom,pmx65-rpmh-regulators";
>  		qcom,pmic-id = "b";
>  
