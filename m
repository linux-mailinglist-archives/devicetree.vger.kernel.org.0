Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB957071D2
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 21:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbjEQTR4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 15:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjEQTRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 15:17:55 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C49271C
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:17:53 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f00d41df22so10997341e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684351071; x=1686943071;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xjBkKoQooBRasPXTvdoKLHAvFyREmlAWAmfsiCrajfQ=;
        b=zyE1Ycmn3BvBbv2X8jQk5dSETIo0EI0Giqaviu2QWf9tdHMt9BZQjZe/lrD5zQhpcX
         IBFm96qV6us4zZPRsN+dHxJKfkzBRaqfrkjX++WxB6k+40cG3og+WKHhAkT25WUEK5Y/
         vdYLSmrSIK6KXyTmX7LjzwW4l/Qnu09LmeXJH8a+bwISgIuMimr9t9YJNMIziMt6S+/b
         KGIaqJKccnebblamjibfWa90huvlIEk0SSgVMWVIOHY7NT0uj/a3mqGTcoAugEA1r8CF
         9NBPoGapxhMFluBHt2jyJ+6ARyUpXqvzqEiJ1UmCZunXTfaoObtfsStU7z++PJxYECD+
         r3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684351071; x=1686943071;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xjBkKoQooBRasPXTvdoKLHAvFyREmlAWAmfsiCrajfQ=;
        b=U+Lcy2Qe6mTPdcZ2ahEIrZ9IdN9x3590ngDHduwB0HLjx5frfVEqqJpr8NI7Oc4C65
         FF2uPAo9Ls+5JcIHa5Q606KpTKstqUxTzX9gRv8eSBQQhKVB3fUQ2nozx+8I0B/bVzu4
         60a1fBSzpYtgqrDVtinHXUJ93PMQVY8yn+6RzlxNhLiEcjKssYkIhSxj7nc6fUtD1+a2
         9e7P22vh8e6qu1ZISCS/YHEJau+Ctk7A0xarN6fM/eRc5RT7NbVy8d4+GwphXC8TGuhc
         OcdtQYcYcTIUNzko9U7eC9Cs93nobXUWQy+GQDAnbmqKof5wPiG+c5WIW6Z2Lsl1xlZ6
         UA0w==
X-Gm-Message-State: AC+VfDxU37laBiBn7/ent5VE6Xnya3Pe5qfMLs7hwx1wucuTCwugNjra
        dA4LvsgVXW3hup8Pne2C6XxZ5w==
X-Google-Smtp-Source: ACHHUZ6BeAe5wcSjM5PxTcdK5pDWXGBHiTANw3cHnBygE5SEFC5s2Blurk4+B8KvqSpm97/woFjOow==
X-Received: by 2002:ac2:4e16:0:b0:4f3:8225:fadf with SMTP id e22-20020ac24e16000000b004f38225fadfmr749703lfr.12.1684351071344;
        Wed, 17 May 2023 12:17:51 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id x17-20020ac25dd1000000b004f155743899sm3458609lfq.92.2023.05.17.12.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:17:50 -0700 (PDT)
Message-ID: <f757a566-e330-8067-dc9a-16998abbe80a@linaro.org>
Date:   Wed, 17 May 2023 21:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/3] arm64: dts: qcom: pm8550: add flash LED controller
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        "Signed-off-by : Abel Vesa" <abel.vesa@linaro.org>
References: <20230516150202.188655-1-krzysztof.kozlowski@linaro.org>
 <20230516150202.188655-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230516150202.188655-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.05.2023 17:02, Krzysztof Kozlowski wrote:
> Add node for PM8550 PMIC flash LED controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/pm8550.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8550.dtsi b/arch/arm64/boot/dts/qcom/pm8550.dtsi
> index 46396ec1a330..33f357a80636 100644
> --- a/arch/arm64/boot/dts/qcom/pm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8550.dtsi
> @@ -55,5 +55,11 @@ pm8550_gpios: gpio@8800 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		pm8550_flash: led-controller@ee00 {
> +			compatible = "qcom,pm8550-flash-led", "qcom,spmi-flash-led";
> +			reg = <0xee00>;
> +			status = "disabled";
> +		};
>  	};
>  };
