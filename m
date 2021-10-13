Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8D242C75C
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 19:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237793AbhJMRRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 13:17:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237660AbhJMRRJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 13:17:09 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DB86C06174E
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 10:15:06 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id o83so4786301oif.4
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 10:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EagSEJLuJ76DU1xuVtP8rPwTPOeomx72A3YkYCudisw=;
        b=QC1Nf8QJGGrpFuYv0xu/VPSu8kkfNkQpIgx/LAvTCvhSVujjNyQLtWm2c34LJnZfbw
         hMFNl/JEfTo+fG3NTl30MTUhtWinqVy/q/EqcwV31Sz5tv7rUpLOJwsqDX3TM0pEGm+X
         nCAcpAcyWvnoRpixKQCr+K+Pe9KfQtQwIZeh23IaRBR7uYqC2i9s7sBBSJUVYx3gTCVQ
         wsfPAxkB36YxNKfRcCu+1osxADUi/r39xrUjaQKdOB20xmdMKK0uITRt5OpDS2G9nkkc
         AHdDDLtf5hEGC+6tLibOaabbxFo2UqhxGiw7/UrvIPqEh/aEHUBs51krN+eC2cGVLo4d
         YS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EagSEJLuJ76DU1xuVtP8rPwTPOeomx72A3YkYCudisw=;
        b=00xWokqMFmGwYq1pR8a1lxCdZBiHLk+f8dhapIeIWmVGGZqEw4GOQed0Cxr23lL8Ny
         SZyU9o8yVf+JlbjerBDZkG535/RL8+J3tjrrM7E4JQGlANYdVpRUPUr598jOsLpzaGUb
         WNwoZ6yPXZFGZevPDxf4hMVqoXt/DYFhybcZbVjwJcHeCpIQ6DM6QbhUhyqkAk9FuJdn
         IcvYDS9ncV05cFDEy2GeEymyMDKvkZeGKbEIFCtOobt2lLItYGuBq3Msub9ilImgfEJC
         ayzojV/JRqfJVPMVNvX32rCeeyFB82iNjSiJMnHOzB+aRDR6sIJ7pcVxrZhGnUMog2Kv
         dTYQ==
X-Gm-Message-State: AOAM532j7pE/PcCWuCaY7H5uaGBWIaG3K3CO/nfPAb6C72FbNmLi65kW
        nxtbhXog57xnWn86LVEJow2T9BAQ25U4S+rdcmdAbQ==
X-Google-Smtp-Source: ABdhPJyof8AP6eNsSD6J4Oos5uZK9mgOi8QhTiPR4KT65njhsOIHv+m0av05pydrGtvWHgaPSyadSiB8AdaiL3xhziY=
X-Received: by 2002:aca:6549:: with SMTP id j9mr9524859oiw.126.1634145305328;
 Wed, 13 Oct 2021 10:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
 <20211013105541.68045-6-bhupesh.sharma@linaro.org> <6d325686-461a-b321-148c-0142933a29e4@linaro.org>
In-Reply-To: <6d325686-461a-b321-148c-0142933a29e4@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 13 Oct 2021 22:44:54 +0530
Message-ID: <CAH=2Nty+SKm4VcSXc66o0_9m7RDW7tZQwXX8NswKSzPjb2Y9QQ@mail.gmail.com>
Subject: Re: [PATCH v4 05/20] dt-bindings: qcom-bam: Add 'interconnects' &
 'interconnect-names' to optional properties
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vladimir,

On Wed, 13 Oct 2021 at 18:33, Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> Hi Bhupesh,
>
> On 10/13/21 1:55 PM, Bhupesh Sharma wrote:
> > Add new optional properties - 'interconnects' and
> > 'interconnect-names' to the device-tree binding documentation for
> > qcom-bam DMA IP.
> >
> > These properties describe the interconnect path between bam and main
> > memory and the interconnect type respectively.
> >
> > Cc: Thara Gopinath <thara.gopinath@linaro.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml b/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
> > index 32b47e3b7769..602e68df971f 100644
> > --- a/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
> > +++ b/Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml
> > @@ -45,6 +45,14 @@ properties:
> >       const: 1
> >       description: The single cell represents the channel index.
> >
> > +  interconnects:
> > +    maxItems: 1
> > +    description: |
>
> here I have the same comment about the set literal style of the
> multi-line description, which is one-line, likely the specifier
> is not needed...

Ok, I will fix it in v5.

Regards,
Bhupesh

> > +      Interconnect path between bam and main memory.
> > +
> > +  interconnect-names:
> > +    const: memory
> > +
> >     qcom,ee:
> >       $ref: /schemas/types.yaml#/definitions/uint32
> >       description:
> >
>
> --
> Best wishes,
> Vladimir
