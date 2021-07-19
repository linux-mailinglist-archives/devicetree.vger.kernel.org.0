Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20A583CF077
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 02:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240141AbhGSXXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 19:23:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441867AbhGSWN7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 18:13:59 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D96BC0613A0
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:48:59 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id u14so28635790ljh.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=clJFZ3+y571/iU3qKTY2cal9pBBnOS08+s8NT5Lf6Mg=;
        b=B5IJBsY4NFiW4qm/7A8bZLYcoIvsewmI0z7GhAQryRYzNJZABABIoNxrlquBBFe7ZJ
         ZOGWZVvKplfNlxfLY3rqHqAZUG0dGxAQuUpCdpen3VMcwZs3M8paUdYsSeqR1//cCz6A
         t5Z4mRzUmII28KE5l0RFCzjYucDGouGPRzNDnTtIBmxRQNk1r5f1/dlYL+9UsSUa1M7w
         J1aznW4UN6ioWUUvq9N73xVeFeNjyhOS2lndQ94bNNPYfHjGtu1u0ob2b1NoFmE+kbtc
         3kxWT1IPpncJn5OCxXU1+PsAeSNRoLYEWBUr9MgX0Ce0vNOSKl1gIZN13rMqHX8YqUIO
         mlWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=clJFZ3+y571/iU3qKTY2cal9pBBnOS08+s8NT5Lf6Mg=;
        b=oPEnLhz7DFQPCI61Jq26mfdtSzIUW8EAzDCexA2q9g9ZA4WO5tuvCDhYh0RNt8bmSs
         Fy+Olw7GL6zYe4vKRz75NXW0z8iu4CBhMThFV+HRGLhPg7izkWVCv3AjggAcbrdYNCJH
         iR1hLq2t75pRViO7kxa7/FIQoCX9daoq20rU2u8PYqerp/6tlNXy6CSLoXhxL9R3ze0h
         mybVggD2hmu3qJQQ+7CRdpZ8Jq0ZUtbQTFniZLoFC6hTDk39mBfAAwASyPk6W490kxuq
         dCCaY1XDi2lSTmI9phoQLLENK7ZM5f1DGCUJsWNvJm5ZlKPRrcM+pB8NiSXZ0Qn9xyEo
         5itA==
X-Gm-Message-State: AOAM5325sT2IyTRnzBkdG14uTeIzBsBM2tTTzmMyOkF1gLaKHcC0NUTx
        2rtHeh+vMA7gqOCBA901gsgLFZfYf1KhZWo0S7lVLw==
X-Google-Smtp-Source: ABdhPJwlV2dyDQNN/9tYfaNUDU77aYKgbX96W6QwUIRTaS0LtsXo0YuOZn6QIRp5CbFC2ordzwhkBGdSLPk+0XQxNcA=
X-Received: by 2002:a05:651c:169a:: with SMTP id bd26mr24077393ljb.368.1626734937976;
 Mon, 19 Jul 2021 15:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210717001638.1292554-1-linus.walleij@linaro.org> <20210719151833.GA1908766@robh.at.kernel.org>
In-Reply-To: <20210719151833.GA1908766@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 20 Jul 2021 00:48:46 +0200
Message-ID: <CACRpkdbmdd9TuVD-Lanme77-0XKg0up3jrXeisYNR4p9EL=9kQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
To:     Rob Herring <robh@kernel.org>
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

On Mon, Jul 19, 2021 at 5:18 PM Rob Herring <robh@kernel.org> wrote:

> > +patternProperties:
> > +  "^.*@[0-7],[0-9a-f]+$":
> > +    description: Devices attached to chip selects are represented as
> > +      subnodes.
> > +    type: object
> > +
> > +    properties:
> > +      intel,ixp4xx-eb-t1:
> > +        description: Address timing, extend address phase with n cycles.
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        maximum: 3

(...)

> > +    unevaluatedProperties: false
>
> This will cause failures when implemented. The problem is this won't
> allow any other child node properties as this schema and the device
> schema are evaluated independently. The only way I see to solve this is
> the child node schemas have to include some 'bus properties' schema
> which includes all possible bus controller properties. There's been a
> recent patch set doing this for SPI. At least here, I think the number
> of different child devices on parallel expansion buses are limited.
>
> So spliting this to 2 schema files would be the first step. Minimally,
> just drop unevaluatedProperties.

SPI upstream simply uses

additionalProperties: true

is that acceptable for now?

Yours,
Linus Walleij
