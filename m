Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04CFB69C823
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 11:01:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbjBTKBS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 05:01:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjBTKBR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 05:01:17 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 728A715CAE
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 02:01:16 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id x24so1103040lfr.1
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 02:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=45k+CD+Uy7+abBCEx58jWxzQEaKGn29fB3PlpjHhQ+s=;
        b=lEA5YajUKNw5qFYvkX/CfuSVbDSVU8t1/W1gCufcGb2rc9MUAWBH1Z08TuvjGe6s9o
         qa46Im/Ewwf6xrb2nREddFZu0uXHg8VWe72HWDl60cfVdjxtK6iPW87sjYPKxS1eXimP
         R3V1983SwEHIzdZ4lngYPbI0PsqtA2ZCuO166ZberZun71NbxOgAvQG9wr4GiA6u06/L
         xGOY7DW/dhYEOjNcBJNv4OgpWa3GwdEemrw4aGDe/vDow0Ay1WTTNMl1054Zz2TjaBiY
         Jztnjgl9SlRCAbgnb62kgdtAh+ATH8q205s9MUp3IUEdZT2B4Zc1W+nhaEAY7xG8Mjuu
         VCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=45k+CD+Uy7+abBCEx58jWxzQEaKGn29fB3PlpjHhQ+s=;
        b=jRFtMELJeaPMkjL4ECg3RgHSpxD/peoGYKplAq/QM2wQwLwUvrjqhBZR/Wckz1quit
         1FsyrL3UfYnTI3RxJ91LTpgUKXs4BdfTZxKe2PcUnVztptp36mbMqX9ysAwWVLUn5B/7
         pDy7XiuAWyM2bqeeBDrFzpBZKi4zcXBSNKGjQLDkOv8yZWNrVYi5B4OUQCmH5OdvXVJ2
         BnzOMB5o7XkdI3fYPSzF26iTXFFfv6Dch4E8d3rKdbthi03yVwMmZ03cxG9dG+Xy8APU
         b6AbsBITiymOixah+0bJPWatt63jAoerQ/f9EBFJD+YaDMoQEJI15BaCDrk66xdUN4nD
         1ypw==
X-Gm-Message-State: AO0yUKXq6+bc+uIykoe5u9oROxzxDF8dDD7FlcD2J7i3n5jk9bfIi6aU
        UF1cr7owRSV5kDMRsxEiVn7Lnw==
X-Google-Smtp-Source: AK7set+2sE1Uars+rQC0n5eK5gZU4WLr3m5tVxdT+ymFTGTfXdnFDIofDYayU1L6D8KcxmN/H+qwRA==
X-Received: by 2002:ac2:51a6:0:b0:4d2:c1c7:b38b with SMTP id f6-20020ac251a6000000b004d2c1c7b38bmr243961lfk.3.1676887274737;
        Mon, 20 Feb 2023 02:01:14 -0800 (PST)
Received: from [192.168.1.101] (abxh184.neoplus.adsl.tpnet.pl. [83.9.1.184])
        by smtp.gmail.com with ESMTPSA id n25-20020a195519000000b004cc8196a308sm1473398lfe.98.2023.02.20.02.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 02:01:14 -0800 (PST)
Message-ID: <c17aa0aa-cd94-7a7a-44b3-1e8d033cd3d7@linaro.org>
Date:   Mon, 20 Feb 2023 11:01:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7280-idp: drop incorrect
 dai-cells from WCD938x SDW
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.02.2023 10:54, Krzysztof Kozlowski wrote:
> The WCD938x audio codec Soundwire interface part is not a DAI and does
> not allow sound-dai-cells:
> 
>   sc7280-idp.dtb: codec@0,4: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 8ebcf763b3c7..cff0e0d31c15 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -480,7 +480,6 @@ &swr0 {
>  	wcd_rx: codec@0,4 {
>  		compatible = "sdw20217010d00";
>  		reg = <0 4>;
> -		#sound-dai-cells = <1>;
>  		qcom,rx-port-mapping = <1 2 3 4 5>;
>  	};
>  };
> @@ -491,7 +490,6 @@ &swr1 {
>  	wcd_tx: codec@0,3 {
>  		compatible = "sdw20217010d00";
>  		reg = <0 3>;
> -		#sound-dai-cells = <1>;
>  		qcom,tx-port-mapping = <1 2 3 4>;
>  	};
>  };
