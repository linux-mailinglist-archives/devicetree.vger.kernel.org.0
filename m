Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 217FE3A4E1A
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 11:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbhFLJ7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 05:59:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:37046 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229584AbhFLJ7U (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 12 Jun 2021 05:59:20 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C11EC61374
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 09:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623491840;
        bh=XnSEjaKPd/fbYfru5wtrp9Rz5uAEO33BR1flJorZQwA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=M9sT4g7XRAMVy4BG/0fTa7/AXA+Vf/4ax8BoGpxoTOAZV8uz0z0B9v08jYlriHrm+
         kao0NZ6wRF2ixEyaGgZSJNtBHJEXFqnUsUCBw86ogLEm7Jhk0luI8GZEf+FV5GPpnZ
         bODbtNNYvSXOQdRH7Z2wLiDyJSVUcEyiT7SGM35DN5k8Ic3I+ssAlbT42PTvmuU7yu
         95tN/qPNgbKJa4CSOWKlKZwo9cU6IKjdTuYJ9YhcQfRIZPgsxZzwW8Xpqn2cpzV728
         GeqLMafTndpIUAZsTp9/+IQC8RUUxcM2eU1OUR7nXmbsVaQGMcjAII/QcR/SLeUVvs
         qfgj+fJciuUkA==
Received: by mail-oo1-f52.google.com with SMTP id w13-20020a4ad02d0000b029024a98209c35so534958oor.4
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 02:57:20 -0700 (PDT)
X-Gm-Message-State: AOAM5307Y0Y+ZLnTVSYCbSR39OEV8BNTbHVesT4vA1cX3m0cqysrRJ2G
        XRt+eFuua9PZEkvndLn0DcRctzSZu/qymG4ceAA=
X-Google-Smtp-Source: ABdhPJyCD+FPKbBDT5dwWkad5fVnxEIth71iTLLyhy0Z6pCHU0PgHew1wJ6PiO253rm190AyK/y6mLWkJYjUhDl1KC0=
X-Received: by 2002:a4a:e416:: with SMTP id t22mr6194006oov.39.1623491840089;
 Sat, 12 Jun 2021 02:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210524124536.27854-1-dev@lynxeye.de> <20210524124536.27854-4-dev@lynxeye.de>
 <20210612031412.GJ29138@dragon>
In-Reply-To: <20210612031412.GJ29138@dragon>
From:   Shawn Guo <shawnguo@kernel.org>
Date:   Sat, 12 Jun 2021 17:57:09 +0800
X-Gmail-Original-Message-ID: <CAJBJ56+hrMMt0SnjnaHhHjuzej8eJzTE8=AyKnAWOm+ueKMMvQ@mail.gmail.com>
Message-ID: <CAJBJ56+hrMMt0SnjnaHhHjuzej8eJzTE8=AyKnAWOm+ueKMMvQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: imx8mq: add support for MNT Reform2
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 12, 2021 at 11:14 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, May 24, 2021 at 02:45:36PM +0200, Lucas Stach wrote:
> > This adds a basic devicetree for the MNT Reform2 DIY laptop. Not all
> > of the board periperals are enabled yet, as some of them still require
> > kernel patches to work properly. The nodes for those peripherals will
> > be added as soon as the required patches are upstream.
> >
> > The following has been tested to work:
> > - UART console
> > - SD card
> > - eMMC
> > - Gigabit Ethernet
> > - USB (internal Keyboard, Mouse, external ports)
> > - M.2 PCIe port
> >
> > Co-developed-by: Lukas F. Hartmann <lukas@mntre.com>
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
>
> Applied, thanks.

Oops, I shouldn't apply other patches in the series without applying #1.

Dropped them.

Shawn
