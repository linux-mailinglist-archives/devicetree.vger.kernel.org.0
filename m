Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71E52FAD24
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 23:14:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387840AbhARWNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 17:13:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387827AbhARWNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 17:13:09 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E46C061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 14:12:28 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id z1so14097380ybr.4
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 14:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FaHbxXuwER2O3nBPLqid/e1s175Jmp9RRwwfzg3SJhU=;
        b=GTFPoZ2Gt8Gtrwd34j7bYZ0JqPIv09WvAqLAQlrRDBiKHpFEcrmTDhGl2SSQg2F2/Z
         b0xL8EfCS447YyGVsfC7dJqo+m3qmsWbajYQEFjWJFm/BEL0MCHR4GKbpmrqYn3Izn98
         K54rU8Mcur0YFDWHRXt0+7S1yzxC14ir18b8eHwznK6UyY2lMuLJQoEuPqqPr/XOii3/
         QejFBdcybrhQlfvwJs+TdPsbu9vB0sRVDRdtwXxVyLAsHKhhUBcz5I7kVudHXOFsnth8
         B3VVuZRlHBjqEYLh/pwW/VJMvYHbhkEeDKKc30noGMnYAhpsxwRpVFjidV4p3yRorm2d
         3IoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FaHbxXuwER2O3nBPLqid/e1s175Jmp9RRwwfzg3SJhU=;
        b=RFBXfRzYtwMYT5WuQn1DGzYn+PR5XTdS2PwJcDgdVccBe8MJDmyeoLQFc/IXR+xS0a
         aDQwftGcdWaTRvLL2Kw9AjYObcCuuDRxomGk2SK8YfeXwXYiY/s6Ic4gbzKpKA8frjzZ
         JzWZQYY3T13DFcyOayDzKkojZsH8ochRai2Ifzxil3C7VtV38uJNN5QO70uEI3Y+JJS2
         bnmPEgJc6inaQrFXM/j0Vbtzk/BE23RycgCktMSMu5y22jkrhEczKWvKowp5JvLdOVIQ
         Vpzc5RZvF8lCUro6r63BQbZTBfHASDQvW/XPKyytgwj7RvL0P1SYQWIOlbEc+KqwQaCF
         5sMQ==
X-Gm-Message-State: AOAM530wTZp56zP8fuOg/dlxhx7zqjyzM/xSSi471CjYlOrEBp40+hP9
        F2ddDmk1UVM3Aulq651FbFPZdZ+WTxbTn+b+gfEOkw==
X-Google-Smtp-Source: ABdhPJwSeF9+i5o7KM4nSo55gYL8cquLutstTwhy1jmw/db+Pj8LFhfBWvY5Tx6JMHYUNcjo2xoAuOp+GslH6Bu/JWk=
X-Received: by 2002:a25:77d4:: with SMTP id s203mr1994972ybc.32.1611007947513;
 Mon, 18 Jan 2021 14:12:27 -0800 (PST)
MIME-Version: 1.0
References: <20210115210159.3090203-1-saravanak@google.com> <CACRpkdYrzaFuWkbTe7Fmos4Bk4Ojt6wbqayDjyrS7sf98P-Rbg@mail.gmail.com>
In-Reply-To: <CACRpkdYrzaFuWkbTe7Fmos4Bk4Ojt6wbqayDjyrS7sf98P-Rbg@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 18 Jan 2021 14:11:51 -0800
Message-ID: <CAGETcx9t3R-k0ttiaBUqcveqnXMX75xuTcKPSo9J6WJOfgSP8w@mail.gmail.com>
Subject: Re: [PATCH v1] of: property: Add fw_devlink support for "gpio" and
 "gpios" binding
To:     Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 18, 2021 at 7:32 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Jan 15, 2021 at 10:02 PM Saravana Kannan <saravanak@google.com> wrote:
>
> > To provide backward compatibility for boards that use deprecated DT
> > bindings, we need to add fw_devlink support for "gpio" and "gpios".
> >
> > Cc: linux-tegra <linux-tegra@vger.kernel.org>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Fixes: e590474768f1 ("driver core: Set fw_devlink=on by default")
> > Tested-by: Jon Hunter <jonathanh@nvidia.com>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
>
> "gpios" is a valid non legacy property I think.

I checked :) Quoting the documentation [1]:
"While a non-existent <name> is considered valid for compatibility
reasons (resolving to the "gpios" property), it is not allowed for new
bindings."

[1] - https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/gpio/gpio.txt#n8

> Anyways:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks!

Greg/Rob,

Can we pull this into driver-core-next please? It fixes issues on some
boards with fw_devlink=on.

-Saravana
