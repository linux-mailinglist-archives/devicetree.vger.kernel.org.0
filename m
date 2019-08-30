Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDD24A3A9F
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727792AbfH3Pmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:42:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:52690 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727751AbfH3Pmc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Aug 2019 11:42:32 -0400
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9A68923429
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567179751;
        bh=rjS27z1lBNhCEThrZ0kRF0f2b7v4SWdYVwASALBqm7Y=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=OO5kl0tpPfjShjhR6s2bDqoUlEMqS5fbn+z6GfVIp97MAo550syQk1WnY71NzWEd3
         QR+DaJVTCupCau1tgKTb6Ywl6eia1MEpIJ20UNOsZDGp6D0KHbDRYzF/qckNMovc7/
         uFeUE6mNBqeL5c4bK2+7vXzmoLX0SJl5HLXKvw/c=
Received: by mail-qt1-f172.google.com with SMTP id u34so8072039qte.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:42:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVo68skUdw5pNgVkZLaWrxEfbBE4pcH719uG35u2fN+1uDYqb/2
        eHe7r89QR1rLTCP7WO6q550VNfnFgJcCb/AKHw==
X-Google-Smtp-Source: APXvYqxBnsuq9Cl2AYxJ3+2RNMJO5TFFSdIRuxFvXYjoIaLcgogQZmTxJVQow0WheBHwlDr5sYneLYlM9P1u/GoXMGg=
X-Received: by 2002:ac8:6b05:: with SMTP id w5mr221266qts.136.1567179750860;
 Fri, 30 Aug 2019 08:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org> <20190828125209.28173-5-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-5-mripard@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 30 Aug 2019 10:42:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7nE8+XK0m+1UKCUypkkgb4Nky7ternsx0zkTxiSejRw@mail.gmail.com>
Message-ID: <CAL_JsqL7nE8+XK0m+1UKCUypkkgb4Nky7ternsx0zkTxiSejRw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] ASoC: dt-bindings: Convert Allwinner A64 analog
 codec to a schema
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A64 SoC has an embedded audio codec that uses a separate
> controller to drive its analog part, which is supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../allwinner,sun50i-a64-codec-analog.yaml    | 39 +++++++++++++++++++
>  .../bindings/sound/sun50i-codec-analog.txt    | 14 -------
>  2 files changed, 39 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt

Reviewed-by: Rob Herring <robh@kernel.org>
