Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B34BB4CC60D
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 20:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233104AbiCCTfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 14:35:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbiCCTfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 14:35:43 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21381F5401
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 11:34:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C6651B826D3
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 19:34:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57190C340F2
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 19:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646336094;
        bh=qZLIT90F4XcplM2Lo3kJ4q65/znkvPWFcOp2eDwbEIs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=O8pgv7tGknqom+09KiuHD5GRcYP/ohbBHnXPelng8Yi0MmNgyuNCc8GkwVCINEy7P
         HhDeTtYhnm98tBJYI0e7FYR4OPj1mE/7nlJDO0RLz7Z7PghGTJvJN5cYn6He6nmemH
         6SXsaoJwKkL2Ees+CBz7ah+TrQyFuJ3ecLeqwD3tbMLxst3tk2bGFYKJz7K5MBpavY
         KgKsWaVfv1UASAmeg/OGip1yhG0cdl41ogh2gYsbPqHEg6Pl5p/n7Zr0+bLdob4y0Q
         YPILwxzcPQfOtJlHG486I4nH3sZZYSZGsEWYXeVQjWFPpZvNgXtuVKjtJ7lf9BzLZB
         KGzlM4rSEqEQw==
Received: by mail-ej1-f44.google.com with SMTP id bg10so12899748ejb.4
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 11:34:54 -0800 (PST)
X-Gm-Message-State: AOAM533j4QbsvuZQFdU+JkkWW1JQMzy/BJlaTzzKHdgN6DiYSImPixsM
        Ap33PqXIT0PkLgiuBunwOgY4nb6fqSM1tcvbXw==
X-Google-Smtp-Source: ABdhPJx0hlwzgKGdlH4tw49VP50LJrLmoRLBkcohsBvqowt5gK8H0KLMAqPTBTvqX8a4DBd0nJg6hrqm54G1z2AvljU=
X-Received: by 2002:a17:906:181a:b0:6d0:ebf5:c064 with SMTP id
 v26-20020a170906181a00b006d0ebf5c064mr27654515eje.82.1646336092554; Thu, 03
 Mar 2022 11:34:52 -0800 (PST)
MIME-Version: 1.0
References: <20220302051056.678367-1-joel@jms.id.au> <Yh+w7+CdtYYJoRkh@robh.at.kernel.org>
In-Reply-To: <Yh+w7+CdtYYJoRkh@robh.at.kernel.org>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 3 Mar 2022 13:34:40 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+zDTfZaYf3H98rub8e-fSmtFFQ_ok=cQ3bqPojx0_Ckg@mail.gmail.com>
Message-ID: <CAL_Jsq+zDTfZaYf3H98rub8e-fSmtFFQ_ok=cQ3bqPojx0_Ckg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpu: Convert aspeed-gfx bindings to yaml
To:     Joel Stanley <joel@jms.id.au>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Tommy Haung <tommy_huang@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 2, 2022 at 12:01 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 02, 2022 at 03:40:56PM +1030, Joel Stanley wrote:
> > Convert the bindings to yaml and add the ast2600 compatible string.
> >
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
> >  .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
> >  2 files changed, 69 insertions(+), 41 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
>
> Applied, thanks.

Uggg, now dropped...

What's Documentation/devicetree/bindings/mfd/aspeed-gfx.txt and also
the example in Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml?
Please sort those out.

Rob
