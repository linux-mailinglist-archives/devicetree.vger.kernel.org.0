Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4652233F110
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 14:21:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbhCQNVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 09:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231136AbhCQNUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 09:20:50 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083BCC06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 06:20:50 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id u62so25934976oib.6
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 06:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ajom+qoaBVWvI/o5yJYUTXtAcdgS/F3iXCD59b+2ARE=;
        b=U936Qixe60vWzMVURSAw8RqVD016hKL3IrWdWxt3ZMSodiR8i6SGPvoyRwGTgCQATk
         dTnNZdDc4s1hcBop0WYFE+4NAq2vKaCWEXt09j1di5EnLljLaddsK5kqgbyVtwfStBd8
         7+8TEGurjTFRvfWGm2mV6CNDH9LKZVGuW1Lxq8LboLX+c2qLybWxXbG18L1WdRnvlhfQ
         hG8K0WgV2pRnrUvFXcCojo8G1Wu6r7aYmessvdlxqMAtyIMQSFPIJWyN3SEg/FclMPBS
         oENrbv62mwPOvNvSxOgIwBIBrkLT5/mZc/MWVpGVrvuDg6TGW94F/tFBhxjlnmCp9RHH
         2OzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ajom+qoaBVWvI/o5yJYUTXtAcdgS/F3iXCD59b+2ARE=;
        b=VM7mns87fG30h2UxeGr9X8CgczVpxRbTN7dYJjzDDrq+UkLOlz4uWpm0Iy302ORaxJ
         BVpW/fNR4yFTKKRPWzCXkAf0Es2Ap8vu8gIJQEvFgTpt+DA1qE5NCNSG11VljfBx4yLT
         YC9EmzQiy9n1c8/2jrvM+PG5g96ppXoPpobRYcWON3nWOxUqBAlPDWecyiMhGIHx6Yoc
         NCemSV0dEGPtTuZMX3LpZph7wEDGujQlJFJBhIRTz4giZOeCZzyCh7pDdmUQD9cH3/i6
         gQjA6lL6sF6FXlz9Oakh77fbOn2Sjot0CaZORI6+68WVRLYki8AwdWePs/ayi4IczhOB
         m7zw==
X-Gm-Message-State: AOAM530EkGXm9FmoFjdCT6uV4Uki1haTUxduVpeXdjuiZS3dEt0RKYEd
        +omQYGqTNxURccH2KW0TnxB7feHdi5cz0TbT6MSkuQ==
X-Google-Smtp-Source: ABdhPJyXMS61jORQoueJSGAiIEgP7/O76pOuZO2+PRMPv2KLW56V6uSfLC1n+2k7X3AfIlpXZQbL+bB6VONbxFccCLo=
X-Received: by 2002:a54:4590:: with SMTP id z16mr2825628oib.40.1615987249445;
 Wed, 17 Mar 2021 06:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210310052503.3618486-1-bhupesh.sharma@linaro.org>
 <20210310052503.3618486-3-bhupesh.sharma@linaro.org> <20210316222825.GA3792517@robh.at.kernel.org>
In-Reply-To: <20210316222825.GA3792517@robh.at.kernel.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 17 Mar 2021 18:50:38 +0530
Message-ID: <CAH=2Ntw2dMaSYsx-Q=mXx_mMBr5PcmwhhBvTcmPYYKmy=rcCqw@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: crypto : Add new compatible strings for qcom-qce
To:     Rob Herring <robh@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for your review.

On Wed, 17 Mar 2021 at 03:58, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 10, 2021 at 10:54:57AM +0530, Bhupesh Sharma wrote:
> > Newer qcom chips support newer versions of the qce IP, so add
> > new compatible strings for qcom-qce (in addition to the existing
> > "qcom,crypto-v5.1").
> >
> > With [1], Thara tried to add the support for new compatible strings,
> > but we couldn't conclude on the approach to be used. Since we have
> > a number of new qcom arm64 SoCs available now, several of which
> > support the same crypto IP version, so it makes more sense to use
> > the IP version for the compatible string, rather than using the soc
> > name as the compatible string.
> >
> > [1]. https://lore.kernel.org/linux-arm-msm/20201119155233.3974286-7-thara.gopinath@linaro.org/
> >
> > Cc: Thara Gopinath <thara.gopinath@linaro.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Andy Gross <agross@kernel.org>
> > Cc: Herbert Xu <herbert@gondor.apana.org.au>
> > Cc: David S. Miller <davem@davemloft.net>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: linux-clk@vger.kernel.org
> > Cc: linux-crypto@vger.kernel.org
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: bhupesh.linux@gmail.com
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/crypto/qcom-qce.txt | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.txt b/Documentation/devicetree/bindings/crypto/qcom-qce.txt
> > index 07ee1b12000b..217b37dbd58a 100644
> > --- a/Documentation/devicetree/bindings/crypto/qcom-qce.txt
> > +++ b/Documentation/devicetree/bindings/crypto/qcom-qce.txt
> > @@ -2,7 +2,11 @@ Qualcomm crypto engine driver
> >
> >  Required properties:
> >
> > -- compatible  : should be "qcom,crypto-v5.1"
> > +- compatible  : Supported versions are:
> > +             - "qcom,crypto-v5.1", for ipq6018
> > +             - "qcom,crypto-v5.4", for sdm845, sm8150
>
> 2 SoCs sharing 1 version doesn't convince me on using version numbers.
> Having 4 versions for 5 SoCs further convinces me you should stick with
> SoC specific compatibles as *everyone* else does (including most QCom
> bindings).

Fair enough. I will add SoC specific compatibles in v2, which should
be out shortly.

Regards,
Bhupesh

> > +             - "qcom,crypto-v5.5", for sm8250
> > +             - "qcom,crypto-v5.6", for sm8350
> >  - reg         : specifies base physical address and size of the registers map
> >  - clocks      : phandle to clock-controller plus clock-specifier pair
> >  - clock-names : "iface" clocks register interface
> > --
> > 2.29.2
> >
