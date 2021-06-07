Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1C7F39E848
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 22:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbhFGUWH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 16:22:07 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:39258 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231723AbhFGUWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 16:22:05 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 157KK4Lq002190;
        Mon, 7 Jun 2021 15:20:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623097204;
        bh=7KY+exlKhrSuEOayj55DaPJyjK/4cxmTiu9LOQIvQ0I=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=YS7w8gV/Rsq5A6UN1z/W9lxrfHURqJfHAMxcXftmGYiAMllLK/CYIc/6qPyCELso4
         /HWKUd6BUqdyBleIhTZ3qCbFKTm1jdGEPVSP5eAP2WioYwpy/6skVZS56w1lH8lm8F
         u8lfTe5OeldmBWbiot2iaeKg0jt7O9kLBLmvuRnY=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 157KK3B1026487
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 7 Jun 2021 15:20:04 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 7 Jun
 2021 15:20:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 7 Jun 2021 15:20:04 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 157KK3B3087177;
        Mon, 7 Jun 2021 15:20:04 -0500
Date:   Mon, 7 Jun 2021 15:20:02 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Sinthu Raja M <sinthu.raja@mistralsolutions.com>
CC:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
Message-ID: <20210607202002.b4ijmzoitwqdgnw6@sublease>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
 <20210607093314.23909-2-sinthu.raja@ti.com>
 <20210607133209.lnx4cist3ajs557j@conduit>
 <CAEd-yTQVuGjftjQs7B83Y3fcgQtLj+DF_09Va8HjP0=qOwE8Ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEd-yTQVuGjftjQs7B83Y3fcgQtLj+DF_09Va8HjP0=qOwE8Ng@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22:26-20210607, Sinthu Raja M wrote:
> On Mon, Jun 7, 2021 at 7:02 PM Nishanth Menon <nm@ti.com> wrote:
> >
> > On 15:03-20210607, Sinthu Raja wrote:
> > > From: Sinthu Raja <sinthu.raja@ti.com>
> > >
> > > J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> > > for TI’s J721E SoC.
> > > Add DT binding documentation for J721E EAIK
> >
> > Need a url for the board.
> The URL for the board is not available until the board launch.
> Probably should have mentioned in the cover letter.

Then, lets wait for the url to be available. k.org record will be for
ever, so, lets make sure that we have this information to aid people
looking to know more about the platform.

> >
> > >
> > > Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> > > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > > ---
> > > Change in V2:
> > > - Fix for dt_binding_check error.
> > >
> > >  Documentation/devicetree/bindings/arm/ti/k3.yaml                | 2 ++
> > >  .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml         | 2 +-
> > >  2 files changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > index c5aa362e4026..923dd7cf1dc6 100644
> > > --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > @@ -29,6 +29,8 @@ properties:
> > >
> > >        - description: K3 J721E SoC
> > >          items:
> > > +          - enum:
> > > +              - ti,j721e-eaik
> > >            - const: ti,j721e
> > >
> > >        - description: K3 J7200 SoC
> > > diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > > index 6070456a7b67..464cee128811 100644
> > > --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > > +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > > @@ -135,7 +135,7 @@ examples:
> > >    - |
> > >      / {
> > >          model = "Texas Instruments K3 J721E SoC";
> > > -        compatible = "ti,j721e";
> > > +        compatible = "ti,j721e-eaik", "ti,j721e";
> > I see what we are attempting to do here.
> >
> > Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> > probably should strip off the board specifics out in the
> > examples. but, that belongs to a different patch.
> Will remove this change. But do we need to ignore the dt_binding
> _check for this patch series?


No, we cannot ignore dt_bindings_check. Hence the fixup needs to happen
before we consider this series.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
