Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D28902BFF11
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 05:44:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726610AbgKWEnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Nov 2020 23:43:09 -0500
Received: from mail.kernel.org ([198.145.29.99]:44698 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726533AbgKWEnI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 22 Nov 2020 23:43:08 -0500
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 178C72145D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 04:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606106588;
        bh=N9CgPsy/GKkA6kheIUAZo6mDCnC64qQEkraAJbE8EBU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=FNhEYBeuGMpj3EaUyGLRU4ePESm7r4vcn60PCa+fUFUiynYFb/RENvDVK0Izeo5Az
         6lceVXskq/a9RfxsMc8ozhzKLN8dOFI5LXlOvLpZRCCW97siZXZP50cUGEYWzqUl7L
         i+MlBOC2whMtPzOuaf2Rami/1dpu32FPX+KJmD7s=
Received: by mail-lj1-f182.google.com with SMTP id o24so16558087ljj.6
        for <devicetree@vger.kernel.org>; Sun, 22 Nov 2020 20:43:07 -0800 (PST)
X-Gm-Message-State: AOAM5338cxxXRsSP53Os0la8OmZRlmwyqSXy+EA8BBxBDeM7z6MnjpIf
        usswFeix8p9Urxd86nx6nS23lhCWV5OCH5Mq7BQ=
X-Google-Smtp-Source: ABdhPJzF4f13knssj9mksoeAlBUo6xW8kPdFjGGZNAnAptiy/S0HAUrKBxjBa5ln4RlZIzx2Pq9FwwSMBIf6OiuHeX4=
X-Received: by 2002:a2e:3c1a:: with SMTP id j26mr12833065lja.294.1606106586372;
 Sun, 22 Nov 2020 20:43:06 -0800 (PST)
MIME-Version: 1.0
References: <20201025140144.28693-1-ats@offog.org> <20201025163429.GH792004@lunn.ch>
In-Reply-To: <20201025163429.GH792004@lunn.ch>
From:   Chen-Yu Tsai <wens@kernel.org>
Date:   Mon, 23 Nov 2020 12:42:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+nwg5_nNPbMOFapkM9jBpTddpqn=5N6be8rJAGNJ4Gw@mail.gmail.com>
Message-ID: <CAGb2v66+nwg5_nNPbMOFapkM9jBpTddpqn=5N6be8rJAGNJ4Gw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable
 RGMII RX/TX delay on PHY
To:     Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Adam Sampson <ats@offog.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 26, 2020 at 12:34 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Sun, Oct 25, 2020 at 02:01:44PM +0000, Adam Sampson wrote:
> > The RX/TX delays for the Ethernet PHY on the Linksprite pcDuino 3 Nano
> > are configured in hardware, using resistors that are populated to pull
> > the RTL8211E's RXDLY/TXDLY pins low or high as needed.
> >
> > phy-mode should be set to rgmii-id to reflect this. Previously it was
> > set to rgmii, which used to work but now results in the delays being
> > disabled again as a result of the bugfix in commit bbc4d71d6354 ("net:
> > phy: realtek: fix rtl8211e rx/tx delay config").
> >
> > Tested on two pcDuino 3 Nano boards purchased in 2015. Without this fix,
> > Ethernet works unreliably on one board and doesn't work at all on the
> > other.
> >
> > Fixes: 061035d456c9 ("ARM: dts: sun7i: Add dts file for pcDuino 3 Nano board")
> > Signed-off-by: Adam Sampson <ats@offog.org>
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Looks like none of the maintainers were listed in the recipients.

Acked-by: Chen-Yu Tsai <wens@csie.org>
