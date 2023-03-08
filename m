Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1676B0F0A
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 17:42:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbjCHQmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 11:42:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbjCHQmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 11:42:02 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87036C85A9
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 08:41:43 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id j11so22057774lfg.13
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 08:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678293701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u1oKzNUwat3zIdw9eyz/Jgrr2Id4V+b9KPKPPPxanT4=;
        b=kLw/RUDLAFMVpizus8R5Npwln2Go9MByZr1ByA3YmINbTXYwVayiatxf8DKQ6mklQO
         hn73CIjSAEIeTkutyzm4248Mo4ItX1FieKwYwfzGgUW13PTshWvsDwnec7kznf+1qef4
         GvLk+vb4YBsf93T1+x1aYAIgjHxbNqrmZ9NKYFB8h50HkwwKCh0+IsxrZx21kTsn97Lu
         9m+eb1DlPmH291tzfNeQCqkD86gr/4YZzPc5LgE1wG0kQ3bfCm+rBpPy0B1S0r/VQrBh
         gPhD2sOSmuaLyO3cKW4qKKQwxQ4f+cWbFuCuQWacnbbuG9ZTPpmj38E8aZE07aaozDPH
         T5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678293701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u1oKzNUwat3zIdw9eyz/Jgrr2Id4V+b9KPKPPPxanT4=;
        b=ftgb8LcLgWnYLFy4dzILY6I7gElnoY9rgVlLnmyPF4lpdKgXTF4/LW1BspZxYoQ75E
         NWZ+1JuW867AkeJaqHPAtmOo7EB7zVVnAOCR74ZusaZLY1tLTPEGp25JJ3YVeMPm6ZNP
         bg3TDq83UtzlSokWbTFdyMNixh3Lkjb+Zt7Tjofjk+tIMygbp6YPWQ/MlW9Jho3CIj3I
         uX+nqG7SzzpbsZ9nL4gysdjIftVsIERhU+8CxpzpTzHgw8H7+uje6IRnOnzXOYhxSNWs
         D6WYfZWiWD7OMLqncf90Y6bepYnvkTRkSU25ccSvpv5gjsEU4WqGR4fITBVTAyJclsPt
         lerQ==
X-Gm-Message-State: AO0yUKVz0JOavUvERAex6I48eBDogYNVr0lmJz4YOfhQsVBwqfVQn3ht
        4nSEns76kle+CUAHlN3R6jK7EA==
X-Google-Smtp-Source: AK7set93dp15pQ0LhiNdNPB62SFozi5pD2P8xGSMqpbZZtew5YVUPaN1f6bYp5YVyPifPfnbGTuE2A==
X-Received: by 2002:ac2:522e:0:b0:4dd:a784:c829 with SMTP id i14-20020ac2522e000000b004dda784c829mr4620164lfl.9.1678293701224;
        Wed, 08 Mar 2023 08:41:41 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id u27-20020a056512041b00b004db266f3978sm2399839lfk.174.2023.03.08.08.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 08:41:40 -0800 (PST)
Message-ID: <24abaa55-41c9-1745-bf17-bb8cdf536f68@linaro.org>
Date:   Wed, 8 Mar 2023 17:41:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 2/9] arm64: dts: qcom: sa8775p-ride: enable QUPv3 #2
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230308104009.260451-1-brgl@bgdev.pl>
 <20230308104009.260451-3-brgl@bgdev.pl>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230308104009.260451-3-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.03.2023 11:40, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Enable the second instance of the QUPv3 engine on the sa8775p-ride board.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index 3adf7349f4e5..a538bb79c04a 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -24,6 +24,10 @@ &qupv3_id_1 {
>  	status = "okay";
>  };
>  
> +&qupv3_id_2 {
> +	status = "okay";
> +};
> +
>  &sleep_clk {
>  	clock-frequency = <32764>;
>  };
