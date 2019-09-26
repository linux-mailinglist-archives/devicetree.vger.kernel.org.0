Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C4F23BF554
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 16:57:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725820AbfIZO5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 10:57:43 -0400
Received: from mail.kernel.org ([198.145.29.99]:46830 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725813AbfIZO5n (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Sep 2019 10:57:43 -0400
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2295C21D80
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 14:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1569509862;
        bh=P73T2XmcvlRT8FEegUID9GiJh2jR4RX/vgDGrtYwB6o=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=b/s7hu4RBqtzgzUnbDUnsjU23RDdlZ6SfKfrizaS+WTqmw1t6C7udsMkxJS7lqVjD
         vAfU7Ex11Q9emXbCgB8WX2YxQ1lxNamAGyjZVRUzhL1uRDVisJWBLAW4oVjhEUXufk
         S+OLdkFoKMoIrNR6w/+klgOs3Nl3zSIhKD5vwihY=
Received: by mail-qt1-f175.google.com with SMTP id f7so3204707qtq.7
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 07:57:42 -0700 (PDT)
X-Gm-Message-State: APjAAAUbp4Hao/fDbG9jNUVaIDcKonPyQ/zVLJxbnpVHH30/BXS1CM0s
        ZBWIl98v1DV/tyxAJKiXyatdP+Rkv+GGbdOV5w==
X-Google-Smtp-Source: APXvYqwng6xJNMaVQ11CLDTXoegOv2YK79aD1B3o3PKlaWWmTkbsmvSCET7NFoeLtFMLlnb5Sr+N4pKMAQC26UtfnsY=
X-Received: by 2002:a0c:8a6d:: with SMTP id 42mr3044683qvu.138.1569509861242;
 Thu, 26 Sep 2019 07:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
 <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
 <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com> <20190926142318.GB16469@pendragon.ideasonboard.com>
In-Reply-To: <20190926142318.GB16469@pendragon.ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 26 Sep 2019 09:57:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
Message-ID: <CAL_JsqJTPzXkoyhTwWtc_Rsb5tkY-kggXhJj67EfcYgEk5tq=A@mail.gmail.com>
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

On Thu, Sep 26, 2019 at 9:23 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> On Thu, Sep 26, 2019 at 09:15:01AM -0500, Rob Herring wrote:
> > On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart wrote:
> > >
> > > From: Hyun Kwon <hyun.kwon@xilinx.com>
> > >
> > > The bindings describe the ZynqMP DP subsystem. They don't support the
> > > interface with the programmable logic (FPGA) or audio yet.
> > >
> > > Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > > Changes since v8:
> > >
> > > - Convert to yaml
> > > - Rename aclk to dp_apb_clk
> >
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
> > display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected
>
> If you allow me to steal a bit of your brain time, could you help me
> expressing the clocks constraint ?
>
>   clocks:
>     description:
>       The AXI clock and at least one video clock are mandatory, the audio clock
>       optional.
>     minItems: 2
>     maxItems: 4
>     items:
>       - description: AXI clock
>       - description: Audio clock
>       - description: Non-live video clock (from Processing System)
>       - description: Live video clock (from Programmable Logic)
>   clock-names:
>     minItems: 2
>     maxItems: 4
>     items:
>       - const: dp_apb_clk
>       - const: dp_aud_clk
>       - const: dp_vtc_pixel_clk_in
>       - const: dp_live_video_in_clk
>
> dp_apb_clk is required, dp_aud_clk is optional, and at least one of
> dp_vtc_pixel_clk_in and dp_live_video_in_clk is required.

I'm hoping people's inability to express the schema will prevent
complicated ones like this in the first place...

clock-names:
  oneOf:
    - minItems: 3
      maxItems: 4
      items:
        - const: dp_apb_clk
        - const: dp_aud_clk
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
    - minItems: 2
      maxItems: 3
      items:
        - const: dp_apb_clk
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]
        - enum: [ dp_vtc_pixel_clk_in, dp_live_video_in_clk ]

Strictly speaking, that leaves items clocks wrong, but 'description'
doesn't do anything. So I'd just leave it as is.

Rob
