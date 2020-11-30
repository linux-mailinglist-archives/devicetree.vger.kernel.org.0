Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3282C8DBA
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 20:14:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726007AbgK3TMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 14:12:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:44750 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725897AbgK3TMa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 14:12:30 -0500
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D11BA20825
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 19:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606763509;
        bh=qFMB0S5F8DWHbnHyt7f10TUyK5zOuc8LJf/u7hmm/YA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=bHh5EAF3fz3WfnyjhcyNsRuF6REFs2wJ6SlKIIT1fc99fNfJOEoHtP6fY7r4tj1NW
         Bk9Z/sCQHgpwjTR/ZDbBH5Ap+V5SdER+PWqEptS51bGz6gHS711AT4w42LroDo5oN4
         i9uGkjp+2+KqLL3G8N3Q/HQ+Y3JLZXncuVdaZhCY=
Received: by mail-ej1-f54.google.com with SMTP id lt17so23968417ejb.3
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 11:11:48 -0800 (PST)
X-Gm-Message-State: AOAM53351D2k9gUwVhgGcASrdTePkR+NPfsr+4TtNSlGqX+VjHfHo1V2
        7hJvmzH0kGu6yY33WegdfxiG5ne0UFPArU5N4A==
X-Google-Smtp-Source: ABdhPJwPYfRrWknfKDJEK0dgwlh/PR29Wjzsq8O5ntEoyBT/NfKcgJlzRSyOR2SQAPE+nBkbam1iZaJhtxSRSZeEPgo=
X-Received: by 2002:a17:906:d87:: with SMTP id m7mr8167514eji.108.1606763507318;
 Mon, 30 Nov 2020 11:11:47 -0800 (PST)
MIME-Version: 1.0
References: <CAFr9PXkX3UnLzGsPntXSum1978BkDJ1sn5XCp9Ze9KnHdmBDrw@mail.gmail.com>
In-Reply-To: <CAFr9PXkX3UnLzGsPntXSum1978BkDJ1sn5XCp9Ze9KnHdmBDrw@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 30 Nov 2020 12:11:35 -0700
X-Gmail-Original-Message-ID: <CAL_JsqLcg4z7CnKf=7CsL1x3sPS+e2OxshGoD5j8kN4hQCFqrQ@mail.gmail.com>
Message-ID: <CAL_JsqLcg4z7CnKf=7CsL1x3sPS+e2OxshGoD5j8kN4hQCFqrQ@mail.gmail.com>
Subject: Re: How to describe a device that sits across two busses.
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 28, 2020 at 11:00 AM Daniel Palmer <daniel@0x0f.com> wrote:
>
> Hi all,
>
> I have a driver for a SPI flash controller that I want to mainline
> soon and I'm cleaning up the device tree part for it at the moment.
>
> This device has registers that are children in a "simple bus" and a
> memory mapped area that is in the soc simple bus because it's not
> connected via the same bus as the registers.
>
> Right now I have the driver's node in the soc simple bus like this:
>
> isp: isp@1f001000 {
>   compatible = "mstar,msc313-isp";
>   reg = <0x1f001000 0x400>,
>            <0x1f002c00 0x200>,
>            <0x1f002e00 0x200>,
>            <0x14000000 0x1000000>;
> };
>
> Really the first 3 reg values belong to this simple bus:
>
> riu: bus@1f000000 {
>   compatible = "simple-bus";
>   reg = <0x1f000000 0x00400000>;

If it's 'simple', then it shouldn't have regs...

> };
>
> Is there a good way to describe this? I think maybe the memory mapped
> area should be another node (syscon?) and that should be referenced in
> the driver node and the driver node itself nested in the riu simple
> bus where the registers are.

There's not really a better way. I would stick with 'reg' and not a
syscon. Unless you restrict the address space with 'ranges' nothing
prevents having the above. The main thing we want to avoid is having
the same address used (in 'reg') by multiple nodes.

Rob
