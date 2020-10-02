Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DC242817F9
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 18:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733260AbgJBQcJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 12:32:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388158AbgJBQcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 12:32:06 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F74CC0613E3
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 09:32:03 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id nw23so2826750ejb.4
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 09:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vLLPjfNvFj7pR8od0hNiiSOWfDNa8LYk1h1kkUXgiLI=;
        b=jTb6EUMh+OlIVxa0PimfuLDmy32yYPGXpiPQNOPMPTKpXMlOXqvdBOwJsEqs3UHr0n
         FdHKQYQv8p0C8SbBAXcaTSo9M0hnVFKkc8wQNxABPUydB4w7Ith5G/R/1rKuD3Tk1HAJ
         hjw43tlAuO2zw4gzr2fgq/4Noz+d1eJpnnmpZytHQDEV1Uu4q8ZEF9aeB4dUzi1EZnpe
         sK0bQgEvhw/vmExBNToYiS3Sdty9YXTeMR+qVqdMZ+RVygI7ANh5YS9F8JQ8pxwczwFs
         1SmX7VUV1rahd5NYGXEdiw6EgVJ+PfpzOBReLLCb6besxYeXIsBPzaQegvBk5pFRLdEt
         wfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vLLPjfNvFj7pR8od0hNiiSOWfDNa8LYk1h1kkUXgiLI=;
        b=Gp0w8WM8Gv5wvY4ytWXtjm6ZNPPWm2hJM5cyvLZwBv6ZQkObFMyYxTw5otgc1FEW08
         roTRW5MJgPgWvNstEwRYUcUAiISsuC0ZL3ofs0PhSHACzJjAjFFZWFkXqm58NfT97Cwz
         oi/kjVZAh/MUmwFPyF7wcDqsOiFalIh37JZ75V/gS2v2ewaMpUn6URxlJp6WaigB9pSw
         s6TXaNB1O5e64qT3DJc0WiTM4DWfJR/N+tJ9dVEblhUlILSYNmOqDoZXgXlzVmDcrzBl
         lsBeptdkF12KtpzBO2oTrDdQpv1b68xjOtvBmuxXw1lwH8J8dWjMaTfnJxFhyA2bV5dv
         qcMw==
X-Gm-Message-State: AOAM532iaWr0Fj+JJKUnU96oJcgh5cNHxlCi3VMBXM7mYX8xoDazoW78
        IpOLUSaHBCbPmG578ZAKJst2lxx2xCyemfgzfjUjxA==
X-Google-Smtp-Source: ABdhPJzvIGZTSYXeDVvGycc/ET+O0eXN5kjaAPIg+hkk+PtA7S7pK0p+VHcosY6vL17tFeqld+x05+aclFHZCM+hktc=
X-Received: by 2002:a17:906:3399:: with SMTP id v25mr3079580eja.51.1601656322242;
 Fri, 02 Oct 2020 09:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
In-Reply-To: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Fri, 2 Oct 2020 13:31:50 -0300
Message-ID: <CAAEAJfCBi3AE23hbHB19FFNpmELp2hh3BU+qrdtmgBFJzv9A_g@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] media: rockchip: Introduce driver for Rockchip's
 camera interface
To:     Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Helen Koike <helen.koike@collabora.com>,
        Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        linux-media <linux-media@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Tue, 22 Sep 2020 at 13:55, Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> Hi everyone,
>
> This is the third iteration of the series introducing a driver for the
> PX30 camera interface.
>
> This was previously known as the "cif" driver in other iterations, but
> was renamed to "vip" following Ezequiel's advices to match the datasheet
> name.
>
> This is based on a BSP driver, and I'm not fully familiar with the media
> and V4L2 frameworks, so I guess some review is still needed.
>
> This new series adds some stability fixes, and introduces the
> double-buffering frame handling, giving better performances.
>
> Thanks to everyone who reviewed the first two iterations,
>
> Maxime
>
> Maxime Chevallier (3):
>   media: dt-bindings: media: Document Rockchip VIP bindings
>   media: rockchip: Introduce driver for Rockhip's camera interface

I can't find this "v3 2/3 media: rockchip: Introduce driver for
Rockhip's camera interface" patch in my mailbox. Perhaps it was too
large and got filtered?
Or maybe it's an issue on my side?

Cheers,
Ezequiel
