Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EDCC39E554
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 19:25:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbhFGR1P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 13:27:15 -0400
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227]:48990 "EHLO
        egress-ip4a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229997AbhFGR1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 13:27:14 -0400
X-Greylist: delayed 1684 seconds by postgrey-1.27 at vger.kernel.org; Mon, 07 Jun 2021 13:27:14 EDT
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69]) by mx-outbound8-179.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Jun 2021 17:25:09 +0000
Received: by mail-ed1-f69.google.com with SMTP id h23-20020aa7c5d70000b029038fed7b27d5so9561364eds.21
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 10:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rGVg8i1oRTdQ33VNZHiE6dEeShO7SwK5NDa2Bk4nE5w=;
        b=BAyWfNZhR4mrduHRzsqdw889QBFb2JYUxp+bB8xt/Zg1zyUIwulRnLFw7eiuARIrpd
         FBLxY3HqnhlyHik/8b4+R2vDvYOllbXENWpjnTsN1d+dzlpim84uCUdppyouxdT34DyO
         3f5BZ+wIRdkH0joNufChXrVfA7nXOdT3oR59s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rGVg8i1oRTdQ33VNZHiE6dEeShO7SwK5NDa2Bk4nE5w=;
        b=pQ+K3+pCQu+Fd1xGhgOyyRFgK4rEMw+jcuTVNOXGegx0DmVxhwEpYD+GdqvK46/yJs
         dH8TKupehwCl22f3PLERDCdcEvDCNOKLFgQ0m98hJOe9DInxZduJOYQX1923W/8uwAWF
         82LOosqyINxQ1DrZBpUnWZZTawiEtcflYSxqUR4znGaqSaz+5O+1Sn1QaNqIm5BlaQRB
         fvqcOJJ16lw/cOAS3my50LSRjxVpQiJPMjmr2oBIgtxHYGLekAvaDJngVTw6P83aucOQ
         u8M30K1mmJVR89xOwAvP3hwjEVivQRt1pCYn2oSWQflZUeULPVTWWTan3ZzuGN49Q49t
         Xu9w==
X-Gm-Message-State: AOAM531T0x2uQf4cZ0pz5gCMe3STv1RkHRKfSp6X1MBifPSEW/Qi8mEG
        6pqWve95Zsk6e9+V+Y4YdtOeOuwfCm1pviZjVjfkIiC4p4OobsuMbSY2IPL/rJxQJuZhSiW63TE
        pc2RXBMQXOo8u2nfFkT921aSZxt6MYrzwBD5eBiFoucj1tlmlN9RP2UYk9OOowHTb5ggZLPIOfA
        ==
X-Received: by 2002:a5d:6daf:: with SMTP id u15mr16513854wrs.400.1623085024439;
        Mon, 07 Jun 2021 09:57:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytZ33wxUwxQSOk08HnhDli4AJ+BorI+8JwBuUjc8WJ0ohUKc3Jr8kIed8IZ31F8tIY+5xwxEW4If4ISg5Twvk=
X-Received: by 2002:a5d:6daf:: with SMTP id u15mr16513835wrs.400.1623085024214;
 Mon, 07 Jun 2021 09:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210607093314.23909-1-sinthu.raja@ti.com> <20210607093314.23909-2-sinthu.raja@ti.com>
 <20210607133209.lnx4cist3ajs557j@conduit>
In-Reply-To: <20210607133209.lnx4cist3ajs557j@conduit>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Mon, 7 Jun 2021 22:26:52 +0530
Message-ID: <CAEd-yTQVuGjftjQs7B83Y3fcgQtLj+DF_09Va8HjP0=qOwE8Ng@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
To:     Nishanth Menon <nm@ti.com>
Cc:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BESS-ID: 1623086709-302227-5401-10556-1
X-BESS-VER: 2019.1_20210603.1645
X-BESS-Apparent-Source-IP: 209.85.208.69
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232779 [from 
        cloudscan14-53.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 7:02 PM Nishanth Menon <nm@ti.com> wrote:
>
> On 15:03-20210607, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> > for TI=E2=80=99s J721E SoC.
> > Add DT binding documentation for J721E EAIK
>
> Need a url for the board.
The URL for the board is not available until the board launch.
Probably should have mentioned in the cover letter.
>
> >
> > Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> > Change in V2:
> > - Fix for dt_binding_check error.
> >
> >  Documentation/devicetree/bindings/arm/ti/k3.yaml                | 2 ++
> >  .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml         | 2 +-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documen=
tation/devicetree/bindings/arm/ti/k3.yaml
> > index c5aa362e4026..923dd7cf1dc6 100644
> > --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > @@ -29,6 +29,8 @@ properties:
> >
> >        - description: K3 J721E SoC
> >          items:
> > +          - enum:
> > +              - ti,j721e-eaik
> >            - const: ti,j721e
> >
> >        - description: K3 J7200 SoC
> > diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rpr=
oc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > index 6070456a7b67..464cee128811 100644
> > --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > @@ -135,7 +135,7 @@ examples:
> >    - |
> >      / {
> >          model =3D "Texas Instruments K3 J721E SoC";
> > -        compatible =3D "ti,j721e";
> > +        compatible =3D "ti,j721e-eaik", "ti,j721e";
> I see what we are attempting to do here.
>
> Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> probably should strip off the board specifics out in the
> examples. but, that belongs to a different patch.
Will remove this change. But do we need to ignore the dt_binding
_check for this patch series?

Regards
Sinthu Raja
