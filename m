Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B208C6B074E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:39:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjCHMja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:39:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbjCHMja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:39:30 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCCC393110
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:39:28 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id g17so21161139lfv.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678279167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5hmcG2UWhXNchx0pwsSX8IpSqNDNxpn3mwIF759kHaI=;
        b=BOdpcUvdmbUjPkrstf7gB2JH0NbvU6mUF+keeAdBeUhDgkwzTzt5L/7h7br4sNblbN
         VtTtJbN5K6mjBckWXWUvFGppZQJC3MzMl6NmAJMcmk55C691kgjHpOtGZA5PqdijxvKW
         fAdWimpwHqCDfn0jx6RNtVN1B5ArViiMyE4RX/3rPO7b6eCW+B2PGCUG8JrnUP6NVPA/
         SqqptRu9mkrOqw7KS7i/sueMx4P5FSCGtBBa+Pmx4ZSCF87ZeqjckUiU7Cc5YtUaeO9k
         y5y5SIXnBtyElz4YrbDVt2aiqamktJRTbW888g0hNS7ugGiJVUYbYCcBJq1xLhsZZOjY
         ezxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678279167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5hmcG2UWhXNchx0pwsSX8IpSqNDNxpn3mwIF759kHaI=;
        b=EHvGUxtdwFogjPxQBoMsjA8RdTmBY9ixwNUwGsv9TBdCqv6zowG32sHX7jSSX6WGX+
         GR0y+UChrlPtzxoRFfIE+4l+Mm5LazhEDJ/os/tbuhv8svhBbQdeQWrpQtM0+HGp2/ov
         OSGGlidQ0IwWxmHxb8V2RkNni/iVC417mxQuSMroeJnlO8Ta0F7VEuhWOVrS9GuqMrIO
         ajVGuwjChLhQXWJPROunAtuQGmaetezhk+KJc2pxSYL2CN1gmo53YCVRHzBmWHQuEfHU
         M554jTBb43kkfEqFI3/76bhBLSI6+1aN772MzhpwbwMy3Rh0MYLyQqNu1afTyFLAMV7B
         uqFA==
X-Gm-Message-State: AO0yUKX8CxsrqZIOrlClcOcviRzD7koTI+2ML8eyMncWiKyXnpi/kPQR
        etf/k17upqOl2KE4BpPr7i2s8A==
X-Google-Smtp-Source: AK7set8ttLSrTpugWburGiKogGB7R9p305QhKryyqzgpWPO4AC3PS82+mBLoUqQgk3TQ6ibVTy4X5w==
X-Received: by 2002:ac2:4c48:0:b0:4d8:86c1:477b with SMTP id o8-20020ac24c48000000b004d886c1477bmr6183417lfk.16.1678279167171;
        Wed, 08 Mar 2023 04:39:27 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c102b00b00293526a0c87sm2557510ljm.41.2023.03.08.04.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 04:39:26 -0800 (PST)
Message-ID: <46f123d0-4ef1-faa9-afb7-2dd31bf834dc@linaro.org>
Date:   Wed, 8 Mar 2023 13:39:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: qcom: msm8916: Fix tsens_mode unit address
Content-Language: en-US
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230308123617.101211-1-stephan.gerhold@kernkonzept.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230308123617.101211-1-stephan.gerhold@kernkonzept.com>
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



On 8.03.2023 13:36, Stephan Gerhold wrote:
> The reg address of the tsens_mode nvmem cell is correct but the unit
> address does not match (0xec vs 0xef). Fix it. No functional change.
> 
> Fixes: 24aafd041fb2 ("arm64: dts: qcom: msm8916: specify per-sensor calibration cells")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 0733c2f4f379..0d5283805f42 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -503,7 +503,7 @@ tsens_base2: base2@d7 {
>  				bits = <1 7>;
>  			};
>  
> -			tsens_mode: mode@ec {
> +			tsens_mode: mode@ef {
>  				reg = <0xef 0x1>;
>  				bits = <5 3>;
>  			};
