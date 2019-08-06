Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BFB9F832AC
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:27:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730006AbfHFN1E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:27:04 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:40963 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727259AbfHFN1D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:27:03 -0400
Received: by mail-qt1-f193.google.com with SMTP id d17so5551134qtj.8
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
        b=bzIMi9FXppLRWZzJ/iI9ZBXddD4PnneBE9NT/UoqebYxXA7CflUoPASr63iMdGtUBG
         Jwrbq1C0xSH9LIN5UdVNoHQCog70zRvlWfB7azMbuC+6Jn+2u15izE38bZomNxKHYJPA
         e8DiwPrQ+XaxM+rGs6hoXZuGMfRItnU+HM0zGMnAj7UUKF0SIAz09R+NnAKrerpSGXvo
         Kk7yVf5KECa3Iu4C3uvBpsJTFTpzygQX5eZxFqN9d+WbjlebcyTfbAy0i1SXHYMSpD4x
         KL3f86a0sMYIS5P9c8H8iy217oBZ4vytmlRRjpGAea0rJ5QL8OH8+CDi3octHWy+DIhO
         biYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QepbGpjxdz/Q+6YHfXtoICko0cdKUjwXX4QETCQHWj8=;
        b=TnkXa1Z2rAeOUPXz8aNDgCR/qm6vVEH1nQbWxNzK6n9h0uEiP6vtLZGThOkxazSiZ1
         05cwj7dP6JgXUJg4oNcyfowY2l+6JbQBPbhy7siQ6+pSJs26lvGFWsmmfpZCrNqU4l/U
         /v0FOBgB8zmaseNPA3q79HjsGyQyavLm3/aVEg6Lw2YTla23XCREXbnI7BjE3wwvHVfG
         en9zadN+uG9M/BKw3n19NKRQRpHnhV/DLeDiJYgrzlKykItUqMC3uaEAYqvO9pp2iCFo
         8oDN/2Uox3WlVBj2zifnKpQy9I4FEfjBAB3zMk/ua2o1p4dw6SvaP4t3K0bAM4xFSnBL
         mrwA==
X-Gm-Message-State: APjAAAWxnwIMtF1KKY02RbYYQEyqoUyr4uEMU4P8tNsO8aUeJ/c+gKYt
        yoD6uq39evOocVg5ClVLchPOQ1vguf+ZnaapXdmt5w==
X-Google-Smtp-Source: APXvYqxjReH9a5RdVKP44/CxV4GA6MJPPJv6EhlnpRpk8YLqn8A8+xTkel+Txw9cXO0QR33NnMHiklTBqawLAq053vE=
X-Received: by 2002:ac8:253d:: with SMTP id 58mr3074770qtm.40.1565098022510;
 Tue, 06 Aug 2019 06:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com> <1565077710.23705.21.camel@mhfsdcap03>
In-Reply-To: <1565077710.23705.21.camel@mhfsdcap03>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Aug 2019 15:26:50 +0200
Message-ID: <CACRpkdZ8LjG22QCA0tB+vMi7fPJNBiX-sL1+t0yZqcfRjMJF7Q@mail.gmail.com>
Subject: Re: [PATCH v8 00/11] add USB GPIO based connection detection driver
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Biju Das <biju.das@bp.renesas.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Li Jun <jun.li@nxp.com>,
        Badhri Jagan Sridharan <badhri@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Min Guo <min.guo@mediatek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-usb <linux-usb@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 6, 2019 at 9:48 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> On Mon, 2019-08-05 at 12:06 +0200, Linus Walleij wrote:
> > On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> > But for just "hey I'm plugged in" we can surely keep this
> > ID on GPIO detection in the USB subsystem.
>
> Sorry, you mean provide a common API? could you please describe more
> clearer about your suggestion?

Sorry I am not suggesting anything, this code is fine.

But:

> > I just get a bit insecure about how we should ideally
> > handle these "funny-PHY's".

I am more thinking about which subsystem these things really
belong in. But let's keep it like this for the simple GPIO case.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
