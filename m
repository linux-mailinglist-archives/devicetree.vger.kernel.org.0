Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA93C2EC0BD
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 17:00:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbhAFQAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 11:00:49 -0500
Received: from mail-ua1-f46.google.com ([209.85.222.46]:43007 "EHLO
        mail-ua1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726458AbhAFQAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 11:00:48 -0500
Received: by mail-ua1-f46.google.com with SMTP id n18so1221535ual.9
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:00:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3M3RdL9VZv5fzeoztST100AAtV5IN+WNlMkYngQ6u54=;
        b=OIuwyo21UxsQdVyJRje/kPC1CwPdmP3lSRl38qFebXaX1ZuwQVwruDIC0IMMFPlrHm
         Ext4NZlN7kfoLF/jeMHsiHLUk6r+GGrgcPqgvrfrJfzI9sNadhYXOO5o2OmWY0E294D1
         coO5tvfQ4mR2YzDb7PulYslQ6nP4mWZYHVV9JoJUaR9wFQuFnDs0x1jJ/y9r0lDZ0LOU
         YBLsI7U9eoB7csTpfoUr1jsEgJAqx9OA7Vhq8l41y3H1oGZmQj084zPS/9uHLPOSfRT6
         mpYMe4Xp5S7KILfs73IOnRCARk5I4Lv0HXcQyuflhCDxEBjFKUjBIyITEhZpkY9xYnQ2
         HGnw==
X-Gm-Message-State: AOAM532/wcti6M0cm/j2z0L+4y3LwRY8UWQAkOIUvtFxrsBdqCIzcXgG
        HDh6hNEztZayNABaDk7BAGdzFEWkAxxkug==
X-Google-Smtp-Source: ABdhPJzmVEkgSng7v9QJjZInzj845QvWBdpqIKQNMDdYey3B88z1JbMhQ2OCb7g6XV3Re1wGweJwNw==
X-Received: by 2002:ab0:35d7:: with SMTP id x23mr4047735uat.119.1609948807428;
        Wed, 06 Jan 2021 08:00:07 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id l184sm424360vkb.21.2021.01.06.08.00.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 08:00:07 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id y25so1221492uaq.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:00:06 -0800 (PST)
X-Received: by 2002:ab0:7654:: with SMTP id s20mr4065213uaq.23.1609948806567;
 Wed, 06 Jan 2021 08:00:06 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-7-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-7-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 6 Jan 2021 23:59:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Fqoor9jZvSBTsuZEae-jPu2X3Um2QbJ1bYDX6jYqeKQ@mail.gmail.com>
Message-ID: <CAGb2v65Fqoor9jZvSBTsuZEae-jPu2X3Um2QbJ1bYDX6jYqeKQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 6/7] arm64: dts: allwinner:
 Pine64-LTS/SoPine: Enable HS200 eMMC mode
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 6, 2021 at 11:06 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The eMMC modules offered for the Pine64 boards are capable of the HS200
> eMMC speed mode, when observing the frequency limit of 150 MHz.
>
> Enable that in the DT.
>
> This increases the interface speed from ~80 MB/s to ~120 MB/s.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>
