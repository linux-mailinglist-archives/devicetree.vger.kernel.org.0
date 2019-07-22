Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 919CF6FB45
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728183AbfGVI10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:27:26 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:41965 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727699AbfGVI10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 04:27:26 -0400
Received: by mail-vs1-f65.google.com with SMTP id 2so25524043vso.8
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 01:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4RJyhgfgruenwkBfxBo44jsW4pz2HfZkSJXTbiqBf3E=;
        b=gztWv+bmLCUDG6mNEYFFvY8tZqi5r3puq/pDBxPphVwweusuYVn6zN2Y8qdTZw2pYi
         4zFCzJ2ISOb18Z20Keksz0xaXGoT8aVi9NKNJeqnCzpwcOpEbYV6Saym/h48X5KIyTCJ
         fKvZiAB6CWpOL5FneJ4T/xEvritiiqNZHvJj9GHvkD+KXnKXuhY2O6wLzW3fR1i+43TJ
         r7eO6MickDKg1hTNpwLVzhRb0Ki37ouO2PMQd3Y2sfLKtO+2t5LHofzSll3wnadxDPR0
         BbqGFlaY3XTXtQG8Mo8sZwzewWTVDt6bRi8ZJ2N7tOFsTIzISJpShd6atLP7SEqwCxLr
         E+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4RJyhgfgruenwkBfxBo44jsW4pz2HfZkSJXTbiqBf3E=;
        b=cwgXDodcM8eDER7iAXx8SrCrrxqnDa2yx6jjOmWuBZEd0etBnORcK+SmPFNA9t47li
         ZL0YD78Nzugf5TW8rJSNDSv2yEhMwoTCTlJX09015ukJFCiX4BAwYKIVkRqhWLHzfNu3
         q3/4sIO/XPO5KcdD+7/f/VmTR1TgNtJUPWvgJoSvfQXxEXvJ4mPG5XGB5Xi5egwgy9d/
         c5unxc5zYac4K7f92Tl3iw/MF2J15wzRlcTon6FJBBMA82i5yXuXa8VU4VeQBv9j6rjC
         Vy0H+mbE3NUD/0di164IQtguuDznCPpQayk+NgtVkFejyIB2mbcZX/yMe+bJlyfZ3stO
         G1+Q==
X-Gm-Message-State: APjAAAVgxgdErTgPoP5rcWJFeYYQcNhO6TJ9Zc8ToWyl7XL7rkCfXV2p
        dgLoIGqNppdjL9iEjNt0LNTBzCDfsuIp8ifFnMBqsw==
X-Google-Smtp-Source: APXvYqyiO4svt03LtfyWGgVARgQQgWAX83euCH22ShiTYAP+9nnGonWbSkDuxevzOEUTnmTEFPm9l3Jw0Kwk9TtHijM=
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr40205806vsn.94.1563784045548;
 Mon, 22 Jul 2019 01:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-3-git-send-email-yash.shah@sifive.com> <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
 <20190719132657.GD24930@lunn.ch>
In-Reply-To: <20190719132657.GD24930@lunn.ch>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Mon, 22 Jul 2019 13:57:14 +0530
Message-ID: <CAARK3Hn7vocesjGm3mNGJ4GJXwRnqv-qtVGAgFKMghH033JH4g@mail.gmail.com>
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org,
        Palmer Dabbelt <palmer@sifive.com>, ynezz@true.cz,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        nicolas.ferre@microchip.com,
        Sachin Ghadi <sachin.ghadi@sifive.com>,
        Yash Shah <yash.shah@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Andrew,

On Fri, Jul 19, 2019 at 6:57 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Jul 19, 2019 at 05:23:45PM +0530, Sagar Kadam wrote:
> > > +&eth0 {
> > > +       status = "okay";
> > > +       phy-mode = "gmii";
> > > +       phy-handle = <&phy1>;
> > > +       phy1: ethernet-phy@0 {
> > > +               reg = <0>;
> > > +       };
>
> Hi Sagar
>
> Is there a good reason to call it phy1? Is there a phy0?
>

Sorry for the delayed response.
There is a single phy, so yes phy0 is a better name.
Thank you for pointing this out.

Thanks & Regards,
Sagar Kadam




> Thanks
>
>    Andrew
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
