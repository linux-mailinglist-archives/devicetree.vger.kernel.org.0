Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 02540CC4A4
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 23:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730101AbfJDVM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 17:12:57 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:34839 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725826AbfJDVM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 17:12:56 -0400
Received: by mail-lj1-f193.google.com with SMTP id m7so7877301lji.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 14:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a1Da9827hi9/wbo3EAdgAkbnWQLG/mFfM9TO9uvcqwE=;
        b=KlNygbH1zENjKcNNSgMRLwKHCOGFoMzqAzuQQx9tl7N4+1tVL59+OACoSZIqgNt7+u
         k7quO4ksG6r7elDNUd/3m128bn+TVUC09KOvympjCO6spkPH+SiEh+/4KEBZefHU0tij
         85tt68DftWXkNAAbtogwLqFs+OYV23SSQlXE4KmRWnpXOS9Z1OJ7cC5Bd4dKfNBrbagZ
         OlbMn4PTkUaQToAqsKMIoI2Y9enqsFO53iarbwxVddNyIQdNf8aXgsor4hVv2lqldmXX
         d5da/p/mKSfoHWurhEbCiudKbkYgptlBbl2B2d61ZSCNwFgCcGVGTT/kYc7mgnHCRxV/
         m68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a1Da9827hi9/wbo3EAdgAkbnWQLG/mFfM9TO9uvcqwE=;
        b=DsShxYWghEOoc4N3mF55KHS3DshaP0lVlrWkVQAyITce9gAzypcL0YtJVQRf6WpTVT
         zjiIHmD1xxksuo8GgWbqqQFQWAdBn/0DDrprHmYufekjV9U39RlNYR0mk30VAcwnJIW1
         hTOPYXA6rZMDM07EKCWTNu77CrHsDywcnmwa9Jy9gBLmKjROAnz2yHlHX8XgEuB/06QE
         MkAoV6u/kH6eFlPs9H1C6wA59ZkutlSACTRvs7RwbAnPXnF/vB1DA3zv0qbVwjqb0Ps0
         iaTR3Je+OtutW7T/mJAbXcilinA9DIQYpM8OJ23DSftoqvOzfoeCNzqgbNtjtrv28AL1
         928g==
X-Gm-Message-State: APjAAAUrFKXZEhjJqfv+KbbpYdALVKMCyAPJ+NY3LcKvBqt8kIQ4eXaj
        FkwavAibfa5NVW8ZP/r8DfMZMFMzjWOvuD4W7SFgLa5NTbE=
X-Google-Smtp-Source: APXvYqyKcRPj97UgiYipb3Wl1ZHS6B7yy/aWMzuW2KfQHGn4WCcJqQrnvFVQvUYZvljZcePoHULd5Po9U65cqe8PuP8=
X-Received: by 2002:a2e:9094:: with SMTP id l20mr11099995ljg.35.1570223574942;
 Fri, 04 Oct 2019 14:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190920153622.14616-1-robh@kernel.org>
In-Reply-To: <20190920153622.14616-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Oct 2019 23:12:43 +0200
Message-ID: <CACRpkdaY8G6LT-FSr7BQrGyskBTXqMmhooKBpHDVMBuv7uAQeQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm: dts: integratorap: Remove top level dma-ranges
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 20, 2019 at 5:36 PM Rob Herring <robh@kernel.org> wrote:

> 'dma-ranges' at the top level doesn't make sense. 'dma-ranges' implies
> there is a parent bus node with '#address-cells' and '#size-cells' which
> is impossible here.
>
> Likely this translation needs to be moved down to sub-nodes that need
> it.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied! I'll get this to ARM SoC with some
other stuff.

Yours,
Linus Walleij
