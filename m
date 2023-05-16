Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80881704290
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 03:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240909AbjEPBC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 21:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235743AbjEPBCz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 21:02:55 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74707268A
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 18:02:53 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ac7c59665bso146510081fa.3
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 18:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684198972; x=1686790972;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d+Ous+MJZLPb5QBlrHWCjDLD3iSm+23cAOMnPeUb78o=;
        b=QyMHzf78j0uSzY2MRe0Z8f1VpS1F9zbGD6KnpEHPk6oBjZx/FyZTtURhgpqoTk9rtF
         sUEAaeWr7B/pGPFyn81y6rYiuhBbK6Sk53K2QCHDyTe6DgAniLqZjRu4qiQt9IksZQe1
         JNSe4PsVAYFu5tP+LB+9ZaEBAhJRJIGt5iithaMexM8Flz/XobhF7hRkJqaMTDgX6pcW
         RjZ2+Ln8RpY/0KoOCEYZDczbGLtoUuW2/m7aFkqpf91XiRzPfBBuqz0QNZc01BQJR2BT
         YN1Inc9ymyCw/OnliWZY4y4jOrTc7sRK7JjPKS8WQ0OJgJyebcBdACAD4Bi2jR6K4nBH
         A0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684198972; x=1686790972;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d+Ous+MJZLPb5QBlrHWCjDLD3iSm+23cAOMnPeUb78o=;
        b=KFb7+H6bTv8h/2L+aXeXU4Iw37kuVxL49hzP8fN1cdAQZQMQQyaojEM7cLg9mxVP5m
         IhjGNlsElZlmLAXfZhFVIOXBIfkeEs3R4x/L/v7lMc/BDgCexa8vNksfLdhSKsl+h/TA
         UM1e5mssMFOtdcSdRsyBW4rAoD3B43n3CG5OPa0hrUy/ed68aVKRyULBecih52TeJdxw
         hcaqgz/HKanFIHkpXRYrVXmi0voL4qJaViL9wl4REjsPA1HJ9lmvvdkHRAzozHjQdxzv
         dqK7hGrULyHV67OsxWR6l3fBcp37vX92cdkz+N2cLKkgR/kOipO4zqlLZo2iqQv+dUc8
         1OVA==
X-Gm-Message-State: AC+VfDz+b4uVC3IL5buVa5PKdpMdaoSgkzn2LdMi0+W58R33bldrAbXu
        Sup9VEDjRLuYs57Xr1Z3ozIYEA==
X-Google-Smtp-Source: ACHHUZ46y8IfHELqwhyCq5Pz8SXT3inLl6MkJEtA/vr1tv/TuWe26ewHjgChUG8asVnI0uq0RFp9LQ==
X-Received: by 2002:a2e:9053:0:b0:2a8:bf74:61cc with SMTP id n19-20020a2e9053000000b002a8bf7461ccmr7774354ljg.26.1684198971725;
        Mon, 15 May 2023 18:02:51 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651203c900b004f14ae5ded8sm2782401lfp.28.2023.05.15.18.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 18:02:51 -0700 (PDT)
Message-ID: <e7478064-9b08-0eac-9c43-a235a0d45a90@linaro.org>
Date:   Tue, 16 May 2023 03:02:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230412164920.21862-1-quic_kathirav@quicinc.com>
 <20230412164920.21862-4-quic_kathirav@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: ipq5332: add few more reserved
 memory region
In-Reply-To: <20230412164920.21862-4-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.04.2023 18:49, Kathiravan T wrote:
> In IPQ SoCs, U-boot will collect the system RAM contents upon crash for
> the post morterm
s/post morterm/post-mortem ; s/the//

 analysis. If we don't reserve the memory region used by
> U-boot, obviously linux will consume it and upon next boot on crash, uboot
> will be loaded in the same region, which will lead to loose
s/loose/loss

some of the
> data, sometimes we may miss out critical information.
So.. is it used to store crash data, or do you load u-boot there?

Or is there some software running at a higher exception level that
collects the dumps and stores it to this region?

Are these regions only used for some sort of crashdump colection?
If so, they could get some more specific names, e.g. uboot-crashdump
or so.

Konrad
So lets reserve the
> region used by the U-boot.
> 
> Similarly SBL copies some data into the reserved region and it will be
> used in the crash scenario. So reserve 1MB for SBL as well> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index c32217530b41..aec60840a2f0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -114,6 +114,16 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> +		uboot@4a100000 {
> +			reg = <0x0 0x4a100000 0x0 0x400000>;
> +			no-map;
> +		};
> +
> +		sbl@4a500000 {
> +			reg = <0x0 0x4a500000 0x0 0x100000>;
> +			no-map;
> +		};
> +
>  		tz_mem: tz@4a600000 {
>  			reg = <0x0 0x4a600000 0x0 0x200000>;
>  			no-map;
