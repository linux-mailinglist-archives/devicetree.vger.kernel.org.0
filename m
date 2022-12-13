Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE07064B7BD
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235639AbiLMOs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:48:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235755AbiLMOsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:48:32 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB40D25FC
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:48:30 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 1so5295049lfz.4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=12/6BmOhRQtkOACZ0Csfo8o5YslC75aSQ1sUnCFEdqM=;
        b=CBVln09sOZEFYyYJR7Wb8th4jx3ulHFz/EDuoetDAhaZv2B8QBOWVBJCYpHuDOm0Ui
         zN/8InFPOmeM83z9WzgNDyjfRAqxdXvdUyo6CO++MkbAApGUz6eIRGhTH6xw4P5DxFpC
         LjN4oCnHLVEDMzV619DJGb0hchoM3oN4wsY4rGWPlDGcMd7Vy+rMJ2O0VURYmbVva5lA
         A6xCYEKyMtiklETUtNi947Yr+RfIRNWaT5p/wQmERVd6t2XWOlimNXpF7/L9DSAnBD7V
         lZDhsQ7CExX9hwsAU/rxHIVwX2rO+foaAbCXq+EQPes+B/kZHu3GrrjBzII4q/JUQzXt
         YfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=12/6BmOhRQtkOACZ0Csfo8o5YslC75aSQ1sUnCFEdqM=;
        b=6ZCL5zYS16hva5C3FjGjq4JIiocpbAwytglAp6CS6AMp+3995ak9MxDjU3AR7zpjwW
         wRAfPkErZ2r1dZCoFwF/dlK6yB9LWZn681RpdGyWnE9zMTNYWrUgmKpbn/BQmp9VeiXW
         LiyTz8eZN2dMMJQjwQ1gnz9QuyxDS9QhJeRzL2Xnk3PBDHEwGoqlnPYEGfd5eCRnsfid
         ngafzcnQ/HDhxePd9HsDrmV+h9yqBf24P96CfAguWYuu3IwpfzAg0/3ot1znSYJB6ZFR
         8WZ92LthXTp5iaXl663qBucFSakl5Rl3YkZJTq/egvC72MuNcJUbnDxyWFYYi8w/g457
         tTFg==
X-Gm-Message-State: ANoB5pmhKQDy+hdgWwrpVk01T8VgXLn8dM4RCl5k9IIUFp5YZms+XzQ4
        TJwQ+VswH2NpsNLlKqImSsUpE4nCbmW84avj
X-Google-Smtp-Source: AA0mqf6XcaD3Q9O8tTx3t7Ouoa+VcUybXP7OmV19cGf/61eUdjet6ipxLVzB2c1e5zGWd4zOPCPtnQ==
X-Received: by 2002:a05:6512:22d2:b0:4a4:68b9:66b8 with SMTP id g18-20020a05651222d200b004a468b966b8mr6687562lfu.3.1670942909161;
        Tue, 13 Dec 2022 06:48:29 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id s21-20020a056512203500b004a2c3fd32edsm392757lfs.144.2022.12.13.06.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:48:28 -0800 (PST)
Message-ID: <309b3fad-933c-6c45-5cd7-4e082da62c15@linaro.org>
Date:   Tue, 13 Dec 2022 15:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8540p-ride: add qup1_i2c15 and
 qup2_i2c18 nodes
Content-Language: en-US
To:     Brian Masney <bmasney@redhat.com>, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     robh+dt@kernel.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.com, quic_shazhuss@quicinc.com
References: <20221212182314.1902632-1-bmasney@redhat.com>
 <20221212182314.1902632-4-bmasney@redhat.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221212182314.1902632-4-bmasney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.12.2022 19:23, Brian Masney wrote:
> Add the necessary nodes in order to get qup1_i2c15 and qup2_i2c18
> functioning on the automotive board and exposed to userspace.
> 
> This work was derived from various patches that Qualcomm delivered
> to Red Hat in a downstream kernel. This change was validated by using
> i2c-tools 4.3.3 on CentOS Stream 9:
> 
> [root@localhost ~]# i2cdetect -l
> i2c-15  i2c             Geni-I2C                                I2C adapter
> i2c-18  i2c             Geni-I2C                                I2C adapter
> 
> [root@localhost ~]# i2cdetect -a -y 15
> Warning: Can't use SMBus Quick Write command, will skip some addresses
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:
> 10:
> 20:
> 30: -- -- -- -- -- -- -- --
> 40:
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60:
> 70:
> 
> Bus 18 has the same output. I validated that we get the same output on
> the downstream kernel.
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 46 +++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index d70859803fbd..6dc3f3ff8ece 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -17,6 +17,8 @@ / {
>  	compatible = "qcom,sa8540p-ride", "qcom,sa8540p";
>  
>  	aliases {
> +		i2c15 = &qup1_i2c15;
> +		i2c18 = &qup2_i2c18;
>  		serial0 = &qup2_uart17;
>  	};
>  
> @@ -188,10 +190,28 @@ &pcie3a_phy {
>  	status = "okay";
>  };
>  
> +&qup1 {
> +	status = "okay";
> +};
> +
> +&qup1_i2c15 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qup1_i2c15_default>;
> +
> +	status = "okay";
> +};
> +
>  &qup2 {
>  	status = "okay";
>  };
>  
> +&qup2_i2c18 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qup2_i2c18_default>;
> +
> +	status = "okay";
> +};
> +
>  &qup2_uart17 {
>  	compatible = "qcom,geni-debug-uart";
>  	status = "okay";
> @@ -313,4 +333,30 @@ wake-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	qup1_i2c15_default: qup1-i2c15-state {
You can drop mux/config-pins and have the pin properties live directly
under the qup1-i2cN-state node.

Konrad
> +		mux-pins {
> +			pins = "gpio36", "gpio37";
> +			function = "qup15";
> +		};
> +
> +		config-pins {
> +			pins = "gpio36", "gpio37";
> +			drive-strength = <0x02>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	qup2_i2c18_default: qup2-i2c18-state {
> +		mux-pins {
> +			pins = "gpio66", "gpio67";
> +			function = "qup18";
> +		};
> +
> +		config-pins {
> +			pins = "gpio66", "gpio67";
> +			drive-strength = <0x02>;
> +			bias-pull-up;
> +		};
> +	};
>  };
