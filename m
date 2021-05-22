Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAE7538D67A
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 18:26:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231255AbhEVQ1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 May 2021 12:27:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231249AbhEVQ1j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 May 2021 12:27:39 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB05C061574
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 09:26:14 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id v5so27677650ljg.12
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 09:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rl8MKdQm1hF4Pj3fGn2FqtssXOFAQ3M0rrxCjDANhbg=;
        b=H5VnACmHm/ZlcpQODGnnHHeY0Wtg1QeCfPJF6u0b1gReaeFh9jFa4V3fDl7eweT28l
         MCNIOTODZecoWbBC4WGCjwwnGV7zRoUFXWld8aS9UXsEx8dlzWSbrlxk6bsNqNXWZrdV
         U+7bn5mXtsr6TBNCRrMxfcR1mrVHWFjW+g7OY8u7CpkOWhQPfPAeBlnSCdoY3iDebbZh
         KYvAESyNFDqLpgob2xTRsVTwBeKAfhfO+eJzoBlmEdRQ76rT+b2eZc/RclbYWDmRC7vx
         Piigu/8Ah30/D8yl6rwiHWmB556Rloqd1s90yZics4v8nEKevDpGm6Va8B2kD+ca+ZfZ
         HEqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rl8MKdQm1hF4Pj3fGn2FqtssXOFAQ3M0rrxCjDANhbg=;
        b=NcZdC2tjl/WtsqdliDWO1/QiivV/wAVNepBD+PqUqXHYlMK1nK46EFqH7HCAjK41q8
         qLv3UpPOaqjqeOoigjacl8+iy9B1U/brsICVyVX/jawix0ePiyLq29bwN8HfQtEv4wE+
         H+2Bq1cm7Ac3nABqVPoyX/6uphovc0IWPB1RWdsT1w1zv+5b2WRWhQ4ggDnya0GvsZJ0
         DmqezxRZw5nBbh0gfcKjHP3jnZr6s2Yxxb24LBSf+43pwmHx8LYbkN5aFSYlT/28sMYJ
         uzFgCfd5Hqsr1IMVT+lSgbHeodGqxVaj2RhIq10u22jcTGMaBtvGL/MHYZSVKB6SOdDq
         sg6A==
X-Gm-Message-State: AOAM530xxsf87SPyiHlIDtVSBAglS5KRWL4s8UoYwaaS7joNoV45awIU
        nj1HaeITeZQ4rFLgQMbPbnEWGJWvaUEnFPujUHoahw==
X-Google-Smtp-Source: ABdhPJyVkb2nMSy7zh+9nt9halSnmCr3Lwxhb7Yi1JwRe4JlWj9po4ZEHWbfeM9s32BYQV/SCopfU2ADkGXqNiW3nRk=
X-Received: by 2002:a2e:22c3:: with SMTP id i186mr10814460lji.273.1621700772283;
 Sat, 22 May 2021 09:26:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210520223020.731925-1-linus.walleij@linaro.org> <20210521172749.GA33272@robh.at.kernel.org>
In-Reply-To: <20210521172749.GA33272@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 18:26:01 +0200
Message-ID: <CACRpkdbiKA13VoKLV2Dn-4irc4h5EULNmMptpTrKQDAHDaE4Ng@mail.gmail.com>
Subject: Re: [PATCH 2/3 v2] crypto: ixp4xx: Add DT bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Corentin Labbe <clabbe@baylibre.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Arnd Bergmann <arnd@arndb.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 7:27 PM Rob Herring <robh@kernel.org> wrote:

> > +  intel,npe:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 0
> > +    maximum: 3
> > +    description: phandle to the NPE this ethernet instance is using
>
> Not a phandle now.
>
> > +      and the instance to use in the second cell
>
> Maybe 'reg' works here? You can only have 1 thing you address though if
> you use reg here.

Good idea, I'll try that.

> How are other NPE instances used? Are you going to need to have a
> reference to them?

They are used by phandle from the combined ethernet and phy
instances. They are accelerators with firmware which have direct
access to the ethernet and phy port, and one of the NPE:s can
additionally contain a crypto engine.

Yours,
Linus Walleij
