Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9212397473
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 15:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233823AbhFANjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 09:39:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:55922 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233584AbhFANjw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 09:39:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D3E7613AE
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 13:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622554691;
        bh=CghWMSGAkuJO1AG3WgedwyUuopVQux/1SdY7EHsb9oA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=RC6yxuDt4om8fwvW65wh4o0MefQMCeiEPySPhPclrmEo7MiQbeNncfkkyJSjUNPGo
         Rp5M08Isvg/613lZ0aeeO5LNd8IZ9EFT7JJ8BauJo/htAZ7ttiQGFWd8ZKp9+4nS51
         nrjfneTLL7Ji3ouH92MhxfWAQ6FYHMswsracEgo/iY8DcPHBJXdlV9YTbMJAlS+DoU
         yB9SH7b+w1xT57fb2QWSNSWShDmpP6BrGTnPzMvWbjKJsf66ZcGXZkKQPZGA+x2fm5
         uwx+ggwfFYmdKlQ74iWaq7DewMO2LeqPVYBA6O7GxbNofkrWT3OcVVEYTpUmAZak6h
         rQGxU2H3mDYPQ==
Received: by mail-ej1-f46.google.com with SMTP id g8so13320347ejx.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 06:38:11 -0700 (PDT)
X-Gm-Message-State: AOAM531+ZUenV2zQewcPYeGgpWgYUdTlLA23S9HTsQuwHUY1acHn3mTv
        hBe534xqDvv5GW/htxAV6HgveALCoiu+jzk8rQ==
X-Google-Smtp-Source: ABdhPJz1GtsAbhA763oxBIV8ttFjGEjuYTuCIUfK7BlR2W3DZACat5l691ifvadpIeHluEV0SlnhDr6T6fzY3pYkO14=
X-Received: by 2002:a17:906:b4b:: with SMTP id v11mr6350957ejg.359.1622554689978;
 Tue, 01 Jun 2021 06:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-2-sudeep.holla@arm.com>
 <20210527202554.GA1351447@robh.at.kernel.org> <20210531081548.jxovuqattu2fg73o@bogus>
 <20210531082002.spu73u7n35n53lqp@bogus>
In-Reply-To: <20210531082002.spu73u7n35n53lqp@bogus>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 1 Jun 2021 08:37:57 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+BGrU5Rb_fso3FK4T_1K+3zFbt_4m5RYAZwLNCGgYn-w@mail.gmail.com>
Message-ID: <CAL_Jsq+BGrU5Rb_fso3FK4T_1K+3zFbt_4m5RYAZwLNCGgYn-w@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: firmware: arm,scpi: Move arm,scpi-shmem
 to json schema
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 31, 2021 at 3:20 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 31, 2021 at 09:15:48AM +0100, Sudeep Holla wrote:
> > On Thu, May 27, 2021 at 03:25:54PM -0500, Rob Herring wrote:
> > > On Wed, May 26, 2021 at 07:28:00PM +0100, Sudeep Holla wrote:
> > > > Move the SRAM and shared memory binding for SCPI into the existing
> > > > Generic on-chip SRAM. We just need to update the compatible list and
> > > > there-by remove the whole old text format binding for the same.
> > > >
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Kevin Hilman <khilman@baylibre.com>
> > > > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > > > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > > ---
> > > >  .../devicetree/bindings/arm/arm,scpi.txt          | 15 ---------------
> > > >  Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
> > > >  2 files changed, 1 insertion(+), 15 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > index bcd6c3ec471e..bcb8b3d61e68 100644
> > > > --- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > +++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > @@ -56,21 +56,6 @@ Sub-nodes
> > > >   node. It can be non linear and hence provide the mapping of identifiers
> > > >   into the clock-output-names array.
> > > >
> > > > -SRAM and Shared Memory for SCPI
> > > > --------------------------------
> > > > -
> > > > -A small area of SRAM is reserved for SCPI communication between application
> > > > -processors and SCP.
> > > > -
> > > > -The properties should follow the generic mmio-sram description found in [3]
> > > > -
> > > > -Each sub-node represents the reserved area for SCPI.
> > > > -
> > > > -Required sub-node properties:
> > > > -- reg : The base offset and size of the reserved area with the SRAM
> > > > -- compatible : should be "arm,scp-shmem" for Non-secure SRAM based
> > >
> > > > +            - arm,scpi-shmem
> > >
> > > Which is correct? There's not a single other occurrance in the kernel
> > > tree of either.
> > >
> >
> > Right I was thinking removing it but wasn't sure if any downstream DTS
> > have used this as it has been in the binding for a while now.
> >
>
> Sent it too early before I completed, we don't have explicit check for
> these compatible in the code. We just use phandles directly.

But which one is correct? "arm,scp-shmem" or "arm,scpi-shmem"

I can fix up when applying.

Rob
