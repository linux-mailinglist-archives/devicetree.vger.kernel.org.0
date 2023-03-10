Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 080CD6B52C9
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 22:26:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231767AbjCJV0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 16:26:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbjCJVZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 16:25:55 -0500
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F8430C7
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 13:25:41 -0800 (PST)
Received: by mail-il1-x129.google.com with SMTP id w4so3768698ilv.0
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 13:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678483540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lysTcPW0XVZ+IeRM4GcO6JyKJb8asSqs6h2ziKdVdMA=;
        b=Ib5+WiokdF4Wg6nmSNkoKrFmIfTRRN52sgdHf/J9pf53SOVZo6k9AEpxF0l9pEwlzP
         mOUdvT1brKB2+WtDE1wOcW0SKlXKaNVXg0j5NE6PbcwuS+e4QhwgsQHG6zh4bgz+hdTd
         OYACwE/cJdGrwhvpfeO6FVZC+CLuJ6i0RC2ojlyBUvFtY4vDkcGDJooZd3Omf/l3oNvK
         GrT3Sl0G8oNfKtd7B0ZC1MaLKTRyVeUkIoUdqCwiyX0A0rMdR9via28equAC5F1hLGug
         6Uu91Y9USxQfeRaocWpttTe+C+kPe0LPL0XcaYoN3STUJIrOdYVJOza93SWOC4+eiV1N
         0S8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678483540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lysTcPW0XVZ+IeRM4GcO6JyKJb8asSqs6h2ziKdVdMA=;
        b=VyB9JsKDLliU+04XRk2BU6ednhCGN10VfhVAftif5SRN6vGy+uuXOqOunvW0XyDmmc
         fqKHg0bIVcmlL2Y+RZCIBvF+n402+UGxGKrKV6pS0FpojpfV/Y8yP2A5esSLxIii+oAK
         SUmTrdREFNrelR2dmi58VzPo4n51tpDUuRf6f5bigwzf4C4KsuUPAffb6IM6OjV0b+5b
         ppMpSjphqBThPSsm20CPcX1Du+9SlHwygKUoOfKyw4+vZJHyi97MuOkwRkvOmISHm+uz
         hA7IiRW0mr2xfbR/fyf99MdxtyAxNQFi02+BL8pONLPbE4ZoQjicMXFfhZjnEUCWppfs
         jMeA==
X-Gm-Message-State: AO0yUKVZ5VqPMhbYB+xzCi6AEeHuGBC6l2ldC2Y0Fl9s0B6BpPHuCx5S
        0QNw2/6OgGzz4VTRocldO5UAfQ==
X-Google-Smtp-Source: AK7set+A2RqEnUDfe1tmfLOzGw/NX61oogxnL4AQW62P5+sZCs92EtU9+B6paRANwZs9OJtgTM6IOg==
X-Received: by 2002:a05:6e02:1010:b0:316:fcbe:628f with SMTP id n16-20020a056e02101000b00316fcbe628fmr17209813ilj.26.1678483540237;
        Fri, 10 Mar 2023 13:25:40 -0800 (PST)
Received: from [172.22.22.4] ([98.61.227.136])
        by smtp.googlemail.com with ESMTPSA id z1-20020a92d6c1000000b003155ebba955sm287643ilp.68.2023.03.10.13.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 13:25:39 -0800 (PST)
Message-ID: <4e9a29b1-bcaa-8f14-3f2e-9ed40fd8e3ef@linaro.org>
Date:   Fri, 10 Mar 2023 15:25:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC PATCH] arm64: dts: qcom: sm8350-hdk: enable IPA
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230310203438.1585701-1-dmitry.baryshkov@linaro.org>
From:   Alex Elder <elder@linaro.org>
In-Reply-To: <20230310203438.1585701-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/10/23 2:34 PM, Dmitry Baryshkov wrote:
> Although the HDK has no radio, the IPA part is still perfectly usable
> (altough it doesn't register any real networking devices). Enable it to
> make it possible to test IPA on this platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I like that you've captured this, but I'm not sure I
like the idea of enabling this if the modem is never
expected to function as, you know, a modem.

At a minimum I'd want to be sure we could exercise
IPA in loopback mode before considering this seriously.
I could work with you to experiment with doing that
next week if you want.

This isn't an outright "no" though; let's see if anyone
else feels strongly one way or the other.

					-Alex

> ---
>   arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> index 09baf6959c71..60fbb2f49720 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> @@ -746,3 +746,10 @@ irq-pins {
>   		};
>   	};
>   };
> +
> +&ipa {
> +	qcom,gsi-loader = "self";
> +	memory-region = <&pil_ipa_fw_mem>;
> +	status = "okay";
> +	firmware-name = "qcom/sm8350/ipa_fws.mbn";
> +};

