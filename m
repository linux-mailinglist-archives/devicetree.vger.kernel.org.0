Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D19112CD1B7
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 09:51:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726505AbgLCIsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 03:48:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726443AbgLCIsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 03:48:52 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF5B1C061A4E
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 00:48:10 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1kkkHV-0002q2-NS; Thu, 03 Dec 2020 09:48:05 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1kkkHU-0000Ot-Sw; Thu, 03 Dec 2020 09:48:04 +0100
Date:   Thu, 3 Dec 2020 09:48:04 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     Michal Simek <michal.simek@xilinx.com>, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check
 warnings
Message-ID: <20201203084804.GA21858@pengutronix.de>
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
 <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:28:57 up 20:55, 52 users,  load average: 0.03, 0.12, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 03 Dec 2020 08:49:01 +0100, Michal Simek wrote:
> On 02. 12. 20 10:05, Michael Tretter wrote:
> > When running make dt_binding_check, the xlnx,vcu-settings binding
> > triggers the following two warnings:
> > 
> > 	'additionalProperties' is a required property
> > 
> > 	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
> > 
> > Fix the binding and make the checker happy.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> > 
> > Hi,
> > 
> > The xlnx,vcu-settings binding was reviewed [0] before the bot started to
> > run automated tests on the device tree bindings, but now produces some
> > warnings. The original patch that introduces the binding is still in
> > Michal's tree and I am not entirely sure how to handle it, but here is a
> > patch.
> > 
> > Michael
> > 
> > [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
> > ---
> >  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > index 378d0ced43c8..cb245f400287 100644
> > --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > @@ -26,9 +26,18 @@ required:
> >    - compatible
> >    - reg
> >  
> > +additionalProperties: false
> > +
> >  examples:
> >    - |
> > -    xlnx_vcu: vcu@a0041000 {
> > -          compatible = "xlnx,vcu-settings", "syscon";
> > -          reg = <0x0 0xa0041000 0x0 0x1000>;
> > +    fpga {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        xlnx_vcu: vcu@a0041000 {
> > +            compatible = "xlnx,vcu-settings", "syscon";
> > +            reg = <0x0 0xa0041000 0x0 0x1000>;
> > +        };
> 
> IIRC we had been discussing this recently and Rob wanted to have just
> 1/1 mapping here.
> 
> Take a look at 0db958b689ca9.

Thanks for the pointer.

Rob: Is there some kind of rule, when to use a 1/1 mapping and when to add a
bus with more cells? I still see several examples that add a bus with 2 cells.
I assume that they more or less legacy, but I didn't find any discussion going
beyond the commit description of 0db958b689ca9, which "just" fixes the
warnings.

I will send a v2, but I'd like to understand the rationale for having the 1/1
mapping first.

Michael
