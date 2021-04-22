Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38E64368381
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 17:39:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236333AbhDVPj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 11:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbhDVPj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 11:39:56 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED259C06138B
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 08:39:21 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id m7so41544639ljp.10
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 08:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=plUAjDarJDyekWMgy0FkCFDFLzZZtjqWEzp24FU/oGc=;
        b=GVH7LtAe5IDyGNM32nkxm/Tgkc6AEW7bnz47XlEd306jLo9Sz+3otiD153LTZCS6hU
         zlvadG+MGKUqUToThdUM+Ssx2R667Egb2lM/Va5QeINqdYBIidLxQL9pUdIuYsUSNa4J
         dqXhNm07FCyw6r5TAhCpqR7iyYiopZWLSKGSIRcg59kFbcOEh+/ULoZjHuDgRS0P3+Wb
         r7mjAM+y9oCpHaC3/98Rg/k3ORBAqR8u/120Gx/x98aqQmTZjC3oWr6wQJ6eh+K5YO+8
         DexZVNeifd2ofIyi2kMmTn8TBKrhaGjy+GFamuBSOMX+K/2DbiZfiJCroX/iyIuaR7y6
         /bkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=plUAjDarJDyekWMgy0FkCFDFLzZZtjqWEzp24FU/oGc=;
        b=ObO09TAHILBwBt9t6xlrJ1Dln9oHJHGGHg2e2BcOsKvAUice7k9h5ePxKmcUUrgblu
         NVlxoqngzbMhHrEiF2SEfdoZX2Nx8ruwhZUUudcnok5vlMtrj+bicI47AWm46fkHL2fZ
         xg90J3rL0yAdRHzTGXo9SoxHpw5yqcwoL3UImaLaaspSgHbdR88KEXOSElph+F/GnAtL
         IC7XoQ1afCGPmRctYSNKjrz3yl4X30qG2iZAclyWF1A00hvmBFRQh+U11JTqqJ5qUdYV
         n04zcGWE1NKMl8jxjjtDPrslUVM9QDLZFZiFRgabNIgG8M6w2tSjCcdMZymgFcXWlFD6
         J1OA==
X-Gm-Message-State: AOAM532+Rf65Tf9/QzqT8co0I1AfOu4os8gMEh7uweZeGKFtFNBOxUHV
        PnIyAlTiq44ZGn1juCP+qHyje2Z8t6EkWFY7LWlcBg==
X-Google-Smtp-Source: ABdhPJy+J6pn957FhOHwZjyk7gcCN1x7YgAp+VD5Efd7/IgYIAUbnOKSxezAgYN+dswKer5KxJuLbQCCFr6srLhrZpo=
X-Received: by 2002:a05:651c:c1:: with SMTP id 1mr2777078ljr.467.1619105959048;
 Thu, 22 Apr 2021 08:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210419225133.2005360-1-linus.walleij@linaro.org> <YH4tsFtGJUMf2BFS@lunn.ch>
In-Reply-To: <YH4tsFtGJUMf2BFS@lunn.ch>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 22 Apr 2021 17:39:07 +0200
Message-ID: <CACRpkdbppvaNUXE9GD_UXDrB8SJA5qv7wrQ1dj5E4ySU_6bG7w@mail.gmail.com>
Subject: Re: [PATCH 1/3] net: ethernet: ixp4xx: Add DT bindings
To:     Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>
Cc:     netdev <netdev@vger.kernel.org>,
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

On Tue, Apr 20, 2021 at 3:26 AM Andrew Lunn <andrew@lunn.ch> wrote:

> > +      mdio {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        phy1: phy@1 {
> > +          #phy-cells = <0>;
>
> Hi Linus
>
> phy-cells is not part of the Ethernet PHY binding.

Nevertheless:

  CHECK   Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.example.dt.yaml
/var/linus/linux-nomadik/build-ixp4/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.example.dt.yaml:
phy@1: '#phy-cells' is a required property
    From schema:
/home/linus/.local/lib/python3.9/site-packages/dtschema/schemas/phy/phy-provider.yaml

It has been hardcoded as required into the dtschema python package.
Looks like this:

properties:
  $nodename:
    pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"

  "#phy-cells": true

  phy-supply: true

required:
  - "#phy-cells"

additionalProperties: true

If this is wrong I bet Rob needs to hear about it.

Yours,
Linus Walleij
