Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC92A754318
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 21:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236285AbjGNTPH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 15:15:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236232AbjGNTPC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 15:15:02 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 900C435B3
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 12:14:59 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-314319c0d3eso2311251f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 12:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689362098; x=1691954098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y12WgpFka58+f6g+Nl0WMIlla4WR+fOUMvVj/dW10Y8=;
        b=qB0NRgmgdTpJof+h7iqbUX75cUEkrKlGAc9n7A3C1HHaj5tV6j3CcN1wD17p1TwpTP
         eg+WYMwZqQ2cm6mwXWZmiTUSddg2NnWuAH9UkQFliGvXVRlvfm8CbgrZzyLGFjQuoF2d
         CiQap4YpOViHaT5X0i9JA7d7MKxcN3TNQUmP02fXtCmv8wW2nDcfG7TceliSnxU5xZvN
         q/fdANHKJXHd6DQF83Kypena3xqmUfr8OZOnaOqmn4yverYr4DAw/cbFT6KIM36dMSH1
         3zVXArM87g7Y1tsytpHTt0giMxmZJZBiFuPqoHuX0NSl3G+CF2qQRmMfzQ3N5Rj7XQxw
         hCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689362098; x=1691954098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y12WgpFka58+f6g+Nl0WMIlla4WR+fOUMvVj/dW10Y8=;
        b=cxLHi0lMm/gqvsZg87i7Lxr7XzLWDENVUBpPbaE7j4OCG2Y0NH5amvovOrBY2WX5qM
         tYb6CIUxncDqJ2H/jAonpvE5tPiS+T23WIUpZBvgsKODUmKdDK3Ei1Mlgz1iuZXmGYTs
         iN6IdREYxrhjj/VKFo9GHHjktGBcgUF0CLQ2QbzWHx7kKmfy5616JCf7L22zwan2HbAs
         81p03ZlZZ5FPVk0uQ2VpMm63CGH05BhsiSlleQQXPASSLGbz77KhMGwx87KSYM/vquYd
         aMmYgGygCN9T2ntssCzbNRKVbcs5nLeO2z+vAzOLfC4CxpqHumOcdret7VUb8BBmd7Fw
         OtPg==
X-Gm-Message-State: ABy/qLYVbdunU+zrZHSVebU714Zc7voX77FjRLE8mDkOu7spa4bWgRJB
        45NL5LU3KVq2VGrvHLxo1QDrqA==
X-Google-Smtp-Source: APBJJlFsdTklPzao72K+369OsrAdnINLI412JcepClB5WQXDyqbaFXbRRGvqow3gnANHVJI7a8Qsrg==
X-Received: by 2002:adf:dd88:0:b0:313:e741:1caa with SMTP id x8-20020adfdd88000000b00313e7411caamr5441671wrl.25.1689362098005;
        Fri, 14 Jul 2023 12:14:58 -0700 (PDT)
Received: from [192.168.2.199] (host-92-17-99-126.as13285.net. [92.17.99.126])
        by smtp.gmail.com with ESMTPSA id t12-20020a5d6a4c000000b00314329f7d8asm11596586wrw.29.2023.07.14.12.14.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jul 2023 12:14:57 -0700 (PDT)
Message-ID: <09470a60-6f46-ec0f-9747-f64c0ba81996@linaro.org>
Date:   Fri, 14 Jul 2023 20:14:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sdm845-db845c: Mark cont splash
 memory region as reserved
Content-Language: en-US
To:     Amit Pundir <amit.pundir@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan Donoghue <bryan.odonoghue@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
References: <20230713165238.2814849-1-amit.pundir@linaro.org>
 <20230713165238.2814849-2-amit.pundir@linaro.org>
From:   Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20230713165238.2814849-2-amit.pundir@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13/07/2023 17:52, Amit Pundir wrote:
> Adding a reserved memory region for the framebuffer memory
> (the splash memory region set up by the bootloader).
> 
> Signed-off-by: Amit Pundir <amit.pundir@linaro.org>

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> v5: Re-sending with updated dt-bindings patch in mdss-common
>     schema.
> 
> v4: Re-sending this along with a new dt-bindings patch to
>     document memory-region property in qcom,sdm845-mdss
>     schema and keep dtbs_check happy.
> 
> v3: Point this reserved region to MDSS.
> 
> v2: Updated commit message.
> 
> There was some dicussion on v1 but it didn't go anywhere,
> https://lore.kernel.org/linux-kernel/20230124182857.1524912-1-amit.pundir@linaro.org/T/#u.
> The general consensus is that this memory should be freed and be
> made resuable but that (releasing this piece of memory) has been
> tried before and it is not trivial to return the reserved memory
> node to the system RAM pool in this case.
> 
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index d6b464cb61d6..f546f6f57c1e 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -101,6 +101,14 @@ hdmi_con: endpoint {
>  		};
>  	};
>  
> +	reserved-memory {
> +		/* Cont splash region set up by the bootloader */
> +		cont_splash_mem: framebuffer@9d400000 {
> +			reg = <0x0 0x9d400000 0x0 0x2400000>;
> +			no-map;
> +		};
> +	};
> +
>  	lt9611_1v8: lt9611-vdd18-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "LT9611_1V8";
> @@ -506,6 +514,7 @@ &i2c14 {
>  };
>  
>  &mdss {
> +	memory-region = <&cont_splash_mem>;
>  	status = "okay";
>  };
>  

-- 
// Caleb (they/them)
