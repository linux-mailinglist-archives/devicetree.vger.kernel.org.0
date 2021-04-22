Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7139368605
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 19:33:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238438AbhDVReJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 13:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238434AbhDVReH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 13:34:07 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1356FC06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 10:33:31 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 4so13534237lfp.11
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EmZzYuA5lLhN6Q04O2dT8pms2/bViIEjizN4YCKY0XM=;
        b=cgEGbITZzy+BxquigBKZs0UUJyVChMF0KF0T4wlq4HTjjxW1iIy9WbftAdhiIHiyNa
         AF1SHNPHWYUTGynxdEx8EmaR/HrBDfizJzH60j+RW1YZlwTeLDO8Eg+RG2hUynlreXjC
         tB/AznD9HYDojb8zRZVOzfm5//6osr/J7CnQdDqLh+vbwfB+55/xZ6YngIMt7LaLe/jC
         RhBP1fB6jSD4evZs5n3friPblVxW+U4jJbY0zLj/RuYl/WjpPLBYZViUJ9rFWUNN7a/v
         BGgU8LAFq93xHgSW+SDA6YB6UkYzoPNK9eH4r6WYY24udHYZ/ALlyW/vC8WN6wPMVY6f
         35Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EmZzYuA5lLhN6Q04O2dT8pms2/bViIEjizN4YCKY0XM=;
        b=ESG1xJ7gIlYc2UbFj4ZE2cUiGUBIgXg19pgUgd7vYrc6Uo66gRcxyEPfNsuNqXxMyD
         ZCVgDWbjXCLjaGj2Fq85ADPvV2oRel0Nojj56FuPeuxHVgY92gijIYzh0X1F3T8fYs9j
         +aiyO/Oazax0BhNM8QYrIOClqEgekFZcimppg4+666SLnciSDoJlfy6JgUxIYhx52KU3
         QGs+2WgUlS6555SPYAAzZjQqG4rND+kdn6EI6Ti4B02HoQxDmxMNquksxeoOuQ4jup/k
         g3KzxqzasTDQRF/VkItFPI3g5aEokxDLurza9nsCAsd/v22SVKRsAXdHXNeAlglvEKmC
         xbKQ==
X-Gm-Message-State: AOAM533mduMBC4+0XJvKYnfirm0b1YthpSqVlIjhjSbUlKnw8YckC4tS
        jtetjSYFNoz+3l1JEkei1/KjNZOPruMyxnzjw1rWXA==
X-Google-Smtp-Source: ABdhPJyy+kRTcck6bRTWzbMJwCftmrh+NAYIdQBZCZrdyjsd32tRpEjhRE4JdZA428RxP5LBpXdFDXgTG1QrvfjGiDc=
X-Received: by 2002:a19:c218:: with SMTP id l24mr3370921lfc.529.1619112809574;
 Thu, 22 Apr 2021 10:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210419225133.2005360-1-linus.walleij@linaro.org>
 <YH4tsFtGJUMf2BFS@lunn.ch> <CACRpkdbppvaNUXE9GD_UXDrB8SJA5qv7wrQ1dj5E4ySU_6bG7w@mail.gmail.com>
 <YIGco30TpBiyZLgD@lunn.ch>
In-Reply-To: <YIGco30TpBiyZLgD@lunn.ch>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 22 Apr 2021 19:33:17 +0200
Message-ID: <CACRpkdZXcT87KStxYuMr=-rOYwhqadVu45r0xMThLWfqG4ejtA@mail.gmail.com>
Subject: Re: [PATCH 1/3] net: ethernet: ixp4xx: Add DT bindings
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Rob Herring <robh+dt@kernel.org>, netdev <netdev@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Zoltan HERPAI <wigyori@uid0.hu>,
        Raylynn Knight <rayknight@me.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 22, 2021 at 5:56 PM Andrew Lunn <andrew@lunn.ch> wrote:
> On Thu, Apr 22, 2021 at 05:39:07PM +0200, Linus Walleij wrote:
> > On Tue, Apr 20, 2021 at 3:26 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > > +      mdio {
> > > > +        #address-cells = <1>;
> > > > +        #size-cells = <0>;
> > > > +        phy1: phy@1 {
> > > > +          #phy-cells = <0>;
> > >
> > > Hi Linus
> > >
> > > phy-cells is not part of the Ethernet PHY binding.
> >
> > Nevertheless:
> >
> >   CHECK   Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.example.dt.yaml
> > /var/linus/linux-nomadik/build-ixp4/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.example.dt.yaml:
> > phy@1: '#phy-cells' is a required property
> >     From schema:
> > /home/linus/.local/lib/python3.9/site-packages/dtschema/schemas/phy/phy-provider.yaml
> >
> > It has been hardcoded as required into the dtschema python package.
> > Looks like this:
> >
> > properties:
> >   $nodename:
> >     pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
> >
> >   "#phy-cells": true
> >
> >   phy-supply: true
> >
> > required:
> >   - "#phy-cells"
> >
> > additionalProperties: true
> >
> > If this is wrong I bet Rob needs to hear about it.
>
> That is the wrong sort of PHY. That is a generic PHY, not a PHY, aka
> Ethernet PHY.

It is a bit confusing :D not to mention that the term
"phy" or "physical interface" as I suppose it is meant to
be understood is a bit ambiguous to begin with.

> Maybe you need to change the label to ethernet-phy ?

Yeah that works, I'll do that.

Yours,
Linus Walleij
