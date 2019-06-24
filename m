Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 354B45047E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 10:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727941AbfFXI0C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 04:26:02 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:34777 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727915AbfFXI0B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 04:26:01 -0400
Received: by mail-ed1-f65.google.com with SMTP id s49so20546327edb.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 01:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DFx+u8Hv+BOb0EK9xMZmf7jmPmizuag84beBkFgrFP0=;
        b=afiKB66nWtXtjehQ2nWHyk5po0S7znH4Jri94xrucNUBdYLbEhBrVZh9tdMstQWKmc
         GCT3TElBFVKAMnzmXwp9V2TlxNVXO8swVc6W7S8zbwISMHR9mec3ZOD+lwSGaJhN6LMH
         3LdV8keOQzrZDDXfc6FHHAKN5pNke2f9CkUrl/VbyGO1eeJ0LCQM26eBAeGYqIkY3bxi
         fnIlNTyNWrgUIZQuA1q5lfsVJ0TlQeXRMpSjG7nCflY0ZmywRknd9F7DNWbB58mIfbrU
         m8VkOej79liXCsAO6f1EMT8g8cMZLYtp4dGKan3lKLlL1uZ29gA/uJSLoKgj2LAR1NBQ
         NdtQ==
X-Gm-Message-State: APjAAAXpohhexDidJFLG82pr5Dx33NjvnB0wXCDxvo0Pj/4gzgZtGImP
        CSPcBdkTxOWAVpGyQFBE6V1E2buJWY0=
X-Google-Smtp-Source: APXvYqzoRv2aVf0/oNl6EASMGt4zGw93CF/AI5AQRREjZSbyzmeODMqdED0/TtPHx1djmE2Fnfg+ZQ==
X-Received: by 2002:a50:fa96:: with SMTP id w22mr64267244edr.45.1561364758138;
        Mon, 24 Jun 2019 01:25:58 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id s5sm3427096edh.3.2019.06.24.01.25.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id g135so11849405wme.4
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
X-Received: by 2002:a1c:f512:: with SMTP id t18mr14397236wmh.47.1561364757389;
 Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
In-Reply-To: <20190620010127.12071-1-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 24 Jun 2019 16:25:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Message-ID: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh@kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> In recent Allwinner SoCs the first USB host controller (HCI0) shares
> the first PHY with the MUSB controller. Probably to make this sharing
> work, we were avoiding to declare this in the DT. This has two
> shortcomings:
> - U-Boot (which uses the same .dts) cannot use this port without a PHY
>   linked, so we were loosing one USB port there.
> - It requires the MUSB driver to be enabled and loaded, although we
>   don't actually use it.
>
> For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> a "phys" property pointing to the USB PHY 0.
>
> This makes it work in U-Boot, also improves compatiblity when no MUSB
> driver is loaded (for instance in distribution installers).
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
> Hi,
>
> I have the feeling this belongs into the .dtsi, but cant't tell for sure
> how this interacts with the MUSB driver. If need be, we can always pull
> this up later, I guess.

Have you tried if gadget mode and switching between gadget/host mode on
an otg port still works? AFAICT that would be the main thing to worry
about.

ChenYu
