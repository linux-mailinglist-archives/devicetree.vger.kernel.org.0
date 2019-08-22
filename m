Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E114999312
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 14:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726894AbfHVMOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 08:14:54 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:41262 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733203AbfHVMOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 08:14:54 -0400
Received: by mail-vk1-f193.google.com with SMTP id w20so1492564vkd.8
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=001ZjFQMxb/zCLk3zcyFqNqBIiCvp+5VqdO2trNiRjw=;
        b=rBGmCN2TSFf+woRq1U6/8fgdOQP55ndxj6XdO2EdMKOeGV2MrzU8rvwexXqn72Xj03
         3I8c//L8dMyqiq7nE5jvcTkI4B0Rx7q0EtsmX/2Txly9jCIZd67IEQR3P8FwpE8V6W7z
         mwvCR8G9OPcGTa1Ajb3KI7CPl5HDZbPsyHblwWWMZlR920QJ1MQiljgf68A6WiMzYKL5
         ZWH+8SZqMK3Z3Z8weGjBTh1dxKZVJpQB00Y1CPBOii/AhCl4uzkCyBotPMpyvY8X0PJ+
         uWvN0QpzLt2ack1QdKqeFGY5rKmZfI65PQ16PC1MYg/rHNriK/R+nUSHHC/SbdEksOn1
         y2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=001ZjFQMxb/zCLk3zcyFqNqBIiCvp+5VqdO2trNiRjw=;
        b=tapFNTS+6ZvNWu7AGNxyCdYplqik1tPK5CyCVOuLz4DJF9tWVWse7mYIqMuidgetfP
         771CI0cUUhARsgxdAj4iK8W0CORFav9G+bq9Q1zWL+gYakpWHR/oDqdjkpPqcsp6DP7f
         fgZ2Uwkx4/uRcMcw0Sen4jlvoEfh5CA6692HaYx4AUyQGQUpt0nBxf59ACHjb06kuhEG
         ItC3z6c4cyy/ys8uGf/4kCsFRus1+g0QYMP12O9ene5UfQJ6vieAT49u1vAZOkGjKXBo
         5z1UsGUKXugNDgbdzBwESSKbwWoNXN4tfyr8g4jnhJQ/jg7Vj+qn4YgSZZEz2PouNt2H
         Y6Xw==
X-Gm-Message-State: APjAAAV9PNcDuaSYen4Qb5bn83B+vkyWKEZNjUDzSsuFfv8CyDrW3VCQ
        /9q5yXTjmwdA3arR5CQHyfi+qpHFqQZZpUVy7W1Wvw==
X-Google-Smtp-Source: APXvYqwOUeGGRRhaJGbVZ+SG70B06PdKeEzkxHgHaunrpKDQKwl27GuCbI2yR22beKWFZus69SGWNY0cH93dmwthMeg=
X-Received: by 2002:a1f:5602:: with SMTP id k2mr9999325vkb.36.1566476093048;
 Thu, 22 Aug 2019 05:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003629.2974-1-andrew@aj.id.au> <20190807003629.2974-2-andrew@aj.id.au>
 <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
 <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com> <CAPDyKFrDPxFMm710Z25i-euOT2rrgCNXVa4na-fye0xamMXq_A@mail.gmail.com>
 <c78d4c45-477b-4078-b269-aec72571c8cd@www.fastmail.com>
In-Reply-To: <c78d4c45-477b-4078-b269-aec72571c8cd@www.fastmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 22 Aug 2019 14:14:16 +0200
Message-ID: <CAPDyKFrWMjaqv8z6HnmDn12c2SsjU6fEzjZesxj=nwbP9YRiPw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     Joel Stanley <joel@jms.id.au>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Ryan Chen <ryanchen.aspeed@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Aug 2019 at 13:55, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 22 Aug 2019, at 21:15, Ulf Hansson wrote:
> > On Thu, 15 Aug 2019 at 07:37, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > >
> > >
> > > On Thu, 15 Aug 2019, at 15:06, Joel Stanley wrote:
> > > > On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > > >
> > > > > The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> > > > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > > > data bus if only a single slot is enabled.
> > > > >
> > > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > >
> > > > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > > >
> > > > Two minor comments below.
> > > >
> > > > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > > > @@ -0,0 +1,105 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-or-later
> > > >
> > > > No "Copyright IBM" ?
> > >
> > > I'm going rogue.
> > >
> > > That reminds me I should chase up where we got to with the binding
> > > licensing.
> > >
> > > >
> > > > > +%YAML 1.2
> > > > > +---
> > > >
> > > > > +
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/clock/aspeed-clock.h>
> > > > > +    sdc@1e740000 {
> > > > > +            compatible = "aspeed,ast2500-sd-controller";
> > > > > +            reg = <0x1e740000 0x100>;
> > > > > +            #address-cells = <1>;
> > > > > +            #size-cells = <1>;
> > > > > +            ranges = <0 0x1e740000 0x10000>;
> > > >
> > > > According to the datasheet this could be 0x20000. It does not matter
> > > > though, as there's nothing in it past 0x300.
> > >
> > > Good catch.
> > >
> >
> > Are you planning on sending a v6 or you want me to apply this and you
> > can post a patch on top?
>
> Yeah, sorry, I wasn't very clear there. I was hoping just to do a follow-up
> patch with the cleanups if you're okay with that?

That's fine. V5 applied for next, thanks!

Kind regards
Uffe
