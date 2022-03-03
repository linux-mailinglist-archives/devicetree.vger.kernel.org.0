Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42B284CC826
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 22:35:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236564AbiCCVgh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 16:36:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236555AbiCCVgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 16:36:35 -0500
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C57A16DAF1
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 13:35:49 -0800 (PST)
Received: by mail-qt1-x82a.google.com with SMTP id c4so5849388qtx.1
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 13:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L1Q9sdnTqYlZlLU7twPdWgz9bcNxdvX07ZYQ1tXE7K4=;
        b=d4iSdfFLz79BntOhrp2p23HpQHlgolCX34pjwXD+Bt64bl6GqMOLNaU7D0XXuJYsI0
         +yY46c+Q+80iklOBa6DgVfWb+h2jyvOtLH4TaaK3dxZ1SEeoAtTj4zw2Ug4CQR1dN11F
         Ws8OWXekp6+7uJFhnPWiATWP6JI95i0+Tke3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L1Q9sdnTqYlZlLU7twPdWgz9bcNxdvX07ZYQ1tXE7K4=;
        b=TQmbo82YoHUB+PYHBNKKhFSiLeF6rZ91B+UCDyUSbhFmDUDrgceg+Pvu7ad2UPm+cC
         1HlilQltfhQccQCJhw8G4MTuTiknEPEz07lhsD8b1FF4QX0BhcoyEOCfyTyUJ/Atk10M
         9GjXcMDg3LOcANJe7+4IgeoL6JILJsIxnsDbo6tcHN4VayDRCjHEsra+UrwRhcogh1kw
         QvkncrVVK0LTDzd/7KvzYNjL9vJrSkDmdzDgSxKLYn9BZCR5KDB6n/0oqmqG8kmo7OS8
         XQTpCRdIFQPv6u2l8XBBlTgpvOlM9eftUtDSHi3dzSjDO9pHR1v30v+JDP7S7oJvpXJw
         ENiQ==
X-Gm-Message-State: AOAM5327PgHr60eQuEj1UBvup55jCu7LaDsgFiEn118ZhteWL1itVt0m
        no8na4y4hII+qUyopiJIGHndww87t5TlfuCo5Jk=
X-Google-Smtp-Source: ABdhPJx1dtBQ1EOQRQQ2DfFAxZ+hxlYYPAxznboh4jmMsmSM2GTXYrz2DJR6SYcMuO7VVOrl354ZqMz2TfqnaZuFIUs=
X-Received: by 2002:ac8:5b82:0:b0:2cf:232d:b1f8 with SMTP id
 a2-20020ac85b82000000b002cf232db1f8mr29367893qta.58.1646343348365; Thu, 03
 Mar 2022 13:35:48 -0800 (PST)
MIME-Version: 1.0
References: <20220302051056.678367-1-joel@jms.id.au> <Yh+w7+CdtYYJoRkh@robh.at.kernel.org>
 <CAL_Jsq+zDTfZaYf3H98rub8e-fSmtFFQ_ok=cQ3bqPojx0_Ckg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+zDTfZaYf3H98rub8e-fSmtFFQ_ok=cQ3bqPojx0_Ckg@mail.gmail.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Thu, 3 Mar 2022 21:35:36 +0000
Message-ID: <CACPK8XfYRHTPz50wgNp7Q0Pi4rKVag9-bLD7kHcyKrHwHdKW7A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpu: Convert aspeed-gfx bindings to yaml
To:     Rob Herring <robh@kernel.org>, Andrew Jeffery <andrew@aj.id.au>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Tommy Haung <tommy_huang@aspeedtech.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 3 Mar 2022 at 19:34, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 2, 2022 at 12:01 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, Mar 02, 2022 at 03:40:56PM +1030, Joel Stanley wrote:
> > > Convert the bindings to yaml and add the ast2600 compatible string.
> > >
> > > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > > ---
> > >  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
> > >  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
> > >  2 files changed, 69 insertions(+), 41 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
> >
> > Applied, thanks.
>
> Uggg, now dropped...
>
> What's Documentation/devicetree/bindings/mfd/aspeed-gfx.txt and also
> the example in Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml?
> Please sort those out.

I think the aspeed-gfx.txt can be deleted. And the example in the
pinctrl bindings needs to be updated with the required properties.

Andrew, can you clarify what's going on with those other files?
