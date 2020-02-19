Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4775516421B
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 11:29:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbgBSK33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 05:29:29 -0500
Received: from mail-ua1-f65.google.com ([209.85.222.65]:39155 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726453AbgBSK32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 05:29:28 -0500
Received: by mail-ua1-f65.google.com with SMTP id 73so8635593uac.6
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2020 02:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+JMXibqU7pdFIdII16L/Y2AeVX/CI11svigC46gf8uU=;
        b=zzniWRwZoycxdKWo3bTAbQWaVxpy5CQGzW+0nidtIr77EZWl/cCZx19vDOZhjWvZRe
         p4t9rQ1ONJU2pZbwkIfSnLHNBeSyGflqKTLg2X+xxPUp2/fP9F7zjv+4f2KkizcjUDH7
         84nBCzOIfyHlHBLIQRPB0LIaTvdf4cW1Ojn5641hnjyoRgjm2haN6JfhhoBmIGU4WHcS
         gGuh6IZhW6sAQc0Csy727H0aAwHSk1cEjCFo3UdvwUH/ldH71Cm8rueaexzFTRgEjASO
         LLuaDLyLelIt7eXTO+LLbenQ/4CZCDhNSkkA3ZlWI9T68Xhm5+3UiGC+3QHkZyUwVhHZ
         jkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+JMXibqU7pdFIdII16L/Y2AeVX/CI11svigC46gf8uU=;
        b=ZPOJvRBQJzZsQQhJpCDDHXapOu3fSZzEzCs8l1m1D/f6isLSC9qBUYyrwWb3G6v8Gl
         uS8DSaNKnnGO+kX7mSu4qYGUQTwexksWGMIbSL1jErwhzKkr/7BKJmm5o7Ra8uRLlia/
         UT6C+XkVFil54dlJL3XIn8j+IeeCDGH5iaWaf/NmAomwLEg5XSguiOhGLX/25GaVC6n4
         7J3VfderkaGdveCVJv1w/4x0gACJCOE5cW+mLgs2fvCXZEkvkWGMLVzlVxTJuUSIFQX4
         D6Bi8LC73xaIjvYftwhtHFks7ncwJbJ41qgDZgYJ7JTx1xGNBUWTTmOrUbUJlbsUJR67
         kpcA==
X-Gm-Message-State: APjAAAW9QOufKeCJUmmVuYCtq1vPndlvgWJzlJc6yzo8HURMdoJA8G4j
        PoCsYAN7lIywLmP0un2rDbZjNaxGPMZKzuPhxWxE7g==
X-Google-Smtp-Source: APXvYqzltx18jQ/GN6j6y5PblztBh+anBxCtM5CqYz0EqlghKAvb6lvUng+oaF2oUU44zSaQHTDNiUkIX+LzpAamcAo=
X-Received: by 2002:a9f:3046:: with SMTP id i6mr12953039uab.15.1582108167823;
 Wed, 19 Feb 2020 02:29:27 -0800 (PST)
MIME-Version: 1.0
References: <20200128090636.13689-1-ludovic.barre@st.com>
In-Reply-To: <20200128090636.13689-1-ludovic.barre@st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 19 Feb 2020 11:28:51 +0100
Message-ID: <CAPDyKFr+7SvRasPPjFDA2kwG0ERS-Qp3FGbVbRGLrscz5N=L2g@mail.gmail.com>
Subject: Re: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
To:     Ludovic Barre <ludovic.barre@st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Jan 2020 at 10:06, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> To support the sdr104 mode, sdmmc variant needs:
> -Hardware delay block support for sdmmc variant
>  with tuning procedure
> -Voltage switch callbacks
> -sdmmc revision 2.0
>
> V2:
> -regroup host->mmc_ops & mmc->ops assignment
> -add timeout define
> -rename prep_volt_switch to pre_sig_volt_switch
> -rename volt_switch to post_sig_volt_switch
> -add 'why' comment for "mmc: mmci: add volt_switch callbacks"
>
> Ludovic Barre (9):
>   mmc: mmci: sdmmc: replace sg_dma_xxx macros
>   mmc: mmci: sdmmc: rename sdmmc_priv struct to sdmmc_idma
>   mmc: mmci: add a reference at mmc_host_ops in mmci struct
>   mmc: mmci: add private pointer for variant
>   dt-bindings: mmc: mmci: add delay block base register for sdmmc
>   mmc: mmci: sdmmc: add execute tuning with delay block
>   mmc: mmci: add volt_switch callbacks
>   mmc: mmci: sdmmc: add voltage switch functions
>   mmc: mmci: add sdmmc variant revision 2.0
>
>  .../devicetree/bindings/mmc/mmci.txt          |   2 +
>  drivers/mmc/host/mmci.c                       |  42 +++-
>  drivers/mmc/host/mmci.h                       |   8 +
>  drivers/mmc/host/mmci_stm32_sdmmc.c           | 204 +++++++++++++++++-
>  4 files changed, 248 insertions(+), 8 deletions(-)
>
> --
> 2.17.1
>

Applied for next, thanks!

I took the liberty to do minor amendments to some of the changelogs,
but in particular I have change some of prefixes for the commit
message headers into "mmc: mmci_sdmmc:".

Please tell, if there is anything that you want me to update.

Kind regards
Uffe
