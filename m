Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31B004C5775
	for <lists+devicetree@lfdr.de>; Sat, 26 Feb 2022 19:28:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231858AbiBZS2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Feb 2022 13:28:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231556AbiBZS2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Feb 2022 13:28:37 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B3949F34
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 10:28:02 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id ay7so10140098oib.8
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 10:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HO/1nzy32YpBFEseK2K+SYOuAUVByzLZTiWJGkuvSpk=;
        b=grCmht2oW3v/rKHSnFLesF/5DaG46pgdmEiELHsOWPLQneTbOt+r96bTrJlxpCJe1n
         PGnZVn3FT34UFxOTh1s5z5TfQFD1tx+fOe5TdA408YZsddloTp29m+G8wi4e48RvzUN7
         AQ1sLfKgEAiKYP3c7s4MCPCW+4xhD4GoesbbtqXt35jA0TyB1//UmoCcrWJ+WOBdhaiv
         UzbF007XDUqKgaQe6oeqCBZjJzYP006G12x6t0I8PEP6U+UNaVBIRWuGVJb36MzVx2w6
         LZEaFs0BvzALcONkHv5+oEORGAth7BAtk95dSq1O2p9McLKYKuWOrAM6JbaIw9GwEoAx
         0SgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HO/1nzy32YpBFEseK2K+SYOuAUVByzLZTiWJGkuvSpk=;
        b=GY+dME19VSjnb4s26m5984jXXnHf68fSttjJFvXr+fAYK5nfHWWeg+VHJoKV8YpxAm
         h6KGThxkpQChGCUeFccIPs4rir1wn2KTQZVEaD/TcrRTrnzbLdN6FJQ8yqILfdjIj6AE
         S/d0SV7QeRWZ1CEH5p5EjBCioNcuO/wRpMf8RiHbYaNx2s5UFCNmqTe8d7W/opsx5cWW
         ffFtO0mBJrQ1p5rymUcqxZKx+GU+jDorkOVDk75h4WMc8aivP09PL9Wan5cPs6O5fr+F
         fy+yWt41o6NPgGE33xy5qA39Gs1YLoDkVaZ8Uc+8TPxoSYKzISeXkOpuemqEHYQIuUAO
         Ps8g==
X-Gm-Message-State: AOAM531CfiqJQefYRjToT/tLE4T1+ER41KN+PqQOGUtuFxI8jd6zkwjb
        Czl+Kg0s/29E+1SkQpipUPTV1tpzMWJ+HLRRIQOJkw==
X-Google-Smtp-Source: ABdhPJwXKMOR2Phn7VHgnBIFlK2fSgGNvBsqnC1UDJ6raZokdxzIFOEAyq73/7Ikd7FC14MD3ZWCNjIkCX44vrVvQEs=
X-Received: by 2002:a54:4494:0:b0:2d7:652b:287 with SMTP id
 v20-20020a544494000000b002d7652b0287mr2975923oiv.126.1645900081531; Sat, 26
 Feb 2022 10:28:01 -0800 (PST)
MIME-Version: 1.0
References: <20220119203133.467264-1-bhupesh.sharma@linaro.org>
 <20220119203133.467264-4-bhupesh.sharma@linaro.org> <816df5c9-aa89-e019-4036-6c9a79e534bd@quicinc.com>
In-Reply-To: <816df5c9-aa89-e019-4036-6c9a79e534bd@quicinc.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Sat, 26 Feb 2022 23:57:50 +0530
Message-ID: <CAH=2Nty-0iHubXSjhuvjQ79ZD2uGjtPpg7451mWf+qzHDGQi_w@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sm8150: Add pdc interrupt
 controller node
To:     Maulik Shah <quic_mkshah@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-gpio@vger.kernel.org,
        linus.walleij@linaro.org, bjorn.andersson@linaro.org,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 20 Jan 2022 at 16:24, Maulik Shah <quic_mkshah@quicinc.com> wrote:
>
> Hi,
>
> On 1/20/2022 2:01 AM, Bhupesh Sharma wrote:
> > Add pdc interrupt controller for sm8150.
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Rob Herring <robh@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sm8150.dtsi | 10 ++++++++++
> >   1 file changed, 10 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > index 6012322a5984..cc4dc11b2585 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > @@ -1626,6 +1626,16 @@ system-cache-controller@9200000 {
> >                       interrupts = <GIC_SPI 582 IRQ_TYPE_LEVEL_HIGH>;
> >               };
> >
> > +             pdc: interrupt-controller@b220000 {
> > +                     compatible = "qcom,sm8150-pdc", "qcom,pdc";
> > +                     reg = <0 0x0b220000 0 0x400>, <0 0x17c000f0 0 0x60>;
>
> <0x17c000f0 0x64>;
>
> Remove the second reg, its not used in the driver and also not
> documented yet.

Will do in v2.

Thanks,
Bhupesh

> > +                     qcom,pdc-ranges = <0 480 94>, <94 609 31>,
> > +                                       <125 63 1>;
> > +                     #interrupt-cells = <2>;
> > +                     interrupt-parent = <&intc>;
> > +                     interrupt-controller;
> > +             };
> > +
> >               ufs_mem_hc: ufshc@1d84000 {
> >                       compatible = "qcom,sm8150-ufshc", "qcom,ufshc",
> >                                    "jedec,ufs-2.0";
