Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3E16679F2
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 16:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233239AbjALPz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 10:55:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231805AbjALPzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 10:55:18 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8B9E5AC67
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 07:45:00 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id v25so28976978lfe.12
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 07:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dO98yJCjhJKHHJFzoPP10XSL6ZvByFzhpcdLh14ZehU=;
        b=qbMwOpc9CFkIEWKaAfBZ4iBqBlDkEkiCaLEa0TIiVT0KUVr2ybb/EbBiLTdz5YVLUE
         Xz541blif/x+QxSbtV3PUTbem3MK44eUHNSoCc5Ee9oSRFS+ZxdZnM8YSl0vCLjpdKNM
         4Q46tXImWOGQBo9e9BBXDUy9CLYZw7xxF5pDW2dqrSUnqr5GZPRYGgphWbGX3Y2zkIFG
         03zrpJnnS2ajrptfc9VsiKNgoIrN3VFOe0jYnPerRhVoZ2qMwwMPvKSNsoP0ennBlQPG
         VQtNm0KQ7RcfQ24Dzt7TYGb7C0XVAASglqq3DY4PQqJnZUG0jP5DX8vrh/RTbroA0hZ5
         659Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dO98yJCjhJKHHJFzoPP10XSL6ZvByFzhpcdLh14ZehU=;
        b=NDi6pS3r/jS8ZwJ7kA78Yr/Ve+OJg+N4llXAxseN+oaue81fXSQ30e3flyRNiCrC5s
         8Wft5DgOB1LefjNTLsMyMQwlXO1/b9C9sAxJSHc6txSU0UIQbvuW6NlhoX0MvNeycHWT
         vJR7fvMBaU9xsv/+VbIoB/hwskiENIpqZyfbxe8ugi5V3YbendRGyPaA7Hb0gJPTXCBY
         891xRnrnjAlYBUnFItGsQaJ1j0nA+PDM9Ce1YuiLi8wDZLXtEStUQagj5h8bGQyZMf00
         dKkjNQwCFQl2ZDf8mKQfQe+ity8BkBFhhrjeJNdXdIykJ6FOe7hhAnktyeY2NCsn2giy
         hAqA==
X-Gm-Message-State: AFqh2ko/S1tIfSZBwGFiZ24RyZcfGje5Qze6VK8z8M2h4nOuKv6gKm6R
        brvNxeRW2ngT+s2LE3c3ONrxaQ==
X-Google-Smtp-Source: AMrXdXsgekTVzlXxmGMDXgy2BKSdn+T0k5Wesxz7i7Sb8Q7bfHmXCG0E3MvTzCKFlwNDSvBiF87whw==
X-Received: by 2002:a05:6512:1395:b0:4b5:b10b:6830 with SMTP id p21-20020a056512139500b004b5b10b6830mr22604048lfa.54.1673538299168;
        Thu, 12 Jan 2023 07:44:59 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id s6-20020ac25fe6000000b004b6efcb7bb5sm3336312lfg.169.2023.01.12.07.44.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 07:44:57 -0800 (PST)
Message-ID: <f271900f-0d39-0221-9b6e-d6de1a44a363@linaro.org>
Date:   Thu, 12 Jan 2023 16:44:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Use MMCX for all DP
 controllers
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20230112135055.3836555-1-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230112135055.3836555-1-quic_bjorande@quicinc.com>
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



On 12.01.2023 14:50, Bjorn Andersson wrote:
> While MDSS_GDSC is a subdomain of MMCX, Linux does not respect this
> relationship and sometimes invokes sync_state on the rpmhpd (MMCX)
> before the DisplayPort controller has had a chance to probe.
> 
> The result when this happens is that the power is lost to the multimedia
> subsystem between the probe of msm_drv and the DisplayPort controller -
> which results in an irrecoverable state.
> 
> While this is an implementation problem, this aligns the power domain
> setting of the one DP instance with that of all the others.
> 
> Fixes: 57d6ef683a15 ("arm64: dts: qcom: sc8280xp: Define some of the display blocks")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
One day we'll hopefully finally overcome this parent-child mess..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 4f4353f84cba..4511fd939c91 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -2533,7 +2533,7 @@ mdss0_dp3: displayport-controller@aea0000 {
>  				interrupts = <15>;
>  				phys = <&mdss0_dp3_phy>;
>  				phy-names = "dp";
> -				power-domains = <&dispcc0 MDSS_GDSC>;
> +				power-domains = <&rpmhpd SC8280XP_MMCX>;
>  
>  				assigned-clocks = <&dispcc0 DISP_CC_MDSS_DPTX3_LINK_CLK_SRC>,
>  						  <&dispcc0 DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC>;
