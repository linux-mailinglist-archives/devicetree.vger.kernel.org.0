Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D017528D30D
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 19:22:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726371AbgJMRWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 13:22:06 -0400
Received: from mail.kernel.org ([198.145.29.99]:42258 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725970AbgJMRWG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Oct 2020 13:22:06 -0400
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BD48B25349
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1602609725;
        bh=yA3C/glXv7ykJWpaKaDe+GEUv4RDJquXS6VVlZdR9is=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=QQysbI6S5n5H+SSGUrjNlsLFsfDd+zvQIcCTST97rVv1tE6hKONYWBlwSiD5Eagkx
         fVTgpTchZY2dG1QVCEGDSvGLn1Wx7sINlB3xaKmw3Ho06wGCrzjDHoMpC3tGHm5iPF
         kXD2c/CvOOzEi0N0mP1NX7KWkQgm4ApBTnYJ8YXU=
Received: by mail-oi1-f174.google.com with SMTP id m128so174888oig.7
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 10:22:05 -0700 (PDT)
X-Gm-Message-State: AOAM530h+cJP+yEK/Cyg8Cpj0OS4qAZ9AJRiNwEtKixsMUoIYVTyPTwf
        FPCTU8zignkjH0ozZKyBYzFksJp3oOpwwPgKkg==
X-Google-Smtp-Source: ABdhPJxyF0+fiTXHwWwRn/JDJpftS1DbWVjstm+QNS2MDNzCFFXlrKVvJtsNjTjQUVhJJWmbYWI5TFy2jeyYH+8KpSc=
X-Received: by 2002:a54:4f89:: with SMTP id g9mr496636oiy.106.1602609725043;
 Tue, 13 Oct 2020 10:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <20201007203936.23953-1-ioana.ciornei@nxp.com> <20201007203936.23953-2-ioana.ciornei@nxp.com>
 <20201013133132.GA3381736@bogus> <20201013141918.vulibck3yf2ghlj4@skbuf>
In-Reply-To: <20201013141918.vulibck3yf2ghlj4@skbuf>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 13 Oct 2020 12:21:53 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL8jJYqeXzxxJTfkMPj23OvRkX1o2Z+kKdR2teY+O-_gQ@mail.gmail.com>
Message-ID: <CAL_JsqL8jJYqeXzxxJTfkMPj23OvRkX1o2Z+kKdR2teY+O-_gQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS definition
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     Leo Li <leoyang.li@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 9:19 AM Ioana Ciornei <ioana.ciornei@nxp.com> wrote:
>
> On Tue, Oct 13, 2020 at 08:31:32AM -0500, Rob Herring wrote:
> > On Wed, 07 Oct 2020 23:39:26 +0300, Ioana Ciornei wrote:
> > > Add a documentation entry for the DTS bindings needed and supported by
> > > the dpaa2-mac driver.
> > >
> > > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > > ---
> > > Changes in v2:
> > >  - new patch
> > > Changes in v3:
> > >  - renamed dpmac@x into ethernet@x
> > >  - renamed the new documentation file to use the same name as the
> > >    compatible
> > >  - marked additionalProperties as false
> > >  - added a reference to ethernet-controller.yaml
> > >
> > >  .../bindings/net/fsl,qoriq-mc-dpmac.yaml      | 60 +++++++++++++++++++
> > >  1 file changed, 60 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> Thanks for the review.
>
> Is this going in 5.10 by any chance or should I resend these after
> the merge window with the reviewed-by tags?

I just noticed you didn't Cc netdev as I would expect this to go via
the networking tree. So yes, resend after the merge window.

Rob
