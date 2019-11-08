Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB248F4DBE
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 15:07:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726684AbfKHOHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 09:07:44 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:48788 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726101AbfKHOHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Nov 2019 09:07:44 -0500
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 798AD2D1;
        Fri,  8 Nov 2019 15:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1573222062;
        bh=cfQskFVKDBmhqT8dy6gfEBopqXvAlZko8/zIfiIVSLQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qI76zDWU1Mh7+zpD/LOd6hoocj3RzM8CPdLjOzXtsrbTxg0Ebz4ax6+O1BfY7uXMY
         SvFQr/o9XlqOiRw6SAhoyjDON+13+V2trgpDFJke77uWowz5TNz1oEWZtCrvGjEbuq
         w5wsU76e778+kBQShalcdsEmHaKt1aRuegoqy80c=
Date:   Fri, 8 Nov 2019 16:07:33 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP
 subsystem bindings
Message-ID: <20191108140733.GJ4866@pendragon.ideasonboard.com>
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
 <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
 <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
 <20190926142318.GB16469@pendragon.ideasonboard.com>
 <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, Sep 26, 2019 at 09:57:29AM -0500, Rob Herring wrote:
> On Thu, Sep 26, 2019 at 9:23 AM Laurent Pinchart wrote:
> > On Thu, Sep 26, 2019 at 09:15:01AM -0500, Rob Herring wrote:
> > > On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart wrote:
> > > >
> > > > From: Hyun Kwon <hyun.kwon@xilinx.com>
> > > >
> > > > The bindings describe the ZynqMP DP subsystem. They don't support the
> > > > interface with the programmable logic (FPGA) or audio yet.
> > > >
> > > > Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > ---
> > > > Changes since v8:
> > > >
> > > > - Convert to yaml
> > > > - Rename aclk to dp_apb_clk
> > >
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
> > > display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected
> >
> > If you allow me to steal a bit of your brain time, could you help me
> > expressing the clocks constraint ?
> >
> >   clocks:
> >     description:
> >       The AXI clock and at least one video clock are mandatory, the audio clock
> >       optional.
> >     minItems: 2
> >     maxItems: 4
> >     items:
> >       - description: AXI clock
> >       - description: Audio clock
> >       - description: Non-live video clock (from Processing System)
> >       - description: Live video clock (from Programmable Logic)
> >   clock-names:
> >     minItems: 2
> >     maxItems: 4
> >     items:
> >       - const: dp_apb_clk
> >       - const: dp_aud_clk
> >       - const: dp_vtc_pixel_clk_in
> >       - const: dp_live_video_in_clk
> >
> > dp_apb_clk is required, dp_aud_clk is optional, and at least one of
> > dp_vtc_pixel_clk_in and dp_live_video_in_clk is required.
> 
> I'm hoping people's inability to express the schema will prevent
> complicated ones like this in the first place...
> 
> clock-names:
>   oneOf:
>     - minItems: 3
>       maxItems: 4
>       items:
>         - const: dp_apb_clk
>         - const: dp_aud_clk
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
>     - minItems: 2
>       maxItems: 3
>       items:
>         - const: dp_apb_clk
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]

The above would make

	clock-names = "dp_apb_clk", "dp_vtc_pixel_clk_in", "dp_vtc_pixel_clk_in";

valid. I've investigated a little bit and found uniqueItems which solves
my issue.

Would the following simpler solution be acceptable ?

clock-names:
    minItems: 2
    maxItems: 4
    items:
      - const: dp_apb_clk
      - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
      - const: dp_aud_clk
      - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
    uniqueItems: true

> Strictly speaking, that leaves items clocks wrong, but 'description'
> doesn't do anything. So I'd just leave it as is.

Speaking of which, there doesn't seem to be anything that validates the
size of clocks and clock-names being identical. Is that a known issue ?

-- 
Regards,

Laurent Pinchart
