Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E92E3CFFAD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 18:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbhGTQAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 12:00:06 -0400
Received: from mail.kernel.org ([198.145.29.99]:47290 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234655AbhGTP6l (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 20 Jul 2021 11:58:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79F6D6120F
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 16:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626799159;
        bh=gTXKuYWTIurzIQqTGR7d+wnzFvtpIuOkmCH1n2NqvKY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=MmoN+9sYQiL3qcy5sZyXFc4A8b8O4mIYQSyLDMyCtlwiG35UQVJ3LnLKsMAufh1y0
         HGyjnLsU9W7VngA/TFAMQA5b5KJouhPadTvp614+RrzYDv6/3/17GEzrQmNEgwkmM3
         g87X80HUAGOyS5UBqFUlqIJacccQXyFHeQExRQzFimVuJUzA4GGfTjHYdNzRXcm1lC
         zWgHnAOwnAmHIe7zO3p2m+VhBgPEtiVX1gg01sa4/0SEg6XCix/6qS7u9IHOdG4lXm
         B4YCvLjftxn15kK7vJO0sIxZFRtKR6RUuzfBQidEcEW68N5aevFFJ7ZheLYHM4kCAQ
         3ODa4HeDdJXCA==
Received: by mail-ed1-f54.google.com with SMTP id l1so29181816edr.11
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 09:39:19 -0700 (PDT)
X-Gm-Message-State: AOAM5325P6oHYYHwUdZdsV0atMtwoFs59xXxeGaGN/DxGDKjHeLXymLd
        0KcykoGyHMGmzGvhO1UgCZN4pMiCXFIUDRDvyQ==
X-Google-Smtp-Source: ABdhPJwIBcifE6NzK9FRUpGlqdwlYOSBR3Y10xUH7ncpjDZp6AuBiG/kFIh1H6beccYBKuapdkbMZFeUVE5P8eWzI9Q=
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr42400625edt.194.1626799158051;
 Tue, 20 Jul 2021 09:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210717001638.1292554-1-linus.walleij@linaro.org>
 <20210719151833.GA1908766@robh.at.kernel.org> <CACRpkdbmdd9TuVD-Lanme77-0XKg0up3jrXeisYNR4p9EL=9kQ@mail.gmail.com>
In-Reply-To: <CACRpkdbmdd9TuVD-Lanme77-0XKg0up3jrXeisYNR4p9EL=9kQ@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 20 Jul 2021 10:39:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLrw6Y+aMYRFF87E=X2tvyF_OUn7OkzLVUS7WvGAbehvA@mail.gmail.com>
Message-ID: <CAL_JsqLrw6Y+aMYRFF87E=X2tvyF_OUn7OkzLVUS7WvGAbehvA@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Marc Zyngier <maz@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 19, 2021 at 4:49 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Jul 19, 2021 at 5:18 PM Rob Herring <robh@kernel.org> wrote:
>
> > > +patternProperties:
> > > +  "^.*@[0-7],[0-9a-f]+$":
> > > +    description: Devices attached to chip selects are represented as
> > > +      subnodes.
> > > +    type: object
> > > +
> > > +    properties:
> > > +      intel,ixp4xx-eb-t1:
> > > +        description: Address timing, extend address phase with n cycles.
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +        maximum: 3
>
> (...)
>
> > > +    unevaluatedProperties: false
> >
> > This will cause failures when implemented. The problem is this won't
> > allow any other child node properties as this schema and the device
> > schema are evaluated independently. The only way I see to solve this is
> > the child node schemas have to include some 'bus properties' schema
> > which includes all possible bus controller properties. There's been a
> > recent patch set doing this for SPI. At least here, I think the number
> > of different child devices on parallel expansion buses are limited.
> >
> > So spliting this to 2 schema files would be the first step. Minimally,
> > just drop unevaluatedProperties.
>
> SPI upstream simply uses
>
> additionalProperties: true
>
> is that acceptable for now?

Yes. (That is the default)

Rob
