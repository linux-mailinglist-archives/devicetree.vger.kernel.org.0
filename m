Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 509981C6EC9
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 12:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727792AbgEFK5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 06:57:12 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39494 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgEFK5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 06:57:12 -0400
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7B60C542;
        Wed,  6 May 2020 12:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1588762630;
        bh=I32MyCC1OP7H6t9W79KkSA6a9fzxwOzEUBb+afX4P4M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i7SNdHtQbq4vuSVOE2RZ/TTsLrJ3ZtC7kV6kj1Jul5bHr8PpsaXbp/Rjk4G0Bon/G
         FIqq7cXx88nyUoRFXwoSDuc63I5rrjkx5eggYd22vCoRN9ptrUT418sq95diDES5xS
         Q3yE86YU4rfBT7G+xiQ8Ga3gf2eoKre6DRYQbnWs=
Date:   Wed, 6 May 2020 13:57:05 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200506105705.GA5946@pendragon.ideasonboard.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
 <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 06, 2020 at 10:23:32AM +0200, Ricardo Cañuelo wrote:
> Hi Geert,
> 
> Thanks for reviewing the patches. Some comments below,
> 
> On mié 06-05-2020 09:44:19, Geert Uytterhoeven wrote: 
> > Can't you avoid the need for patches
> > [RFT PATCH 1/5] arm64: dts: draak: Reorder hdmi-encoder@39 reg and
> > reg-names properties
> > [RFT PATCH 2/5] ARM: dts: wheat: reorder reg and reg-names properties
> > in hdmi bridges
> > 
> > by using
> > 
> >     items:
> >       enum:
> >         - main
> >         - edid
> >         - cec
> >         - packet
> > 
> > instead?
> 
> Not really, because that defines a scalar property that can take any of
> those values (if I'm not mistaken), and the core schema enforces that
> reg-names must be an array.
> 
> I think the closest I can get to what you mean would be something like
> this:
> 
>     items:
>       - enum:
>         - main
>         - edid
>         - cec
>         - packet
>       - enum:
>         - main
>         - edid
>         - cec
>         - packet
>       - enum:
>         - main
>         - edid
>         - cec
>         - packet
>       - enum:
>         - main
>         - edid
>         - cec
>         - packet
> 
> But then that wouldn't prevent anyone from defining duplicate reg-names
> (eg. "main", "cec", edid", "cec"), which is even worse IMO.

The direction DT bindings are taking is to enfore a particular order. It
will cause DT validation errors for old device trees, but it won't break
backward compatibility as the order won't be enforced at runtime, so I
think that's fine. Tidying up the existing DT sources to use a
consistent order seems best to me.

-- 
Regards,

Laurent Pinchart
