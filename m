Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5263230B4BC
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 02:35:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbhBBBex (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 20:34:53 -0500
Received: from eu-shark2.inbox.eu ([195.216.236.82]:32926 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231128AbhBBBeu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 20:34:50 -0500
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 8CB7C42C85E;
        Tue,  2 Feb 2021 03:34:01 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1612229641; bh=JSdLbx9dJF1SOeriTAvfNbXrmgWVUy1I+Tq81M+VDB4=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References;
        b=EWh8TKCZQaAdQK2Q36dGLJss3mrxmuaqnLucnTi5Ojr1y58XNbVrb+nrOdESXJc+A
         Y/42X6qhsPG0wtAX1FGCghwbaOTZA+6GjXdRYjBMLkzyh9XaOYf7AFtIkQyoH79G9D
         GCAIoLDEOnyYaKVS3vsZm/BZk2nujlohss0vwSbg=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 696E93E03E8;
        Tue,  2 Feb 2021 03:34:01 +0200 (EET)
Received: from pc (unknown [165.231.161.4])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 6B49D1BE0095;
        Tue,  2 Feb 2021 03:34:00 +0200 (EET)
Date:   Tue, 2 Feb 2021 04:33:55 +0300
From:   Boris Lysov <arzamas-16@mail.ee>
To:     Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 2/3] watchdog: mtk_wdt: add support for 16-bit control
 registers
Message-ID: <20210202043355.18080818@pc>
In-Reply-To: <050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210131234425.9773-3-arzamas-16@mail.ee>
 <050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: OK
X-ESPOL: 6NpmlY9HHDysjlqlQGenZQs2qS9XXu7k5ea80QNdgAiJPFvxYip+XRWr7hJ7DSP4og==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=D0=92 Sun, 31 Jan 2021 16:31:09 -0800
Guenter Roeck <linux@roeck-us.net> =D0=BF=D0=B8=D1=88=D0=B5=D1=82:

> We can't do this. With this flag enabled, the watchdog won't
> support other SoCs, and there is nothing that prevents the flag
> from being set for those SoCs.
>=20
> This has to be handled differently, without configuration
> flag. Maybe use regmap for register addresses, [snip],
> or use accessor functions in mtk_wdt_dev.

Thank you for reviewing my patch!

I will consider suggested fixes, and I will come up with better solution
in V2. I'm beginner developer, and am still learning.

> use the compatible string to determine which regmap settings to use

I think relying on hardcoded "compatible string - settings" pairs in
driver is not good. Whilst most Mediatek watchdogs I've seen use
similar drivers, no one (except Mediatek itself, of course) knows for
sure how many devices use 16-bit mode, and specifying each one in C
code may _theoretically_ bloat it. (well, on the other hand, I've seen
other watchdog drivers with many compatible devices listed in C code,
and they didn't seem bloated at all)

What do you think about implementing a simple boolean flag in
dt-binding for enabling the 16-bit operation mode? Something like
"mediatek,watchdog-16bits" [1] , which the driver would check for in
the `mtk_wdt_probe` and set corresponding regmaps. As result, there
won't be a need for kernel configuration flag, and other watchdogs
would be supported.

Most likely this idea doesn't sound good as I portray it, but I would
still like to hear your opinion about it. Thanks.

References:
[1] Mediatek UART APDMA driver uses similar flag
called `mediatek,dma-33bits`
Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
