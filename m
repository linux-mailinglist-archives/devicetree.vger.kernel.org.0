Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E58E867A530
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 22:46:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbjAXVqI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 16:46:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235125AbjAXVqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 16:46:02 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 480304B4A1
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 13:46:01 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id ud5so42772701ejc.4
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 13:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9xdh2yXUEHJLO3yLt9IOrFcz74mAZ087g5gbTk/yanY=;
        b=fm0yBjJquVlA+TgQg+HS6DLHSSnMSnMo2hoYalAO2d0BnBxjIUcTz3ONqP2TB8lQHb
         s2a8wNu8hD9hQaIqV3/fqafwt5rIxg4hlb7B4uW/LVBGNy/AKWH7vr2asjM+mRRmjv0u
         aCp9wDDEiPk9Zz0U9OAvpprbIdnKgzELD2R7hWleOhdseOQvvDrLVmMEJdWjhLvqfAGJ
         qd/V+yet4cMGM7xJ+ASaMrvwSscddjnyu9SAApknJdcvWbHFqibF5TJnmOu578pDs+T/
         IJEtlttjmxSoa2h1WoM9ZYYj1QXc2CAujW3BYFpQDDYsSuq6LNwuRZ7zR7/mJw7ftdsY
         GMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9xdh2yXUEHJLO3yLt9IOrFcz74mAZ087g5gbTk/yanY=;
        b=dn5q78g/qZ7felcHTGmQcF0fgKc1iJwSuCkB81etC8RLKs1qS2VzcwEwW9GCS0eMzN
         RjG+uOnN2tpQbu7dQoWipK8d0Cd8EhdzSUR+UJWZLDoDTn+hRAT+MSmEPdpuk6ezgiUK
         ymP/F57vnEX8Rge/S3DV/3qqjzjL3Fd5uvNqg/h+IGheoEwixR62CERIiYLPjNM1oU9M
         6Bzny18tn0AThy6dRZma39+6pt7WB0SDLEzFo+eqSYG87ChhSElN1vCqJCyQQk5sSRdz
         gyP610B9ewNmRlJM70YzxuNNyIy3sFdYf30Wt2EDyy7TMrMHdEG0yVipOa0gz+MqRX7+
         m7UA==
X-Gm-Message-State: AFqh2koPt1gGnxMUmiJhw8Kd5x3s2zJsRfGXe2agkuRbpLPoT/PIP8aN
        oVhHTOA60sfyJMnfqhINQVSiZA==
X-Google-Smtp-Source: AMrXdXvn3p6vxdHIfQJV7xez9X1sqklQMBgb0JM8gn6Ny6gilstu8jtokmAeSx6Ib1Q3BQljexD++w==
X-Received: by 2002:a17:907:2a8c:b0:870:8e22:1433 with SMTP id fl12-20020a1709072a8c00b008708e221433mr23229804ejc.16.1674596759807;
        Tue, 24 Jan 2023 13:45:59 -0800 (PST)
Received: from [192.168.1.101] (abyl109.neoplus.adsl.tpnet.pl. [83.9.31.109])
        by smtp.gmail.com with ESMTPSA id n22-20020a1709065e1600b00877de2def77sm1420794eju.31.2023.01.24.13.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 13:45:59 -0800 (PST)
Message-ID: <3d126383-8fea-7ff5-3f42-c131ce46547f@linaro.org>
Date:   Tue, 24 Jan 2023 22:45:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8540p-ride: Document i2c busses
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, andersson@kernel.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bmasney@redhat.com, quic_shazhuss@quicinc.com
References: <20230124192351.695838-1-ahalaney@redhat.com>
 <20230124192351.695838-2-ahalaney@redhat.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230124192351.695838-2-ahalaney@redhat.com>
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



On 24.01.2023 20:23, Andrew Halaney wrote:
> It isn't obvious in the current devicetree what is connected. Go ahead
> and document what's on the other end.
> 
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---
Other boards do similar things under the i2c host nodes (see
e.g. sm8450-sony-xperia-nagara.dtsi..

> 
> Not sure if this sort of patch is actually welcomed or not but I went
> through this exercise (for the prior patch) and thought it might be
> useful to document.
..and yes it is very welcome!

> 
> Shazad, this also highlights (unless I misread things) that i2c12 has no
> use for us, right? If agreed I can remove it but sorting through the
> lore links that provided all this it seems like at the time it was
> desired to be added.
It's fine if you guys decide that it's useful for some kind expansion
mezzanine or other add-on board, but if it's not connected anywhere
you may wish to disable the host and remove the pinctrl entries, as
keeping it enabled essentially wastes some power.

Konrad
> 
> Thanks,
> Andrew
> 
>  arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index cb9fbdeb5a9e..3478ab91fe73 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -317,6 +317,7 @@ &xo_board_clk {
>  
>  &tlmm {
>  	i2c0_default: i2c0-default-state {
> +		/* To USB7002T-I/KDXVA0 USB hub (SIP1 only) */
>  		pins = "gpio135", "gpio136";
>  		function = "qup0";
>  		drive-strength = <2>;
> @@ -324,6 +325,7 @@ i2c0_default: i2c0-default-state {
>  	};
>  
>  	i2c1_default: i2c1-default-state {
> +		/* To PM40028B-F3EI PCIe switch */
>  		pins = "gpio158", "gpio159";
>  		function = "qup1";
>  		drive-strength = <2>;
> @@ -331,6 +333,7 @@ i2c1_default: i2c1-default-state {
>  	};
>  
>  	i2c12_default: i2c12-default-state {
> +		/* Not connected */
>  		pins = "gpio0", "gpio1";
>  		function = "qup12";
>  		drive-strength = <2>;
> @@ -338,6 +341,7 @@ i2c12_default: i2c12-default-state {
>  	};
>  
>  	i2c15_default: i2c15-default-state {
> +		/* To display connector (SIP1 only) */
>  		pins = "gpio36", "gpio37";
>  		function = "qup15";
>  		drive-strength = <2>;
> @@ -345,6 +349,7 @@ i2c15_default: i2c15-default-state {
>  	};
>  
>  	i2c18_default: i2c18-default-state {
> +		/* To ASM330LHH IMU (SIP1 only) */
>  		pins = "gpio66", "gpio67";
>  		function = "qup18";
>  		drive-strength = <2>;
