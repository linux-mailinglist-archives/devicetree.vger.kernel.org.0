Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3C0E6C1027
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 12:04:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbjCTLEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 07:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbjCTLDq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 07:03:46 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E1451A96B
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:59:39 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id a32so11613973ljr.9
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679309972;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UWGmTe6cHKLXfItotDWU53tPbM2QwDIy9fraKQP6pWc=;
        b=l8XzT4Z5L7Z1Suv/sMMykA9BhEiikHcMBNKgvX+X4pMtJsM44VOi8FyEI2Bm5mP7Xh
         Ho1d81zfF2TZrvUnYsTjWbMwy1T6HnRqyXmmPT06c5fD5B08Cc62InEfw6giHMrMwB77
         kAyQ1hDMpm9scWz8micYKanhoIRlmfCiYtgkEHu08tOfMJwfQwGkb7BqZ40gWHKZRgnB
         m9Bkeer3Mz6/y3PdZZKguNjiRqdmZdsHu82+da2xqVCAdeZmUkL3ytJHtTDyu34d5Jzj
         hoDqYzzsKI+nk7O4KRdpd6n0fPD7OtlJHF/5rFXZXr4dW8meMZCZO/DxKj/Fa26ZJqfG
         zsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679309972;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UWGmTe6cHKLXfItotDWU53tPbM2QwDIy9fraKQP6pWc=;
        b=dyDtDPVBqaGgfZ3Z6liXGHcyzpEyESjMTUtrnFKwDuFdMuHrqxrvFz39NEgWXv97Yp
         eNzpyYNj7c/KzF0Xa4Gw0qajbfKsukvVg2Lw6Bge7V20WgCSFaZW59XEEvh01zgm+vjd
         zrm0aUz+K87AxsuX5ayKrzfOYPUQbqP4wVGU7TLyRF7tCQUS4mciUXUB/qiDliRx2cIu
         dIb0+FHNp7mIZynhMrufNgd85Qu5+o5ON4FSGtpUhgcmZkgzvJeTZnDvJzK+l4sh9FY6
         b0pwPgg11vP6dj2wRchb3R2F+uDqf1Zz8Ou1NT4tF/zT1kcm8ZwULIo+5pwgaEThdRuj
         y4Pw==
X-Gm-Message-State: AO0yUKUI8WQJRll7vsJIb9TQb6HE2tolqM6sq3UBmxrCD+vV0lQex32u
        nvCpEAulS3XRdttYhOD1/UGFsg==
X-Google-Smtp-Source: AK7set9tM5PRfDurzmymTzNE12vthtHUPQDrRxC6SHxx5x5Vhd8wk3NJ/cEreblq8XGdz7zgDBkmIw==
X-Received: by 2002:a2e:880d:0:b0:29b:d436:5c8a with SMTP id x13-20020a2e880d000000b0029bd4365c8amr1741092ljh.3.1679309972812;
        Mon, 20 Mar 2023 03:59:32 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id d3-20020ac25443000000b004e83f1da2b4sm1643915lfn.66.2023.03.20.03.59.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 03:59:32 -0700 (PDT)
Message-ID: <515e4533-fd98-ec96-3e00-03d27168e576@linaro.org>
Date:   Mon, 20 Mar 2023 11:59:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc8280xp-x13s: add wifi calibration
 variant
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Kalle Valo <kvalo@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230320104658.22186-1-johan+linaro@kernel.org>
 <20230320104658.22186-3-johan+linaro@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230320104658.22186-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.03.2023 11:46, Johan Hovold wrote:
> Describe the bus topology for PCIe domain 6 and add the ath11k
> calibration variant so that the board file (calibration data) can be
> loaded.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216246
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 150f51f1db37..0051025e0aa8 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -711,6 +711,23 @@ &pcie4 {
>  	pinctrl-0 = <&pcie4_default>;
>  
>  	status = "okay";
> +
> +	pcie@0 {
> +		device_type = "pci";
> +		reg = <0x0 0x0 0x0 0x0 0x0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		bus-range = <0x01 0xff>;
> +
> +		wifi@0 {
> +			compatible = "pci17cb,1103";
> +			reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +			qcom,ath11k-calibration-variant = "LE_X13S";
> +		};
> +	};
>  };
>  
>  &pcie4_phy {
