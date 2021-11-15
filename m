Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF5644FE6D
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 06:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbhKOFhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 00:37:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbhKOFhi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 00:37:38 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 038B8C0613B9
        for <devicetree@vger.kernel.org>; Sun, 14 Nov 2021 21:34:42 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso12005363otr.2
        for <devicetree@vger.kernel.org>; Sun, 14 Nov 2021 21:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0v+LGI2uk93QWh0zE0VchiXosnpImd7/fjmzIO4RhH4=;
        b=ljdiFAqtZ9NPKkvltzxH4bg3ngROQECeo8ejU0Y6tHLuMP3wi1QCPrFvplPgDFWNzf
         15JJjBoHIQ8Isk/aYpGaqQLD/wk9IR2Q97xUbnp1IKi5niLXS6HBKX8qZSJ1SU3r//Tl
         XZ+f37jt3IOPdJRdRTpEAwdIaoi/JorESwGeobXlgr+s/VRJJCTYulzOtybsIRhk59Rr
         BgHLjxs2DRdrE09uIGldzbPF0aoXjwJjsZeca+b3C08tzAP4YvPlF8kwL3N0I0Uz/zoD
         AMBiVM6cFv5bOrwWvDR2XrfqqvtUIDYmHXkVu0UQfon2XyM4HV/noyNefHz5dU+Fb02e
         NzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0v+LGI2uk93QWh0zE0VchiXosnpImd7/fjmzIO4RhH4=;
        b=J2R3e4ALNoWBpQ3FT1/bH02RGU5nvqp8WIli2noGY1qPQ3JGTKfRzPyQENML9WHfQL
         TGkqKEoHTz+VZh3KGQkj6/OJiDnYLNP9Q+EQbPYHatQdyGFcYGawm0RFOJ8A89lwGiXX
         oVBZDFUcFKsMgDgHyM5h8jtboz4Y20IPp3KkKE8iCNmsk1x6gYHBHRqlxxca35X8kWSc
         KMuzvpb/kGqO/6Q01WgZQ9g6E38jySGAijcd+V9SfV0NsQ1+k77RF8ZFb187a2WVW4O0
         Aap8b6nrYokEOJZkUFOBG8mf141Bxt1q2jNSXv1cSqEH9ucZp+rZILczSNuJJXxKQjx7
         abHQ==
X-Gm-Message-State: AOAM532ddBsgJ4dyuw0prSAM7MYw9EAI5VXrA8Uf8T0+i0ASpCWQvWhu
        O798asoYMRNFU2BTGfiLM+IWXBFHNqJeqWXXVFXdfA==
X-Google-Smtp-Source: ABdhPJwHFd1VM2HzkhZ7fd6WbE+aZtyX+zR0/Z8uF68YjNe5BDchdN2S4CXJSImAUK2bAuhAc0W+NfpsQA6yL2f8HY0=
X-Received: by 2002:a05:6830:34a0:: with SMTP id c32mr30374599otu.379.1636954482214;
 Sun, 14 Nov 2021 21:34:42 -0800 (PST)
MIME-Version: 1.0
References: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
 <20211110105922.217895-10-bhupesh.sharma@linaro.org> <YZAZxmsp5WLeOBuF@builder.lan>
In-Reply-To: <YZAZxmsp5WLeOBuF@builder.lan>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 15 Nov 2021 11:04:31 +0530
Message-ID: <CAH=2NtwGM0==3etkG6seV=3+xO347VNEoKghpyBs9DjZPU4xNA@mail.gmail.com>
Subject: Re: [PATCH v5 09/22] dt-bindings: qcom-qce: Move 'clocks' to optional properties
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        stephan@gerhold.net, Thara Gopinath <thara.gopinath@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Sun, 14 Nov 2021 at 01:32, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 10 Nov 04:59 CST 2021, Bhupesh Sharma wrote:
>
> > QCom QCE block on some SoCs like ipq6018 don't
> > require clock as the required property, so the properties
> > 'clocks' and 'clock-names' can be moved instead in the dt-bindings
> > to the 'optional' properties section.
> >
> > Otherwise, running 'make dtbs_check' leads to the following
> > errors:
> >
> > dma-controller@7984000: clock-names:0: 'bam_clk' was expected
> >       arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> >
> > dma-controller@7984000: clock-names: Additional items are not allowed ('bam_clk' was unexpected)
> >       arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> >
> > dma-controller@7984000: clock-names: ['iface_clk', 'bam_clk'] is too long
> >       arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> >
> > dma-controller@7984000: clocks: [[9, 138], [9, 137]] is too long
> >       arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> >
> > Cc: Thara Gopinath <thara.gopinath@linaro.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> > index 30deaa0fa93d..f35bdb9ee7a8 100644
> > --- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> > +++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> > @@ -53,8 +53,6 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > -  - clocks
> > -  - clock-names
>
> I would prefer that we make this conditional on the compatible. That
> said, if this only applies to ipq6018 I think we should double check the
> fact that there's no clock there...
>
> For the sake of making progress on the series, I think you should omit
> this patch from the next version.

Without this patch, 'make dtbs_check' fails with the following error:
dma-controller@7984000: clock-names:0: 'bam_clk' was expected
        arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

dma-controller@7984000: clock-names: Additional items are not allowed
('bam_clk' was unexpected)
        arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml

which I think is making Rob bot-check fail.

So, I think instead of dropping the patch, let's try and understand
from the 'ipq6018 qce' documentation if the clocks are really
'optional' there for the qce block (as clock properties are not
mentioned in the dts from the very first upstream version). If not, we
can try and fix the 'ipq6018 qce' dts node itself.

Regards,
Bhupesh
