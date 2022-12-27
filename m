Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E45116569E9
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbiL0L0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:26:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbiL0LZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:25:51 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E40B6568
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:25:50 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bf43so19229254lfb.6
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g3dPT0mfMrxgt28JojYzWwjlVxTlYqMTW+b6BmXIdKs=;
        b=SCDjIaes6FUCdUv1W2O4WBkOLe8sDTV6uy++8KcLe74XUPDAhOY4bX5OFeCnUFdoxG
         KxQxdeJ3yrwEQfzq6Hf3UVHIF5C3hN3pZAhG4RiENfuXI38AdTC7FNBCWrD69/GeEU5o
         +jCLuxzUGOTFlCl/VocyuD8SGBavcGUq0gWouBngTsZgyjfF2rhv66XuOKQ9nKF+oJfk
         KDrpjJaw8AjDs8RTEBELZoZtUw86PkmtALY2+3Rxuo9fyJMt7rmaU3jqVYki8ssUM+se
         AjPD/rJdRmyl4g6X/g+VDUH46T22qALVlVek6ciKOXhcXPj+NIQ3GnYmvihQAqJMIXlt
         FxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g3dPT0mfMrxgt28JojYzWwjlVxTlYqMTW+b6BmXIdKs=;
        b=WYoh5IBhglY1hjg15wOqjHG9TQaVz5rlOQYvdzYoYf+l/2J0GQp67WCCIepuScCRgQ
         vYdNIAOoFuRcNc7bUpwTmoY6Ckc8FCWjNn5x81XY35uBVVI41V5yWrg1R9icKW0WNunc
         kD9Ab1d8KGHaSTLN6Ia2cO2/F0k7/Q+9kjMRVhvsJGWSgTQkaAtqtUEPtHMk5sO6YGdw
         Rdrj7BTu6KL3jxHXs4mvfhLnIgpy7OKeFt7zfkCF/3FHsBu9BQtYY/p+vkWlo9aZi9ix
         k8zpR0sOtuh8/zIy/w9dsfCiSafNwRuQPg8JVLwo5PWKILrKGYK7UOT3vo7fw43kXHZw
         tgqQ==
X-Gm-Message-State: AFqh2kobByRen4ffgbrjulLg8AYkdJLyn2KJaio7hTdkADCMg8FCAc8E
        S/GetiFip+3qQzSfgpVIOChkK7UzRBejskX1
X-Google-Smtp-Source: AMrXdXs/DJ651RjRr+r9ewBijqhSugbN/DhiayXrcAVTIZEAX747hxRjgkNH66Vxzgxulz5yqAhOfA==
X-Received: by 2002:a05:6512:3143:b0:4ca:faef:bcc6 with SMTP id s3-20020a056512314300b004cafaefbcc6mr3352844lfi.21.1672140348877;
        Tue, 27 Dec 2022 03:25:48 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004a6f66eed7fsm2213121lfh.165.2022.12.27.03.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:25:48 -0800 (PST)
Message-ID: <6a4ae813-4739-5c87-4b3a-2d1a6e20d459@linaro.org>
Date:   Tue, 27 Dec 2022 12:25:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8992-bullhead: Disable
 dfps_data_mem
Content-Language: en-US
To:     Petr Vorel <pevik@seznam.cz>, linux-arm-msm@vger.kernel.org
Cc:     Petr Vorel <petr.vorel@gmail.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dominik Kobinski <dominikkobinski314@gmail.com>,
        devicetree@vger.kernel.org
References: <20221226185440.440968-1-pevik@seznam.cz>
 <20221226185440.440968-3-pevik@seznam.cz>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221226185440.440968-3-pevik@seznam.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26.12.2022 19:54, Petr Vorel wrote:
> From: Petr Vorel <petr.vorel@gmail.com>
> 
> It's disabled on downstream [1] thus not shown on downstream dmesg.
> 
> Removing it fixes warnings on v6.1:
> 
> [    0.000000] OF: reserved mem: OVERLAP DETECTED!
> [    0.000000] dfps_data_mem@3400000 (0x0000000003400000--0x0000000003401000) overlaps with memory@3400000 (0x0000000003400000--0x0000000004600000)
> 
> [1] https://android.googlesource.com/kernel/msm.git/+/android-7.0.0_r0.17/arch/arm64/boot/dts/lge/msm8992-bullhead.dtsi#137
> 
> Fixes: 976d321f32dc ("arm64: dts: qcom: msm8992: Make the DT an overlay on top of 8994")
> 
> Signed-off-by: Petr Vorel <petr.vorel@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi b/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> index 123ec67fb385..4bceb362a5c0 100644
> --- a/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> @@ -15,6 +15,9 @@
>  /* cont_splash_mem has different memory mapping */
>  /delete-node/ &cont_splash_mem;
>  
> +/* disabled on downstream, conflicts with cont_splash_mem */
> +/delete-node/ &dfps_data_mem;
> +
>  / {
>  	model = "LG Nexus 5X";
>  	compatible = "lg,bullhead", "qcom,msm8992";
