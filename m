Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 658A420E13
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 19:39:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727812AbfEPRjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 13:39:36 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:35438 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726409AbfEPRjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 13:39:36 -0400
Received: by mail-vs1-f68.google.com with SMTP id q13so2876378vso.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 10:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
        b=Jb1d/6dTS1pvv/Mc3sngMU2XidRneSla0eokNz7UyBI0yOzrq5vCgombW1gG1LdKUz
         Z5kTaogiXfzaxz4CCpB/AezBDqTNpXyLbqEZlHFmcTaBm69PYrg8A59ElJe/LJnc4gz6
         GygFEMTkuX9hdSY7oSVpDZbJJBD05Vgp574Ec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
        b=QSUF0+XKETWJsfbErT8d/GsDbwojt3q55i5icWESfNxaKaS/bQPypFt8GpwcEPPK/b
         9n8HoYVHwmCOGPKdpFtjG2a4mTf3wpfHdvzFXdOmWjU3AfodEPgTFVGfnXRnpuCRNiUQ
         vIPIuOESLg0zFPJ2ecqSAumMKznSaaQxixfpfE0rsOPfwihWiim2BzDvrD3Otxdsgw97
         +HeBa9QA46osPWIPvLQaFl3PcJbDcHbF2hsh9/GsiejBQHB1Equz2HdmONq0kvA1wE52
         nrmF7y+J40/F7uHiLEIVVLs2HEXezPDKvyrl0B/KivYNHa1g9LMp7Y6KYHTn63F5QgfR
         ck3g==
X-Gm-Message-State: APjAAAWsnzju723Ky7+GdYyxwgHsMFhQlvfQbPdXe3/8OHmfEHETN6iB
        2GP7uGEqL+PxdhPE0GyBhxZco79nQ0c=
X-Google-Smtp-Source: APXvYqxEL6cdW3kELH32k+y798ASE+ZEWrrtRCPKA9GudzZKl32XewE8YuSJ/IKO/zqFEd6YeM3bGA==
X-Received: by 2002:a67:2ed5:: with SMTP id u204mr5257333vsu.64.1558028375217;
        Thu, 16 May 2019 10:39:35 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id 2sm6802857vke.27.2019.05.16.10.39.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 10:39:32 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id k1so1265604vkb.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 10:39:31 -0700 (PDT)
X-Received: by 2002:a1f:1e48:: with SMTP id e69mr23173110vke.16.1558028371386;
 Thu, 16 May 2019 10:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org> <20190516172510.181473-3-mka@chromium.org>
In-Reply-To: <20190516172510.181473-3-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 May 2019 10:39:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for
 the GPU thermal zone of the rk3288
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> Currently the CPUs are used as cooling devices of the rk3288 GPU
> thermal zone. The CPUs are also configured as cooling devices in the
> CPU thermal zone, which indirectly helps with cooling the GPU thermal
> zone, since the CPU and GPU temperatures are correlated on the rk3288.
>
> Configure the ARM Mali Midgard GPU as cooling device for the GPU
> thermal zone instead of the CPUs.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

This makes sense to me unless there is some better way to model the
intertwined nature of the CPU and GPU temperature.  It's my
understanding that the original device tree snippet was there because
it was added before the gpu node existed in the device tree so the
best we could do is to suggest that the cpu could cool things down.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
