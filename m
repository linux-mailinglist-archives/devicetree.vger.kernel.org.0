Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 064CA69C826
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 11:01:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbjBTKBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 05:01:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbjBTKBf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 05:01:35 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3722715CAE
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 02:01:31 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id k14so11989lfj.7
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 02:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vBEZvAjX93RycLXsAWqWLohrTp8jq3ubVbqPFKfLzbc=;
        b=vUJGmgC/qJ1hDB631DmR499TOBB6+1XRceb2+zwS9CHH6FUACrLqIK3FMomZdvYqHR
         PAKOjDR/Gd9OqsBlA7xU0ePBWZqlorxMmcLXrn5tlK253e/vUeE71H5XbW1MFnc+s51R
         TELqrbQwSdeJuNBD4LfJXw9WRI69iRYUN7HnwR2BDxlQL3txXgveqacqPfaZP80T/GTT
         IHCB1Lf4aIjPYi1anEYs1GdSYE7UQHYVjBGE5jWF7ufLDN1DlK0uYFT5uTB11zrFsJEg
         aGWsU8469zWvkdmU6cxDcpMdqk78eGnwyie7C2pTxSbFmF0BL4go2fGba5crcMkOyT2O
         EmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vBEZvAjX93RycLXsAWqWLohrTp8jq3ubVbqPFKfLzbc=;
        b=EqBMANfzUabwx41Baev3WnUk60ZnaxnB6X20z671T11ufoDQF50DHDGkDSpP3L9zur
         anrDIc/d2PD2DNzWheIgaeGqnHdPEIeO4jF+A2SphZBq4fEQ7nkJV5V0wEOv6mF0HM+A
         Z7CKjPWW+ktdFhYTBr6ihJGxhwgRrYW51szEfDFBQqL+zy6YrU65tRRFf7nB5obJqEpu
         +Bt/zmHyWslx2MGMhwK4LpdmmDV5iOnPzIpeyA0ubUO91SWloQrlLtJTxjKoWyxzI5ch
         LL5OJY09GnBK1B5KbSi8lHXeTLZD6Ux7XxN3/6fbmzZDo3oEeeGQsNXqrjfXTGmTk80l
         hH6g==
X-Gm-Message-State: AO0yUKVpfybgo8ZTuvEuVi3X2iKoKvgHqxJD1ZEDb7xSzT+nLjtFCIK4
        D+0Pl3pk68+Aji+Z1geyY1CNUw==
X-Google-Smtp-Source: AK7set/RLED7POxANEjawWCZd9y0DhL7+H+vwPHf4ZhZvIDfUCF8oyOn5KWO/fdxk86dYuLaO/POiw==
X-Received: by 2002:ac2:48bc:0:b0:4dc:4b70:a723 with SMTP id u28-20020ac248bc000000b004dc4b70a723mr270817lfg.30.1676887289426;
        Mon, 20 Feb 2023 02:01:29 -0800 (PST)
Received: from [192.168.1.101] (abxh184.neoplus.adsl.tpnet.pl. [83.9.1.184])
        by smtp.gmail.com with ESMTPSA id l13-20020a19c20d000000b004b550c26949sm1481452lfc.290.2023.02.20.02.01.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 02:01:29 -0800 (PST)
Message-ID: <357f475a-e8e2-2e99-5250-0d63578e3b0f@linaro.org>
Date:   Mon, 20 Feb 2023 11:01:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280-qcard: drop incorrect
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
 <20230220095401.64196-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230220095401.64196-2-krzysztof.kozlowski@linaro.org>
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



On 20.02.2023 10:54, Krzysztof Kozlowski wrote:
> The WCD938x audio codec Soundwire interface part is not a DAI and does
> not allow sound-dai-cells:
> 
>   sc7280-herobrine-crd.dtb: codec@0,4: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi b/arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi
> index cb0cc2ba2fa3..95d9e4a19d76 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi
> @@ -419,7 +419,6 @@ &swr0 {
>  	wcd_rx: codec@0,4 {
>  		compatible = "sdw20217010d00";
>  		reg = <0 4>;
> -		#sound-dai-cells = <1>;
>  		qcom,rx-port-mapping = <1 2 3 4 5>;
>  	};
>  };
> @@ -428,7 +427,6 @@ &swr1 {
>  	wcd_tx: codec@0,3 {
>  		compatible = "sdw20217010d00";
>  		reg = <0 3>;
> -		#sound-dai-cells = <1>;
>  		qcom,tx-port-mapping = <1 2 3 4>;
>  	};
>  };
