Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF1BC9894
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725892AbfJCGub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:50:31 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:34195 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbfJCGub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:50:31 -0400
Received: by mail-io1-f66.google.com with SMTP id q1so3100187ion.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tt/S1MK2hfNRmcchY+VX0l8ftGF+jAU5aVZJF+oZt2U=;
        b=it//+pUV0o+AfLtqgd58MPT3/eGz5NZ/3fJdCcTXH9p/mKoqt8vNSKVtRXo25SyElS
         ubjXKxRDSeAb4aFRKo/9jZCkbm00Q4lM4bVPvOUs6Y+y+15CztcT7PA8pPFcNzG3tmlC
         Xla/5zwL8a+0Cm7HMHu0mixFm6s4bazOxYl0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tt/S1MK2hfNRmcchY+VX0l8ftGF+jAU5aVZJF+oZt2U=;
        b=HL1xjGsEvo1+6/kKhQkhzJQ5pnTiAVJ26+koQFxySIvmwvBd4jwi6LZzYatsu24qDl
         Ygx4bxqhvPnfEGMwSz4r8LDunAnOMSO++8a8aNchFgRz7nF9OG1yiB8oJyO5oOE27ada
         GOImnwZkZmfDVAPrREk3ZOMDUK/KoE5HFC3to+Du+UuBJWxcldSHDt/hAByPdmNLZnVm
         dniL21211boGFrd80/NSJ5JK+NAaw25DK3SqzKUS3sJ7cK21XEI86fm8pWJdL4euFpNP
         9Q7d8VCVGugHYlY29UX4Oi9yWtJHc0meKmJrRwt5Cr5gP6CJHm294v1tfSghlITw01E+
         zhww==
X-Gm-Message-State: APjAAAUWrrYX6P0U2XWghzkgWCn7a2qyjU0vlnQ6xa+fmV9FstUiEqkV
        9uflN+n+GaRNrFmf3gV/ctr7ubd6wW+gnyBwxgOiOQ==
X-Google-Smtp-Source: APXvYqw9C5okno4/FEmbGgjCtziH8L0ligLd5zphx/vdqtLp/tQvohb/XmjYoGGwm1th0cj3JsX+zL0a2/erxOU/7LI=
X-Received: by 2002:a92:c74d:: with SMTP id y13mr8565455ilp.77.1570085428660;
 Wed, 02 Oct 2019 23:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com> <20191003064527.15128-7-jagan@amarulasolutions.com>
In-Reply-To: <20191003064527.15128-7-jagan@amarulasolutions.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Oct 2019 12:20:17 +0530
Message-ID: <CAMty3ZD95L83dzsBwNghfahZ2mfmmOn0iA40t534i91UN7P_uQ@mail.gmail.com>
Subject: Re: [PATCH v11 6/7] drm/panel: Add Bananapi S070WV20-CT16 ICN6211
 MIPI-DSI to RGB bridge
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 3, 2019 at 12:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Bananapi S070WV20-CT16 ICN6211 is 800x480, 4-lane MIPI-DSI to RGB bridge
> panel which can be used to connect via DSI port on BPI-M64 board,
> so add a driver for it.
>
> The same panel PCB comes with parallel RBG which is supported via
> panel-simple driver with "bananapi,s070wv20-ct16" compatible.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../panel/panel-bananapi-s070wv20-icn6211.c   | 293 ++++++++++++++++++

This would be an overlay patch, which doesn't need to mege. please
correct the same.
