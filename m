Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 30EE2F525D
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 18:12:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727633AbfKHRLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 12:11:46 -0500
Received: from mail.kernel.org ([198.145.29.99]:48950 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727168AbfKHRLq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 8 Nov 2019 12:11:46 -0500
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C2A8621924
        for <devicetree@vger.kernel.org>; Fri,  8 Nov 2019 17:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573233104;
        bh=CaH8qHPZAVsWPLlvL9AUHKie/RhnzoCdLj4UJzvYdhU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=oD6c1Hr9KL3bdyuYpf8Gdl9CdxHH2n9ptpEKWJCS1cr0B8iiG3cfZarKnjwUkrAIB
         oqkDDFHYueP1/ahyZJxW/wwD8S7Amx2/pjMgpeO0GUTPWWIiitF1DpHy4NULNhJOyr
         7vqgSTWpFWSOl73GcxXv37hQWho9WvSqWYKDQ2Gk=
Received: by mail-qk1-f173.google.com with SMTP id e187so5919118qkf.4
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2019 09:11:44 -0800 (PST)
X-Gm-Message-State: APjAAAUaSQ+HsYQjMK/i/6sFy1WcDPGtGQ/n5yXkNLV0Wy6AAVzETI2X
        S+Rj5eyvRZgiziTb456+Ax+kJWNNTgVOypsvFA==
X-Google-Smtp-Source: APXvYqxnGoYQBctoh6wLOaEVEzFu8vbT1EpXPZCLKatKPqs1cTFQYvNqgh/yBXejvfw0nIk1A5c3L634810j74BBl+Y=
X-Received: by 2002:a05:620a:205d:: with SMTP id d29mr10214019qka.152.1573233103837;
 Fri, 08 Nov 2019 09:11:43 -0800 (PST)
MIME-Version: 1.0
References: <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
 <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
 <20190926142318.GB16469@pendragon.ideasonboard.com> <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
 <20191108140733.GJ4866@pendragon.ideasonboard.com> <20191108141040.GK4866@pendragon.ideasonboard.com>
 <20191108143155.GA15731@pendragon.ideasonboard.com> <CAL_Jsq+jXCaEUGO8+zjZmPxF0UT8YpDf44YMPygbwwZBE1vy5w@mail.gmail.com>
 <20191108160120.GC15731@pendragon.ideasonboard.com> <20191108161226.GD15731@pendragon.ideasonboard.com>
 <20191108161512.GE15731@pendragon.ideasonboard.com>
In-Reply-To: <20191108161512.GE15731@pendragon.ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 8 Nov 2019 11:11:26 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+k65JeQzuXMuXqLn6h9=_HMoh_ETeHhJ+AxUz7KY+esg@mail.gmail.com>
Message-ID: <CAL_Jsq+k65JeQzuXMuXqLn6h9=_HMoh_ETeHhJ+AxUz7KY+esg@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP
 subsystem bindings
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 8, 2019 at 10:15 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Fri, Nov 08, 2019 at 06:12:26PM +0200, Laurent Pinchart wrote:
> > On Fri, Nov 08, 2019 at 06:01:20PM +0200, Laurent Pinchart wrote:
> > > On Fri, Nov 08, 2019 at 09:57:55AM -0600, Rob Herring wrote:
> > >> On Fri, Nov 8, 2019 at 8:32 AM Laurent Pinchart wrote:
> > >>> On Fri, Nov 08, 2019 at 04:10:40PM +0200, Laurent Pinchart wrote:
> > >>>> On Fri, Nov 08, 2019 at 04:07:33PM +0200, Laurent Pinchart wrote:
> > >>>>> On Thu, Sep 26, 2019 at 09:57:29AM -0500, Rob Herring wrote:
> > >>>>>> On Thu, Sep 26, 2019 at 9:23 AM Laurent Pinchart wrote:
> > >>>>>>> On Thu, Sep 26, 2019 at 09:15:01AM -0500, Rob Herring wrote:
> > >>>>>>>> On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart wrote:
> > >>>>>>>>>
> > >>>>>>>>> From: Hyun Kwon <hyun.kwon@xilinx.com>
> > >>>>>>>>>
> > >>>>>>>>> The bindings describe the ZynqMP DP subsystem. They don't support the
> > >>>>>>>>> interface with the programmable logic (FPGA) or audio yet.
> > >>>>>>>>>
> > >>>>>>>>> Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > >>>>>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>>>>>>>> ---
> > >>>>>>>>> Changes since v8:
> > >>>>>>>>>
> > >>>>>>>>> - Convert to yaml
> > >>>>>>>>> - Rename aclk to dp_apb_clk
> > >>>>>>>>
> > >>>>>>>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
> > >>>>>>>> display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected
> > >>>>>>>
> > >>>>>>> If you allow me to steal a bit of your brain time, could you help me
> > >>>>>>> expressing the clocks constraint ?
> > >>>>>>>
> > >>>>>>>   clocks:
> > >>>>>>>     description:
> > >>>>>>>       The AXI clock and at least one video clock are mandatory, the audio clock
> > >>>>>>>       optional.
> > >>>>>>>     minItems: 2
> > >>>>>>>     maxItems: 4
> > >>>>>>>     items:
> > >>>>>>>       - description: AXI clock
> > >>>>>>>       - description: Audio clock
> > >>>>>>>       - description: Non-live video clock (from Processing System)
> > >>>>>>>       - description: Live video clock (from Programmable Logic)
> > >>>>>>>   clock-names:
> > >>>>>>>     minItems: 2
> > >>>>>>>     maxItems: 4
> > >>>>>>>     items:
> > >>>>>>>       - const: dp_apb_clk
> > >>>>>>>       - const: dp_aud_clk
> > >>>>>>>       - const: dp_vtc_pixel_clk_in
> > >>>>>>>       - const: dp_live_video_in_clk
> > >>>>>>>
> > >>>>>>> dp_apb_clk is required, dp_aud_clk is optional, and at least one of
> > >>>>>>> dp_vtc_pixel_clk_in and dp_live_video_in_clk is required.
> > >>>>>>
> > >>>>>> I'm hoping people's inability to express the schema will prevent
> > >>>>>> complicated ones like this in the first place...
> > >>>>>>
> > >>>>>> clock-names:
> > >>>>>>   oneOf:
> > >>>>>>     - minItems: 3
> > >>>>>>       maxItems: 4
> > >>>>>>       items:
> > >>>>>>         - const: dp_apb_clk
> > >>>>>>         - const: dp_aud_clk
> > >>>>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>>     - minItems: 2
> > >>>>>>       maxItems: 3
> > >>>>>>       items:
> > >>>>>>         - const: dp_apb_clk
> > >>>>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>
> > >>>>> The above would make
> > >>>>>
> > >>>>>     clock-names = "dp_apb_clk", "dp_vtc_pixel_clk_in", "dp_vtc_pixel_clk_in";
> > >>>>>
> > >>>>> valid. I've investigated a little bit and found uniqueItems which solves
> > >>>>> my issue.
> > >>
> > >> It wouldn't because uniqueItems is the default (not for json-schema,
> > >> but DT schema string-arrays).
> > >>
> > >>>>> Would the following simpler solution be acceptable ?
> > >>>>>
> > >>>>> clock-names:
> > >>>>>     minItems: 2
> > >>>>>     maxItems: 4
> > >>>>>     items:
> > >>>>>       - const: dp_apb_clk
> > >>>>>       - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>       - const: dp_aud_clk
> > >>>>>       - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>>     uniqueItems: true
> > >>>>
> > >>>> To give more context,
> > >>>>
> > >>>>   clocks:
> > >>>>     description:
> > >>>>       The AXI clock and at least one video clock are mandatory, the audio clock
> > >>>>       is optional.
> > >>>>     minItems: 2
> > >>>>     maxItems: 4
> > >>>>     items:
> > >>>>       - description: dp_apb_clk is the AXI clock
> > >>>>       - description: dp_aud_clk is the Audio clock
> > >>>>       - description:
> > >>>>           dp_vtc_pixel_clk_in is the non-live video clock (from Processing
> > >>>>           System)
> > >>>>       - description:
> > >>>>           dp_live_video_in_clk is the live video clock (from Programmable
> > >>>>           Logic)
> > >>>>   clock-names:
> > >>>>       minItems: 2
> > >>>>       maxItems: 4
> > >>>>       items:
> > >>>>         - const: dp_apb_clk
> > >>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>         - const: dp_aud_clk
> > >>>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>>       uniqueItems: true
> > >>
> > >> 'clock' and 'clock-names' don't match. dp_aud_clk is in the wrong spot.
> > >
> > > You're right, and after thinking twice about it, this won't allow
> > >
> > >     clock-names = "dp_apb_clk", "dp_vtc_pixel_clk_in", "dp_live_video_in_clk";
> > >
> > > so your solution is the only one that will work.
> > >
> > >>>
> > >>> There's something going on that I can't really understand...
> > >>>
> > >>> clock-names:
> > >>>   minItems: 2
> > >>>   maxItems: 4
> > >>>   items:
> > >>>     - const: dp_apb_clk
> > >>>     - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>     - const: dp_aud_clk
> > >>>     - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>   uniqueItems: true
> > >>>
> > >>> results in dt_mk_schema complaining about an invalid schema. However,
> > >>> the following works:
> > >>
> > >> Because 'uniqueItems' is not allowed because it's not needed.
> > >
> > > Error messages could be improved :-)
> > >
> > >>> clock-names:
> > >>>   oneOf:
> > >>>     - minItems: 2
> > >>>       maxItems: 4
> > >>>       items:
> > >>>         - const: dp_apb_clk
> > >>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>         - const: dp_aud_clk
> > >>>         - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
> > >>>       uniqueItems: true
> > >>>
> > >>> I assume this is due to clock-names being a string-array, which already
> > >>> contains uniqueItems. However, if I leave uniqueItems out, an example
> > >>> with a duplicated clock-names validates fine.
> > >>
> > >> Are you using 'DT_SCHEMA_FILES' as that leaves out all the core schema?
> > >
> > > Ah, that's probably why ! Thank you.
> >
> > I've now run dt_binding_check without DT_SCHEMA_FILES, and without a
> > uniqueItems in each of the oneOf options, duplicate values are allowed.
> > Is this expected ?
>
> Sorry, please scratch this, I made a mistake. Things now work as
> expected. Thank you for your help !

Oh good, I was puzzled how that didn't work...

In any case, I've got a meta-schema fix to correctly check under a oneOf.

Rob
