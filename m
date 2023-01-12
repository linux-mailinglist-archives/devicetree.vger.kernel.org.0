Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBD1B667648
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 15:30:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237630AbjALOaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 09:30:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237144AbjALO3y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 09:29:54 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5CBE58F8B
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:21:18 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id b3so28650922lfv.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hYPC0xPkD3qfxeDJVAHVJwygajuCgQeK71VnK//yVgE=;
        b=qWyBCN/YKgeG4SRRDofLnlF56/pjSEaCFpmiJ00jJ3QFJxtA2qZij/aoAJMmH5FmLu
         31YwkrKqbOXN6LOCp3Pba8MY0t3/HvWvlY1+FAxdcGw1JYftQm/fiLTYWlhL/7i8ihCM
         mMSBjrZ/dArekeChC/lUNFnEniGNjc9kDO9W9OaDa6ZmU1XHyCvCbqokFgnF2npotpP9
         pMhYfIoh3OARFxQ993lIAj09U9tW/IWtPR3TtPylqusO88A5ug8XPE3QIB5b3E354/7R
         YYftG9F7x6PqLuipBQsPicz3hcfgkgqT1JTgAmGsibXGeGRCKF/P4MJsTSY/tGyz1Uf3
         TRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hYPC0xPkD3qfxeDJVAHVJwygajuCgQeK71VnK//yVgE=;
        b=S47vqf1C3Rn8Yaa15kvQPbaOyH2Gd+6BJ9e1zfOFdVVYw31qRrO72X0bTC//WbsUUH
         DZkBAqFyNK1ta6dASZSYdXQ9NoM5pwBRhlaPyaISYaUafv7qTOGH1Yl0jGgsZTh2qzPN
         0/vLG0dKc+OPcG1LKlYNPx2zu2rJmWBBxJIwh3IeSeQDuBoVQWy7ntAFiVp9Q796oSzq
         TCsuy1g+fUzoF3B7eJR6XMuOEG0vmwf86ynU+VHg+y2EnL8a2jKIf6lYxB7M7nqr76vc
         4l/XCikjFtLUf+awkOjg2JDRvuCz3yWGmddo1gicGkFq30cXZCUjhqbd4ZYZHfellBC/
         +1DA==
X-Gm-Message-State: AFqh2krBO37Xu5EYItwtPiDZzJLeg7cqB8IeQp99hk5RyAutZyMPj+uy
        t5R0By0F+57aVIBFMkzfT2d+kg==
X-Google-Smtp-Source: AMrXdXsWq9nggSMuDl9Nfc/yAPwiMedsOXe42zJ3D3TUk4lXk1GFTMWZNFh51MEUEHqYcCSHTOeonA==
X-Received: by 2002:ac2:4a8a:0:b0:4b5:1545:222b with SMTP id l10-20020ac24a8a000000b004b51545222bmr18813731lfp.47.1673533276802;
        Thu, 12 Jan 2023 06:21:16 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id bu31-20020a056512169f00b004b54ca56cf9sm3303452lfb.303.2023.01.12.06.21.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 06:21:15 -0800 (PST)
Message-ID: <a3594770-1d7e-de02-b78c-8446d239b60b@linaro.org>
Date:   Thu, 12 Jan 2023 15:21:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Vote for CX in USB
 controllers
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20230112135117.3836655-1-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230112135117.3836655-1-quic_bjorande@quicinc.com>
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



On 12.01.2023 14:51, Bjorn Andersson wrote:
> Running GCC_USB30_*_MASTER_CLK at 200MHz requires CX at nominal level,
> not doing so results in occasional lockups. This was previously hidden
> by the fact that the display stack incorrectly voted for CX (instead of
> MMCX).
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.3.r1-03600-gen3meta.0/drivers/clk/qcom/gcc-direwolf.c#L2703-2725

Maybe in the future there could be some power savings for lower freqs..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 2ed17baf50d3..4f4353f84cba 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -2265,6 +2265,7 @@ usb_0: usb@a6f8800 {
>  					  "ss_phy_irq";
>  
>  			power-domains = <&gcc USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
>  
>  			resets = <&gcc GCC_USB30_PRIM_BCR>;
>  
> @@ -2319,6 +2320,7 @@ usb_1: usb@a8f8800 {
>  					  "ss_phy_irq";
>  
>  			power-domains = <&gcc USB30_SEC_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
>  
>  			resets = <&gcc GCC_USB30_SEC_BCR>;
>  
