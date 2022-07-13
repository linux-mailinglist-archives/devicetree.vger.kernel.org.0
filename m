Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55C8057393E
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 16:52:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236553AbiGMOwI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 10:52:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236610AbiGMOwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 10:52:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9A7243C15C
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1657723925;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Ikv0yYnyHu88PsTI9SYSW6P6SO9b6N9X5DEilUKoCmA=;
        b=QD4uR7Xanb+jQqQWZ4h0FyXzkMYYOoH5xeWCq1czXFJXy2iyJbblhG0nSXdGbyimj5Xdp3
        PJTJZRV40LDLL9hhAMKRdalz32KEP1VhJshdA56Iu27IXNiAqqttE5I2/tIvOMeO1Ld2Md
        NBzdwdF45OKpQSvjeounNI8oV8agCl8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-15-PTFd8kPQNFayfIa_LtGbYA-1; Wed, 13 Jul 2022 10:51:56 -0400
X-MC-Unique: PTFd8kPQNFayfIa_LtGbYA-1
Received: by mail-qv1-f72.google.com with SMTP id ne15-20020a056214424f00b004737e7bcfa6so3851665qvb.7
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 07:51:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ikv0yYnyHu88PsTI9SYSW6P6SO9b6N9X5DEilUKoCmA=;
        b=5rMH867N/GAGjo00xk7EyyRGrSDDw2nc1Be1e5riuijM4WH6Nf2SkkOGdn62jOFq/t
         910I6J6k5gIgkpkrjmbrQh2lGMaOniQFemXQBjoZ/tRv4JZJbmNn8fwIAEXMFcFdLwmi
         FYpyO36hypMiqqYqAEfoamSAYUxwggTKUG9ZzCNC5H9q+vW5oDrTQAmEJxx5a5Cv452n
         fqEOMh31VzADYGY8sC7/bmcWen5dg6FAFGBZfbD56DzUJZlh8W93SEjf//2tzIjJzSeQ
         F+hkybkCTt9YlQ0I9pbT0z2sqhIYCPfUSdtEhiprMblHqAszWm2oX8wYMQ0luBZHuUuc
         7bmQ==
X-Gm-Message-State: AJIora/1PRkcO9kKIsibSMSDS3eODaONlEhHzxEenTfeqbL1UqyyJm/l
        sTT7cMPuUah+B6xTRg2HI7SxMI7zX12I9LSBcrxU5OdFeuyaZzmt3bmqN+dQhHJ/qv2+XG9wpAF
        oDy4/4Bp5lkLwlUn894gACQ==
X-Received: by 2002:a37:48c:0:b0:6b5:652e:de46 with SMTP id 134-20020a37048c000000b006b5652ede46mr2644417qke.714.1657723916396;
        Wed, 13 Jul 2022 07:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uTFR8vE33A5iuBwNe9uo1BBClQFZiEvQzoa9rbYphjZn84xJH7w0tkL11pTm1Ylbi4ETILLw==
X-Received: by 2002:a37:48c:0:b0:6b5:652e:de46 with SMTP id 134-20020a37048c000000b006b5652ede46mr2644393qke.714.1657723916059;
        Wed, 13 Jul 2022 07:51:56 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::2e])
        by smtp.gmail.com with ESMTPSA id t16-20020a05622a149000b00304e33f21f7sm10645897qtx.68.2022.07.13.07.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 07:51:55 -0700 (PDT)
Date:   Wed, 13 Jul 2022 09:51:52 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Fix PMU interrupt
Message-ID: <20220713145152.32igy7dmg7qvm6jk@halaneylaptop>
References: <20220713143429.22624-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220713143429.22624-1-manivannan.sadhasivam@linaro.org>
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 13, 2022 at 08:04:29PM +0530, Manivannan Sadhasivam wrote:
> PPI interrupt should be 7 for the PMU.
> 
> Cc: Johan Hovold <johan+linaro@kernel.org>
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Reported-by: Steve Capper <Steve.Capper@arm.com>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 268ab423577a..2d7823cb783c 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -477,7 +477,7 @@ memory@80000000 {
>  
>  	pmu {
>  		compatible = "arm,armv8-pmuv3";
> -		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
>  	psci {
> -- 
> 2.25.1
> 

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

