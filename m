Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F3962D491D
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 19:36:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732223AbgLISfj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 13:35:39 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:35085 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729345AbgLISfj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 13:35:39 -0500
Received: by mail-ot1-f68.google.com with SMTP id i6so2362142otr.2
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 10:35:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=efZa01/tAQYkdx/QvooE/mFFxl9GZnfpgF8LlHbbmjI=;
        b=EA46ZJI+mWLjlvOvJwWHNcoZFwBmhaDF9ur8GcvMP+HSYQF5+Py/4/mwSKThIpuXrB
         VwDXQ/EMsP89CmFwklNgI5q6X+L6g4p48TPftAaTMHXvVkonW3z1zstnjVh0KDKkSi39
         vZLoYW3uH/5uSP2vRiBboaW7AsT86Fi3KfTWys4tKy8kd2F5ABmR6Xn8lv8qjMpy2oK9
         vYPhXz/04DRyQ2NzkgT4dc1q7dg7TMI55TYJ9pYutnj3F1O8nYlZq3nb/IhQlOwWFCgN
         /kiv4R5EIOLBv13LEgQYs8NqRD0b7PF+Dj4TfcZ9IfqL5b3uv4dpXeUmIGZDMfkdzRag
         7yaw==
X-Gm-Message-State: AOAM533/CosBAKlYDDNCi7kASHXHZPwyHIDrRPYA+HY5AColxV2v+ojw
        S/+PqRKNwGxrFXgdvSJQF+ZhAqCiTg==
X-Google-Smtp-Source: ABdhPJwna/Boycl+ZoZ95oUf20XLAOVU8rmHFRPvUyabgqNQ/ccVNcHezR1fI4Mhq5JiT30D8HVWSw==
X-Received: by 2002:a9d:4e8f:: with SMTP id v15mr2827451otk.121.1607538897983;
        Wed, 09 Dec 2020 10:34:57 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g6sm541230otk.40.2020.12.09.10.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 10:34:56 -0800 (PST)
Received: (nullmailer pid 730369 invoked by uid 1000);
        Wed, 09 Dec 2020 18:34:55 -0000
Date:   Wed, 9 Dec 2020 12:34:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Michael Tretter <m.tretter@pengutronix.de>
Cc:     Michal Simek <michal.simek@xilinx.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check
 warnings
Message-ID: <20201209183455.GA708305@robh.at.kernel.org>
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
 <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com>
 <20201203084804.GA21858@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201203084804.GA21858@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 03, 2020 at 09:48:04AM +0100, Michael Tretter wrote:
> On Thu, 03 Dec 2020 08:49:01 +0100, Michal Simek wrote:
> > On 02. 12. 20 10:05, Michael Tretter wrote:
> > > When running make dt_binding_check, the xlnx,vcu-settings binding
> > > triggers the following two warnings:
> > > 
> > > 	'additionalProperties' is a required property
> > > 
> > > 	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
> > > 
> > > Fix the binding and make the checker happy.
> > > 
> > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > ---
> > > 
> > > Hi,
> > > 
> > > The xlnx,vcu-settings binding was reviewed [0] before the bot started to
> > > run automated tests on the device tree bindings, but now produces some
> > > warnings. The original patch that introduces the binding is still in
> > > Michal's tree and I am not entirely sure how to handle it, but here is a
> > > patch.
> > > 
> > > Michael
> > > 
> > > [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
> > > ---
> > >  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
> > >  1 file changed, 12 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > > index 378d0ced43c8..cb245f400287 100644
> > > --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > > +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> > > @@ -26,9 +26,18 @@ required:
> > >    - compatible
> > >    - reg
> > >  
> > > +additionalProperties: false
> > > +
> > >  examples:
> > >    - |
> > > -    xlnx_vcu: vcu@a0041000 {
> > > -          compatible = "xlnx,vcu-settings", "syscon";
> > > -          reg = <0x0 0xa0041000 0x0 0x1000>;
> > > +    fpga {
> > > +        #address-cells = <2>;
> > > +        #size-cells = <2>;
> > > +
> > > +        xlnx_vcu: vcu@a0041000 {
> > > +            compatible = "xlnx,vcu-settings", "syscon";
> > > +            reg = <0x0 0xa0041000 0x0 0x1000>;
> > > +        };
> > 
> > IIRC we had been discussing this recently and Rob wanted to have just
> > 1/1 mapping here.
> > 
> > Take a look at 0db958b689ca9.
> 
> Thanks for the pointer.
> 
> Rob: Is there some kind of rule, when to use a 1/1 mapping and when to add a
> bus with more cells? I still see several examples that add a bus with 2 cells.
> I assume that they more or less legacy, but I didn't find any discussion going
> beyond the commit description of 0db958b689ca9, which "just" fixes the
> warnings.
> 
> I will send a v2, but I'd like to understand the rationale for having the 1/1
> mapping first.

Simplifies the example is all.

This one is fine as-is.

Reviewed-by: Rob Herring <robh@kernel.org>
