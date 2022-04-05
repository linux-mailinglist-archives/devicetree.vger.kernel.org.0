Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF25B4F4AB8
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 02:50:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1448943AbiDEWvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 18:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1572910AbiDERT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 13:19:27 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF37125E1
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 10:17:27 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id w127so14037243oig.10
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 10:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JadLExQEEhvOceRPIHq7z5gw7ob1JIfhVcEkQBmX9uE=;
        b=hXe+3+owL0EbZLLJ3FDT9bsYD5D4zn2IwX67ewR+UbmKsTQ32iAVv5h7fzNXLW+mPG
         sleOxEaL7OCDX8bE6EUvXfD3h7OneZXM/5uuAezqZGcO6iEZtiael+3gdpjX/f/tQ+p3
         3iXVvbFp/OijZ5rKX3b66gCy1XDfG36NLE7j8I5+7AQhK9nW5LQsOOMmV5OJ0D0yKE0V
         RoRZHKcTHWy8gzedJQk78GEjNTbHsrxgO7UG5p8mxfBPiShm2LOHEDJ505f6la0q9USE
         C6hBfot4N0KxL1d51DZtW1dw/JQ/WQv70MzDHUWV3eKX9YWosr8mgeNN9d4XgCLf/+V0
         OjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JadLExQEEhvOceRPIHq7z5gw7ob1JIfhVcEkQBmX9uE=;
        b=xXhmOZUDDSVeUDvWVCMaqr8Q/Arj6hdoYE673WIkbop/mp9NA1Hb57x3ngP9hQhk18
         APTPZugZvMvyqZoPWWEBxRrPK9sFRgCiz1j4IxH6KZusJAJruRvH06/LpeQ95JI0zemL
         tii8qXGcrg7/uJYEmWmTZI+Pc9RdsibGDUUmKGrXBe5WVmPpUwctpQA0skTXibQse+Mt
         ejCADeoL2gRZrEg7elmgsq5yhdZslSlR/gVFtJVo0BUZKu6LSx2LeIaP1O1ATTp4GTRg
         lWffxtehM7Np+Kua83pz6pfMqa7EFgC1sSh6xChzuykvgK7t2k5O5VRD4iz2LldjtaxC
         GUaA==
X-Gm-Message-State: AOAM533WnSwa42MR/tyVJ02kjYkKjjP0UxN6R8XY4pGZzb5jelQzCIJk
        7LHm1k5SzQrHlF0zuK/7qNTYDw==
X-Google-Smtp-Source: ABdhPJw72DJYRZqvhil/aLj8sOEQgpeB7tq8fx65N4/yoc/CEHAPNRTaAVN38KacrPP0wR4dWzvksw==
X-Received: by 2002:a05:6808:1905:b0:2ec:da05:8e76 with SMTP id bf5-20020a056808190500b002ecda058e76mr1939412oib.290.1649179047083;
        Tue, 05 Apr 2022 10:17:27 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id k10-20020a4abd8a000000b00324907b406fsm5109381oop.21.2022.04.05.10.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 10:17:26 -0700 (PDT)
Date:   Tue, 5 Apr 2022 10:19:49 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: fix interconnects property of
 UFS node
Message-ID: <Ykx6NWrcf4IA2Mam@ripper>
References: <20220310221934.1560729-1-vladimir.zapolskiy@linaro.org>
 <dbe6d9c5-f717-785f-e65d-baa1328cea2b@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dbe6d9c5-f717-785f-e65d-baa1328cea2b@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 05 Apr 08:38 PDT 2022, Dmitry Baryshkov wrote:

> On 11/03/2022 01:19, Vladimir Zapolskiy wrote:
> > All interconnect device tree nodes on sm8450 are 2-cells, however in
> > UFS node they are handled as 1-cells, fix it.
> > 
> > Fixes: aa2d0bf04a3c ("arm64: dts: qcom: sm8450: add interconnect nodes")
> > Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Bjorn, could you please this pick for the -rc kernel?
> 

The change is obviously correct, but what difference does this change
make with the current implementation?

Regards,
Bjorn

> > ---
> >   arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > index 0cd5af8c03bd..bbd38b55e976 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > @@ -1376,8 +1376,8 @@ ufs_mem_hc: ufshc@1d84000 {
> >   			iommus = <&apps_smmu 0xe0 0x0>;
> > -			interconnects = <&aggre1_noc MASTER_UFS_MEM &mc_virt SLAVE_EBI1>,
> > -					<&gem_noc MASTER_APPSS_PROC &config_noc SLAVE_UFS_MEM_CFG>;
> > +			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI1 0>,
> > +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
> >   			interconnect-names = "ufs-ddr", "cpu-ufs";
> >   			clock-names =
> >   				"core_clk",
> 
> 
> -- 
> With best wishes
> Dmitry
