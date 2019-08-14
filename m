Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B572C8CEA5
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 10:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726803AbfHNIlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 04:41:31 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:44966 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726512AbfHNIlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 04:41:31 -0400
Received: by mail-lf1-f68.google.com with SMTP id v16so7033772lfg.11
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 01:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KzpALMQhsAYiuMs6y6iJLV3dLZWeIJlGmnisMykIAis=;
        b=r2pSn+KrIj0p/r1Jh1Qa8oRX30gNZzgGkBpwKkDEJNczG7E+VnEvwitjkTtXDi+iiY
         4quGEaWmppl+rGwEtCxpw/UZ3hBqlm+OVntmnenzCFo/I6+LXJxNE7F5nzZUYPGfUZiM
         xiG/6RYIi+mV1854OvRiWUXHkXNDPIzy+8pHNKtKmSgN6mwGISjCmBFoX1/xBh582HPF
         0rE/0WduaDy2igRu2LN3eXNSIweY7DEhtBe8nqhlALJP8Xv3yu9U1R/0vGBigFAmvlLa
         PAsFJPhwguzevp0v5g/p6gMTOOiq08hxCCU/MhScC+UZSJVOlkN0kzs35xo7Oo+fvBp+
         LgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KzpALMQhsAYiuMs6y6iJLV3dLZWeIJlGmnisMykIAis=;
        b=JygqHNDO0VRqq/4gYwOn2cHDZQRBNIwSjeY9VNDn4Su6c7iBuIRRx0WEWWKLtDkVLw
         HOirwhhnma60khwXofC9UJS/7XBhQPLSfOiMRrymegV9tMaMlYg2006OJzjvonnbaMpg
         RNPa5LBes0NcYKjBgACXoJc2qmdscPp/xWwtNYWStnSO87RBu2c0Rhgb/iqVzsXGhThJ
         me0eKz4ihIFPltSG4tw9cq/TbEeMBTM6VKhDPBDLZtqFcUmMycFjQs1yr4D+SaQl4HNf
         F0BbLuzvVAVzLCH+U4i3UpzEYKWkymo+VQ1zxqCb7mtZMu5helQl9dLLiATwpscDin5v
         OQFQ==
X-Gm-Message-State: APjAAAWUFLo+lAL9Q3G9LOki4GHUHiU6uPbH6L8rR9+CeaCk+S9d+q53
        gh1mrXodys8JQ+eSkZx3k6K4OJu3RhhNAXd6szKAZA==
X-Google-Smtp-Source: APXvYqx5nqnXeVYMCMOMXqQ9fV6cH2bSPFPCrhICg/SdR9VyEVww1xueQTgGw2t8u9djOnijC0ljUID4vf6sSeDgNCQ=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr22886155lfq.152.1565772089303;
 Wed, 14 Aug 2019 01:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au> <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com> <20190812101504.GF26727@dell>
In-Reply-To: <20190812101504.GF26727@dell>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Aug 2019 10:41:17 +0200
Message-ID: <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated compatibles
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 12, 2019 at 12:15 PM Lee Jones <lee.jones@linaro.org> wrote:
> On Mon, 05 Aug 2019, Linus Walleij wrote:
>
> > On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > > Guide readers away from using the aspeed,g[45].* compatible patterns.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > Patch applied to the pinctrl tree.
>
> With my Ack?

Sorry no. :( Was I too trigger-happy?

Usually I take Rob's ACK as authoritative for anything under
Documentation/devicetree but if you have concerns about the
patch from an MFD point of view I will revert it pending further
discussion.

Yours,
Linus Walleij
