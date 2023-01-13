Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B50F6669A0F
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 15:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjAMO07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 09:26:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjAMOZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 09:25:47 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4888B9235F
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 06:17:13 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id g13so33334401lfv.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 06:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mW+hm2yfQ1E9yRCHGrKno66ZgIqX5+EeWn5glg/xh8s=;
        b=rBTMoUVkMn4+LZcJRFIuCCNSJOf6fz/RBM1vBdTyWLlw0uC2zzS/NnAFI3fPgIyGU4
         mj7SIDKCKNT6SxLL+PidMr15dR2XJLsA88GnF3lkhYZjwNOLf8xcnbKwe7DBebwJQdSv
         6VEWqrdu/i8J+9J3zJqi9lsLL1CEg+IM8VzH+nNZglMcyrC9isi0CHeBdiPO8/AtuNkd
         D/8FSHhVp3QRSH/6ZdnExbANXdAcXAIOonnYNsjaFbLT9/b3c2xRQSpDTY4U48wqkTeD
         4S8tDwiKdv1POgrfFQpMevw34LNC1y4RGvn+cWLifi6PAkGHgDX0d12NYk1z7optLzyw
         3hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mW+hm2yfQ1E9yRCHGrKno66ZgIqX5+EeWn5glg/xh8s=;
        b=SzQ7mUgVZnfUF/jvWmCJrp4cZlnl8f24pAa91ugXL4F4kXIefNHz9ZTANSLO+BTLpO
         vEQlsWHBqJFLj2DIkqqg313Q4hZGk64JLsLHWOL3uaAlh59WVkhpUEfp/1D/AlPavqcC
         mkYItLB17BA9ZlN6e8hXte01J5U30XTVvOkAX12VLxSYWJWPapjH3USV+FmIOYRHBlC6
         /b+SU66rUR2OO2Er3/8b6pmdiZKzmL6KrQ0egN9pD/aG9mOcPV7hNOy+xMlJ/ZVzD6ZN
         lvYHoAnlgw288pHFXpb+xPChheN7TZUzugzZroihoYNrukvAQjcGFJJUQgAIjF3g9glg
         9Ybw==
X-Gm-Message-State: AFqh2kqGaSzZAk+nAN5UYGi1g0/YxigAzTuCBMegN0BcsfC2xOVJbC09
        hK/zwAFsq/uy5/2Rp9JSfSYJsw==
X-Google-Smtp-Source: AMrXdXt/mnUTfKenEt+qEVc31VhMv3Wl8XWe1VUzvr0cnKBcCcPYvC4hEkz2wJB0tECU8am36maysA==
X-Received: by 2002:ac2:50c9:0:b0:4cc:7b49:18d2 with SMTP id h9-20020ac250c9000000b004cc7b4918d2mr4695035lfm.54.1673619430197;
        Fri, 13 Jan 2023 06:17:10 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id a16-20020a195f50000000b004b564e1a4e0sm3857426lfj.76.2023.01.13.06.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 06:17:07 -0800 (PST)
Message-ID: <c37bdea2-2154-975b-4ef3-570922944088@linaro.org>
Date:   Fri, 13 Jan 2023 15:17:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Define CMA region for CRD and
 X13s
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
References: <20230113041025.4188910-1-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230113041025.4188910-1-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.01.2023 05:10, Bjorn Andersson wrote:
> Booting the CRD needs roughly 64MB CMA, rather than relying on people
> adding boot parameters etc define a region for this, to remove the
> allocation errors from e.g. NVME.
> 
> While fixing the CRD define the same region for the X13s.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
So, to reiterate, the NVMe needs ~64M of contiguous RAM for
$reasons and without this patch, it is not guaranteed that
it can always find such a block which causes issues and
adding a CMA region resolves that, is that correct?

Konrad
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts                | 9 +++++++++
>  .../boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts      | 9 +++++++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index b29c02307839..e30a37c73b90 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -128,6 +128,15 @@ vreg_wwan: regulator-wwan {
>  
>  		regulator-boot-on;
>  	};
> +
> +	reserved-memory {
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x0 0x8000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 78e61a8184c5..5bfd1f0b2a24 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -153,6 +153,15 @@ vreg_wwan: regulator-wwan {
>  		regulator-boot-on;
>  	};
>  
> +	reserved-memory {
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x0 0x8000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +
>  	thermal-zones {
>  		skin-temp-thermal {
>  			polling-delay-passive = <250>;
