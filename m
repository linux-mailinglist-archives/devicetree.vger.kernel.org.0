Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A26C1A9BD1
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 09:30:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732012AbfIEHae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 03:30:34 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55919 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732010AbfIEHae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 03:30:34 -0400
Received: by mail-wm1-f67.google.com with SMTP id g207so1434041wmg.5
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 00:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=czADCPpBouBr4RlUcd9U0vudTJQdLc/9VjUgpg9TOCI=;
        b=bGxj+S/oSU6NNgkdANj77ejufcuBunqr3KRzEhD2AP/fTn0xoHTEt6N4gmHOsRz7YB
         x5I7ZhOT7P7GIN9ZY/SIdXU2doCVa1/ihXLHg/K/7nsYr6DmqVTTceaweQWm1mi87KKM
         8UG9M8mRyK0YPhsKf95Rv3W3LlCbOflV6b5OfUXVtutIobAZ7IAWoJtH3NDTSPhphcYd
         KHaZjVABP6wWeaxF7QJ+DYc/yaiVr2VCRjmNCaN5ozZu5krTycN3Ij5ZFhy52YTi9cLU
         JfvcnUORmJ5kZFo4i4xSJR2hUR+HtvOotJYiBOCrOTp6STCotno4O3Zcw04UcPJuEC3v
         /mcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=czADCPpBouBr4RlUcd9U0vudTJQdLc/9VjUgpg9TOCI=;
        b=OOVTwT3wDvgQY8B82mVx6w1GXtzEsUUGyju/xbW5EC7tRg0UB4PnX8Mo9C8Z5M5X5r
         2KrM3E1yWZXCIZUJeDXU7HuviAwd8x5DxPxYPPXltVAWyaguuKJi2qN3+yvV+U/yZdDd
         54OV876DGiJc12MBoy0FxOopRETcD30Rsp5xDDexSgxL9XXxHmqxno7ginI9QVKwBY9K
         SwALXmCrxfKaypAm54zhix2ceYhS4OXTglvnRcKLTogCrp+n5isb9B5S/uA8QkdBVuPV
         Sz6qFZoel0iimJyshl5E4fzD9lM//rCo5oNZ/ARQsiC+xa3LsOWo8ttsphkvBl8YfcUQ
         JZkw==
X-Gm-Message-State: APjAAAV8w1eh7fiWAn637Xs4R53MsBuBG6uRjEFggvG5Iwn39y5HiJYr
        ly1gu/0HCPtjX5vK5OLu4hLj1A==
X-Google-Smtp-Source: APXvYqzJTjxBUavj+APYSFauF7cMBpQGqsR1Zz+Squ9bSyxSmGVQvPFkasOYM1Ls2DoZj/bTiXeTfQ==
X-Received: by 2002:a1c:7a10:: with SMTP id v16mr1629906wmc.2.1567668632226;
        Thu, 05 Sep 2019 00:30:32 -0700 (PDT)
Received: from [192.168.1.6] (124.red-83-36-179.dynamicip.rima-tde.net. [83.36.179.124])
        by smtp.gmail.com with ESMTPSA id h2sm1914031wrb.31.2019.09.05.00.30.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 00:30:31 -0700 (PDT)
Subject: Re: [PATCH 1/6] dt-bindings: mailbox: qcom: Add clock-name optional
 property
To:     bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
        mark.rutland@arm.com
Cc:     niklas.cassel@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
From:   Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <d655e638-b937-eb03-1a6f-946864d7722d@linaro.org>
Date:   Thu, 5 Sep 2019 09:30:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/26/19 18:48, Jorge Ramirez-Ortiz wrote:
> When the APCS clock is registered (platform dependent), it retrieves
> its parent names from hardcoded values in the driver.
> 
> The following commit allows the DT node to provide such clock names to
> the platform data based clock driver therefore avoiding having to
> explicitly embed those names in the clock driver source code.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../mailbox/qcom,apcs-kpss-global.txt         | 24 ++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> index 1232fc9fc709..b69310322b09 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
> @@ -18,10 +18,11 @@ platforms.
>  	Usage: required
>  	Value type: <prop-encoded-array>
>  	Definition: must specify the base address and size of the global block
> +
>  - clocks:
> -	Usage: required if #clocks-cells property is present
> -	Value type: <phandle>
> -	Definition: phandle to the input PLL, which feeds the APCS mux/divider
> +	Usage: required if #clock-names property is present
> +	Value type: <phandle array>
> +	Definition: phandles to the two parent clocks of the clock driver.
>  
>  - #mbox-cells:
>  	Usage: required
> @@ -33,6 +34,12 @@ platforms.
>  	Value type: <u32>
>  	Definition: as described in clock.txt, must be 0
>  
> +- clock-names:
> +	Usage: required if the platform data based clock driver needs to
> +	retrieve the parent clock names from device tree.
> +	This will requires two mandatory clocks to be defined.
> +	Value type: <string-array>
> +	Definition: must be "aux" and "pll"
>  
>  = EXAMPLE
>  The following example describes the APCS HMSS found in MSM8996 and part of the
> @@ -65,3 +72,14 @@ Below is another example of the APCS binding on MSM8916 platforms:
>  		clocks = <&a53pll>;
>  		#clock-cells = <0>;
>  	};
> +
> +Below is another example of the APCS binding on QCS404 platforms:
> +
> +	apcs_glb: mailbox@b011000 {
> +		compatible = "qcom,qcs404-apcs-apps-global", "syscon";
> +		reg = <0x0b011000 0x1000>;
> +		#mbox-cells = <1>;
> +		clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
> +		clock-names = "aux", "pll";
> +		#clock-cells = <0>;
> +	};
> 

just a quick follow up, is this series being picked-up?

