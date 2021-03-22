Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2A1344E53
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:20:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbhCVSUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231313AbhCVSTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 14:19:49 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59EDFC061574
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 11:19:49 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso8981423pjb.4
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 11:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QB1Sqrq0V8LlXGcBPi7p2agn7+zDjVnfX+PVcN8WlZg=;
        b=YLk6E+p2so6CZCwnzaSLKo2CTKMc57LYAeXASu1nf7lMP/IKk3tEyBYe7GKDmCYDQb
         lEvBcR8VkxdxHPabVvNVJOrRYGCddifGO3nW+lcpIIGVmSQLwnoaIvcOIFimurTlP7S9
         PbaQLjZCzocwcs5BWKgYu9JHaKV+FljfJH3WaBA/ILwSLUcZAfo4GU76ayisMgFySTP4
         jcjVYo9dqpm1w5OqQWDAbYWEVr7drITxTGseCTv3mlx0OdXMKicO4sE44FZx8FPR9q+P
         M+wahs6elMJbjCFYsImHCDKrPa/Dql4OL5qtIJbxINSf9hzm6cCJs7P1HbA8qj6xXvXS
         bafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QB1Sqrq0V8LlXGcBPi7p2agn7+zDjVnfX+PVcN8WlZg=;
        b=ahLp2B5/ikhFqz8s5t9KyHWzc+NBrfXcU1IdI3BeKmqIKciu7ebY5J23GKLLCKz26e
         rmptQfogAqiwULS7Z6/k2FJFMrJE4qtWUWXjNyAXekIGTelfWaqE7mfvyCfVIji8g02U
         L6VrNUQ6K5piWoQvDrTvS506650LWgcjAWLWunQvLaNyTBd3p5xwa2OIrUAqCBD0L6eG
         Fg3WNDvNmn3zXVh0aWbFcKJNs/diZU3Ht8pkowLzD4RELyvg6VbSBZqpPNiJbndAazB6
         e8A3YwfI/gDXLlWWPcpBv+Pf6EasCmu1yC9KRpGzqMmHHWyy9ed8T704fn7qXMbLOoyn
         ZLlA==
X-Gm-Message-State: AOAM533i8PjH0iaUSevJEuECujtZEIlArn7bZsGlE8rNl5sY7a2knMVh
        /ayRZiD4l7hB1eyFHMHJjtNNlVHg2T/kwAPrMRE=
X-Google-Smtp-Source: ABdhPJyH4rj1NHfQfGhvZvnNVxchblLS8QQBz3Nq7DQoj9F63pThbAYHa4+btp5OaTCwZxQ5viDbPd3xiccP+2chdos=
X-Received: by 2002:a17:90b:94c:: with SMTP id dw12mr343932pjb.119.1616437188774;
 Mon, 22 Mar 2021 11:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-9-l.stach@pengutronix.de> <20201109201557.GA1690230@bogus>
 <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
In-Reply-To: <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 22 Mar 2021 13:19:37 -0500
Message-ID: <CAHCN7xLdkEd0G3fa9gAp-xvKZ-bYmvcyn-8OEbgNjBJyCCOs9g@mail.gmail.com>
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 8:11 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
> > On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
> > > For some domains the resets of the devices in the domain are not
> > > automatically triggered. Add an optional resets property to allow
> > > the GPC driver to trigger those resets explicitly.
> > >
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > > index a96e6dbf1858..4330c73a2c30 100644
> > > --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > > +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > > @@ -66,6 +66,13 @@ properties:
> > >
> > >            power-supply: true
> > >
> > > +          resets:
> > > +            description: |
> > > +              A number of phandles to resets that need to be asserted during
> > > +              power-up sequencing of the domain.
> > > +            minItems: 1
> > > +            maxItems: 4
> >
> > You need to define what each reset is.
>
> I can't. The resets belong to devices located inside the power domain,
> which need to be held in reset across the power-up sequence. So I have
> no means to specify what each reset is in a generic power-domain
> binding. Same situation as with the clocks in this binding actually.
>

Rob,

Do you have any guidance on how we might be able to give you want you
want so we can move forward?  This power-domain driver will be used
for a variety of Freescale/NXP IMX SoC's, and looking at other power
domain controllers [1], they don't explicitly define what each reset
is.  Since the resets for this family vary from SoC to SoC, the number
of resets will change from one SoC to another.  If you could give us a
suggestion or an example of a board that has the power-domain resets
do what you ask, it would help move this forward.  Without this
driver, several boards are unable to use a significant number of
peripherals.

adam
[1] - https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml?h=v5.12-rc4

> Regards,
> Lucas
>
