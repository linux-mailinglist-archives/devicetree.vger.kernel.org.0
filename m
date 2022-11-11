Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E20F625567
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 09:34:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232574AbiKKIez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 03:34:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231564AbiKKIey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 03:34:54 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 737406315A
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:34:53 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id c1so7328721lfi.7
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYLP96kF+Z+YOu/RQc+s2D9rOHR16DeX5+JnB9Tc/RE=;
        b=GAt3TUSW+E592/fsmiBWgMn9mBp2SENenx/i1i26ndiGCVl9zyoZemvbID6IeOfoCE
         TAYgiNH+rBV63uBgDoqzMg/asmHmIeM65eFIgP9PTsW2eH8MLxtF1c4XbUXvHt8pXYkn
         ZcifXItCrvKWZOUqIaXDO25+w8Dvv+j9gWDt8chTvOBOVPt5/faKIv+QksyjX3TVdAPB
         Q46bk+fdhb7rEtY6Jl9hEMOFy+PtQ5NK2RtINkQ6QylOu/bpwoJVcHeCywet1WHgn6Ek
         B6jb27JcrNClDRkzTifn6NKzbIz0lm3ssLm20BdeEuPcz97vf8Hb7reFHpIZT34+EZGH
         nMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYLP96kF+Z+YOu/RQc+s2D9rOHR16DeX5+JnB9Tc/RE=;
        b=403ZEswS86biEJJWJJsWgKRteC7vTeYidhcNOH/3wiYdR6AlKHh0NNviCd2FWYyyKo
         2kKFp92W1/n6J6SJGf87O8d0ghD0jP0K6hThh2T9la+D/7+B+ISsYiH/t6GQ1oge4myx
         nnf3qM3zGAkFdu8JorSN+koL8CFIDMtPyPYwnwaTbgR6lvHQL1gUTlz10WrIQhaDoD3h
         Lkz+8/DoFBuw0b/b0mUhtenjOZtVzAJMIO81Wv2a4Wyza3f7OFatehVupXJuY4C+LaDA
         VlmRFlm4vhsyHoQU+c/aHPWqTrI4Tu9dzr2xL7kWBtgCFyZDeOtYqw910KqtXXM+agW6
         HwYA==
X-Gm-Message-State: ANoB5pm5U7ct1/BeirYEXySgNzKl3kenpXjqMM0HNCbRyNBj1cluiIBG
        w2PrjGJYfIBe9Fw2mvmyL5OSfQ==
X-Google-Smtp-Source: AA0mqf48FzZqpRFmIngdURh+oBfgFmlfU4qlaYZUSJYj0FwFtAHUm4/gWmSx3JaM1KFwgMbqorYA4Q==
X-Received: by 2002:a05:6512:34c1:b0:4b1:5a96:983f with SMTP id w1-20020a05651234c100b004b15a96983fmr459090lfr.535.1668155691704;
        Fri, 11 Nov 2022 00:34:51 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id bg37-20020a05651c0ba500b00278a21bb7b9sm270431ljb.100.2022.11.11.00.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 00:34:51 -0800 (PST)
Message-ID: <b28c469b-f0f0-47c0-dd07-bf2dcde55824@linaro.org>
Date:   Fri, 11 Nov 2022 09:34:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/3] arm64: dts: renesas: r9a09g011: Add system
 configuration node
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <chris.paterson2@renesas.com>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20221110162126.103437-1-biju.das.jz@bp.renesas.com>
 <20221110162126.103437-4-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221110162126.103437-4-biju.das.jz@bp.renesas.com>
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

On 10/11/2022 17:21, Biju Das wrote:
> Add system configuration node to RZ/V2M SoC dtsi.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v2:
>  * New patch
> ---
>  arch/arm64/boot/dts/renesas/r9a09g011.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a09g011.dtsi b/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
> index 7b949e40745a..07164d9e4a0f 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
> @@ -130,6 +130,12 @@ cpg: clock-controller@a3500000 {
>  			#power-domain-cells = <0>;
>  		};
>  
> +		sysc: system-configuration@a3f03000 {
> +			compatible = "renesas,r9a09g011-sys";
> +			reg = <0 0xa3f03000 0 0x400>;
> +			status = "disabled";

Why disabled? You do not have any other resources needed. This is odd.

Best regards,
Krzysztof

