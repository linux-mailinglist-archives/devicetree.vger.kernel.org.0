Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEDE83A4117
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 13:15:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231657AbhFKLRt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 07:17:49 -0400
Received: from foss.arm.com ([217.140.110.172]:55460 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232005AbhFKLRc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 07:17:32 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB6761FB;
        Fri, 11 Jun 2021 04:15:34 -0700 (PDT)
Received: from bogus (unknown [10.57.73.170])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8B3B3F694;
        Fri, 11 Jun 2021 04:15:33 -0700 (PDT)
Date:   Fri, 11 Jun 2021 12:15:14 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert ARM VIC to
 json-schema
Message-ID: <20210611111514.a7bojlroqwgly5az@bogus>
References: <20210610135717.2782793-1-sudeep.holla@arm.com>
 <CACRpkdZrdY5Of_m_cwsL5YjrKrdYV9DPYoNmbXsySfC0gDzBhA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZrdY5Of_m_cwsL5YjrKrdYV9DPYoNmbXsySfC0gDzBhA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 10, 2021 at 10:01:35PM +0200, Linus Walleij wrote:
> Hi Sudeep,
> 
> thanks for looking into this!
> 
> On Thu, Jun 10, 2021 at 3:57 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> > Convert the ARM VIC binding document to DT schema format using
> > json-schema.
> >
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Rob Herring <robh@kernel.org>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: arm,pl190-vic
> > +      - const: arm,pl192-vic
> 
> Please also add the legacy compatible arm,versatile-vic
> used in arch/arm/boot/dts/versatile-ab.dts
> (Missing in the old bindings, but used in DTS and drivers.)
>

Right, even arch/arm/boot/dts/ste-nomadik-stn8815.dtsi uses it, now pushed v2

> With that added:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 


Thanks.

-- 
Regards,
Sudeep
