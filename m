Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 598D65AB807
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:15:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiIBSPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:15:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiIBSOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:14:52 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF535D4F78
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:06:12 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-11f11d932a8so6643463fac.3
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4SReG0dYNdI4sOJC0GCXgHb2e5dEKOUxDukEb4b+e3g=;
        b=Gf3EwLi68gK30oxnDc7X+CvSXy+AZ4yGBhpy4/ay6Jn8oWYAThI8VKoz/ohSrtiEl+
         c8BgNy/F1Tjrut1lp8ExIpLI3g/3SqMpkl6k9xXHNkb1xjvlsePjweTksO8QUVw/9608
         /MQBVBsn2FKtx+DsXSnS1wOalKeLJcay8/3dwij/LsXpuPQX0L/E5qE+apDQoHdvzwpA
         uAgwsv3xMmn3hURe2+ga7Drt+ZWs76BS1nmPrq6wabvCKnTLOaM05iwbdXJAKPz0Q6dF
         oZ8tHRAP9ek4cip58Q5hz4KBdZSnrDIwPMOyRjyNPin8wiGFdlXoYKeg2pT5texxrDI3
         FF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4SReG0dYNdI4sOJC0GCXgHb2e5dEKOUxDukEb4b+e3g=;
        b=5OyA9Zcg8a2E4ryEqD0ZhJK6U5XBb3TNRq72TUeU5VZo0x3zCTSTQK2rak1klQBvXX
         jg7A8xLFiA08UFuAfcS/p6jxqzqwdBJQ0ePowmgDOyx8cf+k6odCWfKd/SQxdf4t+0RQ
         1feV4A1tBHz1C1hbaP39V2CMoWbFn7UFT0iyiNwG/N4qtVGpt5Up1GRyGj3AStiT/h7b
         N52uHhRBPH8mfbKSOwbvC535hIrhL+rjxtZrDZI/+L9rrEOXabT9IZhWACNphzghHxBQ
         8k5VFFcPPPNOteWi6eGfcifxAdeM+p8dXe8jE5QeYlP1HGiKKyzg1wR6TPa8yYcHOwBP
         0x2Q==
X-Gm-Message-State: ACgBeo1C2N7LZp7Q2xkV70WSyI5tNgU6VBTAoXgwlTJfxNykKeYyJBIt
        PE2TEs8IBS4GqDTNGuSstoHkOg==
X-Google-Smtp-Source: AA6agR5XFga2vK5PDHLiSqbDdvjvScCcjkcLJ9gsHdinH5VF8FR2zg4J7zP11R9j2qct/wxbjCgAgA==
X-Received: by 2002:a05:6808:2127:b0:343:ce6:18ff with SMTP id r39-20020a056808212700b003430ce618ffmr2357622oiw.165.1662141972245;
        Fri, 02 Sep 2022 11:06:12 -0700 (PDT)
Received: from [192.168.11.16] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id x8-20020a056808144800b0033b15465357sm1257467oiv.5.2022.09.02.11.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 11:06:11 -0700 (PDT)
Message-ID: <55e5fb0f-0b65-c27a-5c60-4ae7991ba538@kali.org>
Date:   Fri, 2 Sep 2022 13:06:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: mark USB controllers as
 wakeup-sources
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220902081652.12631-1-johan+linaro@kernel.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220902081652.12631-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/2/22 3:16 AM, Johan Hovold wrote:
> The primary and secondary USB controllers can be used to wake the system
> from suspend so mark them accordingly.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 3bbaec97aee9..e441d632c3e8 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -1872,6 +1872,8 @@ usb_0: usb@a6f8800 {
>   					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;
>   			interconnect-names = "usb-ddr", "apps-usb";
>   
> +			wakeup-source;
> +
>   			status = "disabled";
>   
>   			usb_0_dwc3: usb@a600000 {
> @@ -1924,6 +1926,8 @@ usb_1: usb@a8f8800 {
>   					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_1 0>;
>   			interconnect-names = "usb-ddr", "apps-usb";
>   
> +			wakeup-source;
> +
>   			status = "disabled";
>   
>   			usb_1_dwc3: usb@a800000 {
Tested-by: Steev Klimaszewski <steev@kali.org> #Lenovo Thinkpad X13s
