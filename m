Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4849CF4E25
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 15:32:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726232AbfKHOcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 09:32:07 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:49012 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726036AbfKHOcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Nov 2019 09:32:07 -0500
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 949172D1;
        Fri,  8 Nov 2019 15:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1573223524;
        bh=7ClG/YHQ0s5DUh3GBvfTpfT8+FbIQ9ia6XiveSy9mcw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Mpd+gMfLVw8cwcPzfAwxoBXDS3/5IJVcBbUzM6GTUPdwR4D3qWUnRfjVCNMb+wr2z
         YJxrmxeKLMYtChVNPsBjYzkcZGyeC1SUgp1EGQh5YGubvNS9C8/9JLkrKI5d1E/+lZ
         RvrDhocJ+QX9JhhzlFr+R1WbnlT7RP/LcJGKB3SY=
Date:   Fri, 8 Nov 2019 16:31:55 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP
 subsystem bindings
Message-ID: <20191108143155.GA15731@pendragon.ideasonboard.com>
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
 <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
 <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
 <20190926142318.GB16469@pendragon.ideasonboard.com>
 <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
 <20191108140733.GJ4866@pendragon.ideasonboard.com>
 <20191108141040.GK4866@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191108141040.GK4866@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 08, 2019 at 04:10:40PM +0200, Laurent Pinchart wrote:
> On Fri, Nov 08, 2019 at 04:07:33PM +0200, Laurent Pinchart wrote:
> > On Thu, Sep 26, 2019 at 09:57:29AM -0500, Rob Herring wrote:
> > > On Thu, Sep 26, 2019 at 9:23 AM Laurent Pinchart wrote:
> > >> On Thu, Sep 26, 2019 at 09:15:01AM -0500, Rob Herring wrote:
> > >>> On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart wrote:
> > >>>>
> > >>>> From: Hyun Kwon <hyun.kwon@xilinx.com>
> > >>>>
> > >>>> The bindings describe the ZynqMP DP subsystem. They don't support the
> > >>>> interface with the programmable logic (FPGA) or audio yet.
> > >>>>
> > >>>> Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > >>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>>> ---
> > >>>> Changes since v8:
> > >>>>
> > >>>> - Convert to yaml
> > >>>> - Rename aclk to dp_apb_clk
> > >>>
> > >>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
> > >>> display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected
> > >>
> > >> If you allow me to steal a bit of your brain time, could you help me
> > >> expressing the clocks constraint ?
> > >>
> > >>   clocks:
> > >>     description:
> > >>       The AXI clock and at least one video clock are mandatory, the audio clock
> > >>       optional.
> > >>     minItems: 2
> > >>     maxItems: 4
> > >>     items:
> > >>       - description: AXI clock
> > >>       - description: Audio clock
> > >>       - description: Non-live video clock (from Processing System)
> > >>       - description: Live video clock (from Programmable Logic)
> > >>   clock-names:
> > >>     minItems: 2
> > >>     maxItems: 4
> > >>     items:
> > >>       - const: dp_apb_clk
> > >>       - const: dp_aud_clk
> > >>       - const: dp_vtc_pixel_clk_in
> > >>       - const: dp_live_video_in_clk
> > >>
> > >> dp_apb_clk is required, dp_aud_clk is optional, and at least one of
> > >> dp_vtc_pixel_clk_in and dp_live_video_in_clk is required.
> > > 
> > > I'm hoping people's inability to express the schema will prevent
> > > complicated ones like this in the first place...
> > > 
> > > clock-names:
> > >   oneOf:
> > >     - minItems: 3
> > >       maxItems: 4
> > >       items:
> > >         - const: dp_apb_clk
> > >         - const: dp_aud_clk
> > >         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >     - minItems: 2
> > >       maxItems: 3
> > >       items:
> > >         - const: dp_apb_clk
> > >         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > 
> > The above would make
> > 
> > 	clock-names = "dp_apb_clk", "dp_vtc_pixel_clk_in", "dp_vtc_pixel_clk_in";
> > 
> > valid. I've investigated a little bit and found uniqueItems which solves
> > my issue.
> > 
> > Would the following simpler solution be acceptable ?
> > 
> > clock-names:
> >     minItems: 2
> >     maxItems: 4
> >     items:
> >       - const: dp_apb_clk
> >       - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> >       - const: dp_aud_clk
> >       - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> >     uniqueItems: true
> 
> To give more context,
> 
>   clocks:
>     description:
>       The AXI clock and at least one video clock are mandatory, the audio clock
>       is optional.
>     minItems: 2
>     maxItems: 4
>     items:
>       - description: dp_apb_clk is the AXI clock
>       - description: dp_aud_clk is the Audio clock
>       - description:
>           dp_vtc_pixel_clk_in is the non-live video clock (from Processing
>           System)
>       - description:
>           dp_live_video_in_clk is the live video clock (from Programmable
>           Logic)
>   clock-names:
>       minItems: 2
>       maxItems: 4
>       items:
>         - const: dp_apb_clk
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
>         - const: dp_aud_clk
>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
>       uniqueItems: true

There's something going on that I can't really understand...

clock-names:
  minItems: 2
  maxItems: 4
  items:
    - const: dp_apb_clk
    - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
    - const: dp_aud_clk
    - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
  uniqueItems: true

results in dt_mk_schema complaining about an invalid schema. However,
the following works:

clock-names:
  oneOf:
    - minItems: 2
      maxItems: 4
      items:
        - const: dp_apb_clk
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
        - const: dp_aud_clk
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
      uniqueItems: true

I assume this is due to clock-names being a string-array, which already
contains uniqueItems. However, if I leave uniqueItems out, an example
with a duplicated clock-names validates fine.

> > > Strictly speaking, that leaves items clocks wrong, but 'description'
> > > doesn't do anything. So I'd just leave it as is.
> > 
> > Speaking of which, there doesn't seem to be anything that validates the
> > size of clocks and clock-names being identical. Is that a known issue ?

-- 
Regards,

Laurent Pinchart
