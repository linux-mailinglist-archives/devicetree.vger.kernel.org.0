Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97DB5283975
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 17:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726526AbgJEPZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 11:25:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726429AbgJEPZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 11:25:35 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31345C0613A7
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 08:25:35 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so10054201wrn.13
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 08:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EezbwMcgNsSkfm2RuM0angA1ri0gdxmsxzDPBMJaQZ0=;
        b=OTuUxv/nH7FNQkh8FS3PvFlz+A/gAAZJHo7hTbfnQim9Fixk9czrkRJQusz3P/meD+
         21ZoKmCbDouNkR3jLDPgsRHM0pPFabpQw476csRSbPbFQ/hYiwe0Hp0R5Qv47smBq1wX
         Ho5IJC19hSTyZpHVaXjKAAYxrjrkH1h5HcmQExDdez2Wvd3Ky9Gp0MNK1gL31cy6jAUi
         A/PTBOMuvLRBZ4uavNSSeWZZFFvbqmCTwloew5iHTFYOuvkuk51tV4y3LHyPyf7HKOnG
         OB6YvDS/ofmIwPJX34O7dbKzFR9fMbW8lzlKury4jUHfTsMegbkHW/Kx5OuvlNlmB4V2
         vQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EezbwMcgNsSkfm2RuM0angA1ri0gdxmsxzDPBMJaQZ0=;
        b=s/a4YMw8LrC42rm4ML3k4j+6DKI7Vca5fl1mqIEe7a8ncHgKIOKnDE69p1M68MRIhF
         jfkVhY8+EZqmmnZajzcJRlbypO+zmg6YbOV//hP7l37PoEZQo59+nVX1IQpM9Q5X0c1c
         WZ4B84H6H4kMEQPHNvG1MOQVh190tjN3vFSQcmxpkMNVxRgkX4vrrMv6th2kF9iB8VqE
         wYIui0f9Jxm7z8ZY06gAsPpwPehWpt+2uXrjqlQuydEOmPHrwqCkZVhqGXOiKff0vQxX
         O7XLmm7C7J/QtYtdScmzxI9bLJVlZMQB4E3ydjHrqzP7K66yoMVFtlj6A3/tGNbtVx3+
         HlOA==
X-Gm-Message-State: AOAM531bKjal1vxy0US0H5LV2A++vhU752xpdn9qmDIBxDDKUm2Vzj94
        tPlCq7GKwrhjLlcQl9H+hhcxJA==
X-Google-Smtp-Source: ABdhPJylcCMLKJjtaq+AWPUG1mljtjsd816shEP5zEWqW4hZfih9m/2PL6bGCflZnY6fCO8oOUhNtw==
X-Received: by 2002:adf:ffc2:: with SMTP id x2mr17670964wrs.48.1601911533669;
        Mon, 05 Oct 2020 08:25:33 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4892:2327:f1c5:e39c? ([2a01:e34:ed2f:f020:4892:2327:f1c5:e39c])
        by smtp.googlemail.com with ESMTPSA id t16sm89309wmi.18.2020.10.05.08.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 08:25:33 -0700 (PDT)
Subject: Re: [PATCH 03/11] arm64: dts: qcom: pm8994: Add thermal-zones for
 temp alarm
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201005150313.149754-1-konradybcio@gmail.com>
 <20201005150313.149754-4-konradybcio@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c03ace9d-d983-c1f8-ab74-ed585aeb2364@linaro.org>
Date:   Mon, 5 Oct 2020 17:25:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201005150313.149754-4-konradybcio@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2020 17:03, Konrad Dybcio wrote:
> This will shut down the platform in case the PMIC overheats.
> 
> Signed-off-by: Konrad Dybcio <konradybcio@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/pm8994.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8994.dtsi b/arch/arm64/boot/dts/qcom/pm8994.dtsi
> index 7825208b0d8b..9ab5657f7d23 100644
> --- a/arch/arm64/boot/dts/qcom/pm8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8994.dtsi
> @@ -4,6 +4,30 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/spmi/spmi.h>
>  
> +/ {
> +	thermal-zones {
> +		pm8994 {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;
> +
> +			thermal-sensors = <&pm8994_temp>;
> +
> +			trips {
> +				pm8994_alert0: pm8994-alert0 {
> +					temperature = <95000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};

Don't you want to add a 'hot' trip point, so userspace can get the
notification and have an opportunity to do some action like unplugging
some CPU before a wild shutdown happens ?

> +				pm8994_crit: pm8994-crit {
> +					temperature = <125000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +	};
> +};
> +
>  &spmi_bus {
>  
>  	pmic@0 {
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
