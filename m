Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BFC48BF4F9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 16:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726984AbfIZOXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 10:23:30 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:53116 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726500AbfIZOXa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 10:23:30 -0400
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B9C91B25;
        Thu, 26 Sep 2019 16:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1569507808;
        bh=xxT1mkrHMMZ7msB0GFgxJOGGFCvytnN0N4yY+3OwfHg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QfB5jKEiuzy0RfRWBPjOMvTQONh6FEoNE+YfT1Ww//e2XTI17PghB/miLlXupeDze
         r1Y8faYdz/zSXqB1BqNqneO6UZp3BY3dn0NkJSq5/EcJeX5Q5lFYpFmT11JEJxMhGh
         wOlstdcEKkAC9QWLTPbinoIuTZFF61hh2LK4aHy0=
Date:   Thu, 26 Sep 2019 17:23:18 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP
 subsystem bindings
Message-ID: <20190926142318.GB16469@pendragon.ideasonboard.com>
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
 <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
 <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqL7-33B4CaEX0r5V7PhX9EnghxNfcbZNLT4yo+FLeCOCA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, Sep 26, 2019 at 09:15:01AM -0500, Rob Herring wrote:
> On Wed, Sep 25, 2019 at 6:56 PM Laurent Pinchart wrote:
> >
> > From: Hyun Kwon <hyun.kwon@xilinx.com>
> >
> > The bindings describe the ZynqMP DP subsystem. They don't support the
> > interface with the programmable logic (FPGA) or audio yet.
> >
> > Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > Changes since v8:
> >
> > - Convert to yaml
> > - Rename aclk to dp_apb_clk
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.example.dt.yaml:
> display@fd4a0000: clock-names:2: 'dp_vtc_pixel_clk_in' was expected

If you allow me to steal a bit of your brain time, could you help me
expressing the clocks constraint ?

  clocks:
    description:
      The AXI clock and at least one video clock are mandatory, the audio clock
      optional.
    minItems: 2
    maxItems: 4
    items:
      - description: AXI clock
      - description: Audio clock
      - description: Non-live video clock (from Processing System)
      - description: Live video clock (from Programmable Logic)
  clock-names:
    minItems: 2
    maxItems: 4
    items:
      - const: dp_apb_clk
      - const: dp_aud_clk
      - const: dp_vtc_pixel_clk_in
      - const: dp_live_video_in_clk

dp_apb_clk is required, dp_aud_clk is optional, and at least one of
dp_vtc_pixel_clk_in and dp_live_video_in_clk is required.

-- 
Regards,

Laurent Pinchart
