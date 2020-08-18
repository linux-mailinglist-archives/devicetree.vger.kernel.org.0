Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 464F2247BFA
	for <lists+devicetree@lfdr.de>; Tue, 18 Aug 2020 03:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726398AbgHRBqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Aug 2020 21:46:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726303AbgHRBqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Aug 2020 21:46:40 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAD3DC061342
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 18:46:39 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id df16so13963696edb.9
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 18:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y+lrgfwMqPomcWygbUK3e6COtGQC4/UPSB2RLkkHV+A=;
        b=FUQHZGPmxY0dGVSuUc83kBkn4ATwkOdEQO+KwXiht76mke5IWG8/nQcLNFJ9/gCV7v
         +idWk+VlJAxuwN3pu4g58HoUUP471EEiLamE5u3ddKgZjWYR8WcQs2JYN0E2nGf/Z6cV
         jXCeK3EgxInYP1lw+sn5SoFOOu33YwmF15gpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y+lrgfwMqPomcWygbUK3e6COtGQC4/UPSB2RLkkHV+A=;
        b=So3CVzUCAM5SHqGqpVcT7o6C0T2xRLLLCQawFs4ttoce/NApykUWDEP6OMpVNNIFd7
         HAOqS41xlyjKi2CgqNDFjp7MZDtSJHP7D9a7C8D533VRoD0Q/IQAAfS1GSs96DP0JjR9
         trXLPtpalRlem2T5rN15EO9teuo69hGW9ObKCXuZu7xnvCGoZ1Tq6WKtLeB/sM+WCmVP
         siOqVy6spN/oHBOMp3zyGWsF+13bpcRTrtMGkSq7MpxSdk8PgNy2dGpf5XDFsW/24gYY
         xJfQZzcOtltcGOqTehYaFS2p5vUBMqPout16scTqakU908y5LBhIFwnXSxhBFzglubDq
         ZC9w==
X-Gm-Message-State: AOAM532WJcnyll2pz+rzoqHZQyryFi5P42UZ4+1WaGp9OjQs7UFeuRU7
        32aHDXY7tGCXApuFXPo0XewtU5e3Cz2wrw==
X-Google-Smtp-Source: ABdhPJwZqBGggqXctvMoDK1WykZrgF3Z1EItYEFDNAxy/hvT32embNnA0s4Wwqf1xM5cEhv0HfoCgQ==
X-Received: by 2002:a05:6402:1c88:: with SMTP id cy8mr18222115edb.24.1597715198028;
        Mon, 17 Aug 2020 18:46:38 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id b7sm15582857ejp.65.2020.08.17.18.46.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 18:46:36 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id f1so16731681wro.2
        for <devicetree@vger.kernel.org>; Mon, 17 Aug 2020 18:46:35 -0700 (PDT)
X-Received: by 2002:adf:ed85:: with SMTP id c5mr17886807wro.307.1597715195448;
 Mon, 17 Aug 2020 18:46:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200803235815.778997-1-campello@chromium.org> <20200803175559.v5.9.If88afce92bbc1e97a532874cca35e642a9566172@changeid>
In-Reply-To: <20200803175559.v5.9.If88afce92bbc1e97a532874cca35e642a9566172@changeid>
From:   Daniel Campello <campello@chromium.org>
Date:   Mon, 17 Aug 2020 19:45:59 -0600
X-Gmail-Original-Message-ID: <CAHcu+Vb3ezGgRAPWgmHMGAisOQzEm-kKs7bj0ssgyASx-fqoXA@mail.gmail.com>
Message-ID: <CAHcu+Vb3ezGgRAPWgmHMGAisOQzEm-kKs7bj0ssgyASx-fqoXA@mail.gmail.com>
Subject: Re: [PATCH v5 09/15] iio: sx9310: Update copyright
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 3, 2020 at 5:58 PM Daniel Campello <campello@chromium.org> wrote:
>
> Fixes wrong copyright year.
>
> Signed-off-by: Daniel Campello <campello@chromium.org>
> ---
>
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>
>  drivers/iio/proximity/sx9310.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
> index cd7de40a55c2f6..87b2de0d7b55a3 100644
> --- a/drivers/iio/proximity/sx9310.c
> +++ b/drivers/iio/proximity/sx9310.c
> @@ -1,13 +1,13 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * Copyright 2018 Google LLC.
> + * Copyright 2020 Google LLC.
>   *
>   * Driver for Semtech's SX9310/SX9311 capacitive proximity/button solution.
>   * Based on SX9500 driver and Semtech driver using the input framework
>   * <https://my.syncplicity.com/share/teouwsim8niiaud/
>   *          linux-driver-SX9310_NoSmartHSensing>.
> - * Reworked April 2019 by Evan Green <evgreen@chromium.org>
> - * and January 2020 by Daniel Campello <campello@chromium.org>
> + * Reworked in April 2019 by Evan Green <evgreen@chromium.org>
> + * and in January 2020 by Daniel Campello <campello@chromium.org>.
>   */
>
>  #include <linux/acpi.h>
> --
> 2.28.0.163.g6104cc2f0b6-goog
>

Hi Jonathan,

After discussing with Gwendal on crrev.com/c/2360467 it seems that the
right year for the copyright is 2018 as it was before this change.
Sorry about the inconvenience.

Regards,
Daniel Campello
