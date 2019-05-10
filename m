Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B874A19B93
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 12:26:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727341AbfEJK0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 06:26:32 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:34759 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727302AbfEJK0c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 06:26:32 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id DF1B520001C;
        Fri, 10 May 2019 10:26:28 +0000 (UTC)
Date:   Fri, 10 May 2019 12:26:28 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: sound: sun4i-spdif: Document that
 the RX channel can be missing
Message-ID: <20190510102628.u344cqe7sftuamfg@flea>
References: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
 <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
 <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, May 08, 2019 at 02:35:10PM -0500, Rob Herring wrote:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: allwinner,sun8i-h3-spdif
> > +
> > +    then:
> > +      properties:
> > +        dmas:
> > +          maxItems: 1
>
> In this and below, these should get added automatically by
> fixup_schema. If not present, we set minItems/maxItems to the size of
> the items list. It look like you added support for that, so left over
> from before you addressed that for if/then/else?

Sorry, I should have brought that up in the pull request.

It seems that it's still necessary when using allOf, otherwise the
schema won't match

Maybe there's something more to fix when using allOf?

> > +          items:
> > +            - description: RX DMA Channel
>
> s/RX/TX/
>
> > +
> > +        dma-names:
> > +          maxItems: 1
> > +          items:
> > +            - const: tx
> > +
> > +    else:
> > +      properties:
> > +        dmas:
> > +          minItems: 2
> > +          maxItems: 2
> > +          items:
> > +            - description: RX DMA Channel
> > +            - description: TX DMA Channel
> > +
> > +        dma-names:
> > +          minItems: 2
> > +          maxItems: 2
> > +          items:
> > +            - const: rx
> > +            - const: tx
>
> I'm really on the fence whether it's worth it to add all this just add
> the restrictions based on the compatible. I guess with copy-n-paste
> this would be a common error.

Converting most of the bindings to the schemas has shown that (at
least in our case), we've been pretty bad at keeping the documentation
up to date with that kind of information.

Adding that kind of construct at least has the benefit to actively
enforce that the documentation is complete.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
