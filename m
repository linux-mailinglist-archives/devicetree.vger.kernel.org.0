Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBE6530A497
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 10:47:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232719AbhBAJqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 04:46:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231992AbhBAJqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 04:46:08 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A2D7C0613D6
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 01:45:28 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id c6so18096349ede.0
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 01:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9uABgpS7k+RTtvPAoMkAM0dxRvOCtHWBF9H6zn9nrBI=;
        b=gv+wjo0fdOeJa1xZqyy9AJDjR1eYMvCS028em0KvhYq9PK3qkvslQ2sOx596g8hDF7
         M9iTQoNu3dlXYS8dFdAhCDwUIN87j20Mf9ycUggQ3KPmx4YT/O/ypcVm8tKX6KqleQZL
         G0HMOrdH4xaSl83SwKUDtAn/eCbZj42nKcVmUyO3r3RG+tJDTve5+cv2pVWKv4pPg2hy
         cMBeTZOP8GBMQpzAx/c7d4MzEfTjsFXxxA/0VwNgNuTL8t1mHYB2N+YPXnYn/LMfncjF
         AsIqyPQkLUdsAvg8lXmXZhI8TRBb1U3XNRjBPFOIvhuTMdushHWKufllnb4F+VPxNhlU
         lhDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9uABgpS7k+RTtvPAoMkAM0dxRvOCtHWBF9H6zn9nrBI=;
        b=eUsJyClOOdji7dCwMQ5XoOY1H9z0HqUgeAzJy7j3oRqLZHI572q1weM8aP1Q/9fnVF
         pg3nf77221hxMFRdmqZNsqu2fxNp4HEPgeBtjbmndQJfW7puVU8kFhzILl7ZZW0DW1lf
         038v3gzhnFpJHZqDMcvtp0nq+Q4Pmv4qmt4z50REQRC9I4T/PkvsFpOOLRsVoKdBmtU7
         Kk1Ki/pjedqlY3cUhKvhA8wOSDZ8aXKL7IivvWyK5+KTobUvF7Q0nfJDmLDsklpGIghr
         9B3lH/l591SQMs1ObXE/UTvsjhxNOA4T0s6lLJlURFJpLNrNAcldzptDbyPyRwcTCn2L
         W7rQ==
X-Gm-Message-State: AOAM530fyFkSsUwDZgFnBUWBKBU1wVE80jzL2ur6xgoxbLoihZkh98Bn
        HBZm4XFCiT8vdfThDJboM96eZI/jAK9whfkFa5HRaA==
X-Google-Smtp-Source: ABdhPJxTIMbi5fN6d5G6f7C/RF5lJIUqZs7nl9/d489pk63N4yH6j8rxUSH6QH/dN2bs17hHrjk3Cfa4vgWJccvN/QE=
X-Received: by 2002:a05:6402:134b:: with SMTP id y11mr17732512edw.88.1612172727097;
 Mon, 01 Feb 2021 01:45:27 -0800 (PST)
MIME-Version: 1.0
References: <20210127000303.436595-1-drew@beagleboard.org> <20210127000303.436595-2-drew@beagleboard.org>
In-Reply-To: <20210127000303.436595-2-drew@beagleboard.org>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 1 Feb 2021 10:45:15 +0100
Message-ID: <CAMpxmJWHoY_ij4fS-6vYigzqLxCEWBvY=AB6GK1jVM9oMub7Ug@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: am335x-boneblack.dts: unique gpio-line-names
To:     Drew Fustini <drew@beagleboard.org>
Cc:     Benoit Cousson <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux-OMAP <linux-omap@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 27, 2021 at 1:05 AM Drew Fustini <drew@beagleboard.org> wrote:
>
> Based on linux-gpio discussion [1], it is best practice to make the
> gpio-line-names unique. Generic names like "[ethernet]" are replaced
> with the name of the unique signal on the AM3358 SoC ball corresponding
> to the gpio line. "[NC]" is also renamed to the standard "NC" name to
> represent "not connected".
>
> [1] https://lore.kernel.org/linux-gpio/20201216195357.GA2583366@x1/
>
> Signed-off-by: Drew Fustini <drew@beagleboard.org>
> ---

Reviewed-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
