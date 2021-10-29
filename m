Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C01643FE58
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 16:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbhJ2OX1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 10:23:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:40020 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229692AbhJ2OX1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Oct 2021 10:23:27 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC320611C6
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635517258;
        bh=IJr8mjK5JI39xT+wavxpeNxCrXLFATuPnUmUk4aDpnM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=SwIMJFG3wXnKP4Vc8A4MeuryOAb9/W0yxIcaysM6fv6ou383OUIkMjTEPewS/hGbV
         WMkjmU1vtL1nxZ8ZzK8bXBT6Qjpd4HlmeHrgJBYo3x5JIdCxCgFxEnWLZpA3zBe9wS
         lkib/XVZ1918deiehLn3oKCqU/gudu0BiUgIavPLJL+F7FfUlq5Td64oIAV6mAl8+U
         0bgdukFIgVoyfv8JBDW8AByQ4DpKymy21zZfhsoL47/zkwaFCkkPRywIV4O0kMl6hR
         PVWqzgjpYKKqHFK//k97QuqgLnVTDr+Y+itje0XZzjzj8uq2CO1PY2ng1uLvXN9VU4
         MsjN2Q3I4SDNg==
Received: by mail-ed1-f47.google.com with SMTP id m17so37993890edc.12
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 07:20:58 -0700 (PDT)
X-Gm-Message-State: AOAM5318T4tvo1i9hbmDx78K/ZRtTKkgGJzP88Py4OOUzypYvYU3Lw//
        h9Liq+gNIuYYaS8pFXfrlTK5WTxeQwss+G3sXg==
X-Google-Smtp-Source: ABdhPJy2gdLblvTu1z1A04RbWwTHikS46UXRQr18bh+SXY64O/o1I3hLx5jSRDFrqHGMao7ksSD86n4J1DpwE/v5wqs=
X-Received: by 2002:a17:907:869e:: with SMTP id qa30mr13785592ejc.320.1635517257160;
 Fri, 29 Oct 2021 07:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <20211028183355.360731-1-robh@kernel.org> <20211029093849.GB24060@lakrids.cambridge.arm.com>
In-Reply-To: <20211029093849.GB24060@lakrids.cambridge.arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 29 Oct 2021 09:20:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+XnSLZ9xdNne2b2XjtSfBJRgZfc=9w=S2dLXHHSwrySQ@mail.gmail.com>
Message-ID: <CAL_Jsq+XnSLZ9xdNne2b2XjtSfBJRgZfc=9w=S2dLXHHSwrySQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Simplify checking for populated DT
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 29, 2021 at 4:38 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Rob,
>
> On Thu, Oct 28, 2021 at 01:33:55PM -0500, Rob Herring wrote:
> > Use of of_scan_flat_dt() function predates libfdt and is discouraged as
> > libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to use
> > libfdt calls directly. Rather than searching for any node not /chosen or
> > /hypervisor, let's just check for something always required which is the
> > arch timer.
>
> The reason for checking for /chosen and /hypervisor specifically was
> that we specifically permit a "stub" DT which only contains those nodes
> and nothing more. This is also mentioned in the comment block in
> acpi_boot_table_init().

There will be a compatibility problem if another node is ever added to the stub.

> I'm not keen on this change because it opens the door for people to
> place arbitrary things in the DT as long as they don't add a timer node,
> and I'd prefer that we continue to check for /chosen and /hypervisor
> specifically.

How would one use that? The DT is never unflattened. I guess
early_init_dt_scan() could find something.

> Can we re-implement the existing logic using libfdt calls? e.g. using
> fdt_for_each_subnode() on the root node?

Sure.

Rob
