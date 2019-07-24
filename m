Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22C0673B0E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 21:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404219AbfGXT4X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 15:56:23 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:44883 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404630AbfGXT4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 15:56:23 -0400
Received: by mail-io1-f68.google.com with SMTP id s7so92082252iob.11
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 12:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XZt1VFBsfyDW8nwLopR3h8XPP4tphNg4YLYc8AkW2ho=;
        b=NEeZ+uUa6lhQAWD9vkktfpJZVl4pMOSxYJSXNt2bByMieaXwfzGB10mfQ6B2Li1wNw
         T4ZeKK3COOk1QFOqYMlmOLF4sOFI7nhmu+ImME1jtsxAS6J4BoCFBhU62jYMBtSqHVp7
         P2xLgUNJJoxlvGHXSm6CvOipxxbi6Jik9Btus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XZt1VFBsfyDW8nwLopR3h8XPP4tphNg4YLYc8AkW2ho=;
        b=uC5klQw5Ht9ysmykMHCNKOaVjZA+cgV9nYNQUJXzNjAABrVLfBIR2Luv78FH4K5Keo
         g+ZBuX/QDlUMTDfgLGeQnCCTaY+1SzGS5UkoxUD3d4xm5GXliYb7NEk4QZk41s9cEmDo
         1yXtIuVKHDEFyABOTS3piMSpm/0g8s0YX8xbFUpjohH9thPKQVuJo4spZ7rVtPh3+rOd
         27GSa1FiUqRYuMSBjv/jZGOjXzQh3LsRSygW812+jsCrjBobVDtdsvR28KoCVk9nqmM/
         wpTvN/B4G+REGKqM4cXaWu9Kks8BcubwnkscX8toMS/bCQ0Pimp4tpWXbYZvrKCQq/rj
         oUsg==
X-Gm-Message-State: APjAAAXiUg2zikYjQ4AViGWqyxwgEcl7hDwZAGOAdJ2bVNg7/wDX+kvj
        BYasU9H+HzVciLR3i3ULXK34fUJ3cBs=
X-Google-Smtp-Source: APXvYqydy6cCh6YqSqy9OTNr3/fOSQD1vfSCbdz+uWQ10QPGszez5WFXJaAevSXUuqmtFZskakjw/w==
X-Received: by 2002:a05:6638:52:: with SMTP id a18mr88311956jap.75.1563998181796;
        Wed, 24 Jul 2019 12:56:21 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com. [209.85.166.46])
        by smtp.gmail.com with ESMTPSA id a7sm37636350iok.19.2019.07.24.12.56.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 12:56:21 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id s7so92082081iob.11
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 12:56:20 -0700 (PDT)
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr30860288jan.90.1563998180575;
 Wed, 24 Jul 2019 12:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190723225258.93058-1-mka@chromium.org>
In-Reply-To: <20190723225258.93058-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 Jul 2019 12:56:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wk2meLxa6AszjFs=Mfp_wML_7OMsn81FLA5tcdEx=1kg@mail.gmail.com>
Message-ID: <CAD=FV=Wk2meLxa6AszjFs=Mfp_wML_7OMsn81FLA5tcdEx=1kg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Limit WiFi TX power on rk3288-veyron-jerry
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 23, 2019 at 3:53 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The downstream Chrome OS 3.14 kernel for jerry limits WiFi TX power
> through calibration data in the device tree [1]. Add a DT node for
> the WiFi chip and use the downstream calibration data.
>
> Not all calibration data entries have the length specified in the
> binding (Documentation/devicetree/bindings/net/wireless/marvell-8xxx.txt),
> however this is the data used by the downstream ('official') kernel
> and the binding mentions that "the length can vary between hw
> versions".
>
> [1] https://crrev.com/c/271237
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts | 147 ++++++++++++++++++++++
>  1 file changed, 147 insertions(+)

I agree that this matches what's downstream and seems right.

As you pointed out the bindings are a bit on the sketchy side,
claiming a certain length in one place but then saying that the length
depends on the HW version in another place.  I'll also point out that
the bindings are inconsistent about the name that should be used.
AKA:

marvell,caldata-txpwrlimit-2g
 -vs-
marvell,caldata_00_txpwrlimit_2g_cfg_set

...but I think the answer is that it doesn't matter at all from a
practical point of view.  The code seems to just find everything that
starts with "marvell,caldata" and send the binary blindly to the WiFi
card.  Presumably there is enough of a header in the opaque binary
data that the card can make sense of what it's being sent.


So it seems like this is the best we can do given the current state of
the world.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
