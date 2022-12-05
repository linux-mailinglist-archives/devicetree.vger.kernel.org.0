Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E64642F91
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 19:07:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231823AbiLESHB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 13:07:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231425AbiLESGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 13:06:34 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 620581FF86
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 10:06:33 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id d6so19832530lfs.10
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 10:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vu0CtkB3guUPfMS7CpRIQ8Dt+ybBzQKNPH967OkF8/Y=;
        b=g4pIHPDZX+J+V9jbIhleYoPH4Ky6J49WImIDyRq+xZGDBfM1kXOdGOH+nF8mvI3dKw
         VrQ8/1Ozz6coJQZ/Hlhc6lls89bIXCW7UpAFco/beUfUmvgSkfCyudHrogv0zUmUvO56
         O8Kbeeuk+PqOUPqQEYiSg2pvDMn9J/MiHpZj20Sc6NUysfGzCcVGDnUN3ouarV3kxjyS
         0QuXBaREDv5LWVp3MLPwbZlXuT4hD/Kz7RSkavWjSBQbD/3Ft5Wnfme2N15xwy2DpaVy
         ehK2F+xBNCyyy48eQHgXYsv1L+ReAxO+Ebu6TIQuLeZZJBZWicqW1HbqBOwPgyHw10J+
         INOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vu0CtkB3guUPfMS7CpRIQ8Dt+ybBzQKNPH967OkF8/Y=;
        b=jEZ+auyK1RNsUvLP3Ll3IzfUV9FPL9VHc+Ifduwq/yQtOTag0eDX+ysUUxCCuDt5pG
         oCnSOCTeHcHVegZW40FD/i1MXBUNNT9XGmp/fShLh1MldHm+m9rRK2nmGiqa5o4MbyUl
         0cI0j+KbUnzhWnkWq1EQQYfXdmlvU3v1o6IYb0B/SRmNC2VGAfqY0RF25aXx4mrVkF09
         U+Q1pEIPRJleEHQK4rZusDs3ESeDzpuU+i1yojhiKbnSTBvcS9Uvwd+u5KtuE8y3dtum
         gmlzcnwbvqZoY++9PS/FLDBM3JYt9leVeY2SHOib4FDHjRSitFQ8uloA1ALndGedWdm9
         RgXw==
X-Gm-Message-State: ANoB5pnBslSVZO8vHZ7LAzSR6ABvqPh7wXZckHQKUj2uDZ992yVDTt8d
        fW79O6PN0dHU3fTtXAkHn9YGmg==
X-Google-Smtp-Source: AA0mqf7WZnJMfbF8n+RBXU4uu5pM8fReKBOlV5mHLtDEaIRnYn8/ZKFur+vdSSzkmPlELLWK+afIfg==
X-Received: by 2002:a19:674a:0:b0:4b1:3931:af with SMTP id e10-20020a19674a000000b004b1393100afmr25019742lfj.394.1670263591688;
        Mon, 05 Dec 2022 10:06:31 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id o18-20020a05651205d200b004b5323639d8sm2179775lfo.155.2022.12.05.10.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 10:06:30 -0800 (PST)
Message-ID: <2761807c-b4b1-9c8d-50e3-efe8258ba610@linaro.org>
Date:   Mon, 5 Dec 2022 19:06:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Subject: Re: [PATCH] arm64: dts: qcom: sa8295p-adp: Add RTC node
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221205174309.16733-1-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221205174309.16733-1-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 05/12/2022 18:43, Bjorn Andersson wrote:
> The first PM8540 PMIC has an available RTC block, describe this in the
> SA8295P ADP. Mark it as wakeup-source to allow waking the system from
> sleep.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/sa8295p-adp.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> index d55c8c5304cc..d2eb3d870f5a 100644
> --- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
> @@ -510,6 +510,14 @@ pm8450a: pmic@0 {
>   		#address-cells = <1>;
>   		#size-cells = <0>;
>   
> +		rtc@6000 {
> +			compatible = "qcom,pm8941-rtc";
> +			reg = <0x6000>;
> +			reg-names = "rtc", "alarm";
> +			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
> +			wakeup-source;
> +		};
> +
>   		pm8450a_gpios: gpio@c000 {
>   			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
>   			reg = <0xc000>;
