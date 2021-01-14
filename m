Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B0832F5A29
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 06:06:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbhANFFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 00:05:12 -0500
Received: from mail-lf1-f49.google.com ([209.85.167.49]:34427 "EHLO
        mail-lf1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725963AbhANFFM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 00:05:12 -0500
Received: by mail-lf1-f49.google.com with SMTP id o19so6289341lfo.1
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fUTkhHC1wURjsWtBYGfkj2eWYGmTa+0Kj57mwUXnRUM=;
        b=UbRt/JS+2uqbzjFhN4RMD2hT6940Q8JMUp4ji5QFxBhsatHpilaCZrT3sZtt1tPmoU
         Id/fug7hP7u6FZA6Jiq0+sKByIPJ22m5g33x3fzli/Q0YazIH8KTlovzhGH9dxqyBxte
         Jb+d38UT3LxErbdE9a8q0LEnV5sSQFfpUOwmCyg/kD84Ww5n+YAEEp8XGYc2ZZOb1nWe
         k1SgMM09ZfgVO0Xjcwxxo3J8Reaa0rAImSecCoXpGwY8iTumM7SapjGxBcsbNzg1aEC7
         deDoHw9Boogg3konaoqigIDtcXOv0LGhqdETj20lujnhP6RB9IRTjmJPBPxYlMmzLNs2
         C7hA==
X-Gm-Message-State: AOAM530nOQlN2E7LmHWXy35fgIVvdOoSdwugIdvoghdyzFlDQkFInwWt
        80VJpf2MMbSkzf+nJFIswM+x2Yl+bbAQbw==
X-Google-Smtp-Source: ABdhPJw9+WPXmd1QmrGzL+dXuAFYTo8QzXVWcU2RvzOoKHJXuaRIzP/2fVdXs1kPFQifv6S9tq/6XA==
X-Received: by 2002:a19:4941:: with SMTP id l1mr2450347lfj.80.1610600670327;
        Wed, 13 Jan 2021 21:04:30 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id h6sm424003lfj.285.2021.01.13.21.04.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 21:04:29 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id m13so5040281ljo.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 21:04:29 -0800 (PST)
X-Received: by 2002:a2e:3503:: with SMTP id z3mr2523852ljz.74.1610600669469;
 Wed, 13 Jan 2021 21:04:29 -0800 (PST)
MIME-Version: 1.0
References: <20210113152630.28810-1-andre.przywara@arm.com>
In-Reply-To: <20210113152630.28810-1-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Thu, 14 Jan 2021 13:04:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v65V+MFm-0Psyd-m5PaXW_guUBb6THFfD_bacgS07q8+=w@mail.gmail.com>
Message-ID: <CAGb2v65V+MFm-0Psyd-m5PaXW_guUBb6THFfD_bacgS07q8+=w@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 0/8] arm64: dts: allwinner: Various DT fixes
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 11:27 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> Hi,
>
> small update, mostly adding Fixes: tags.
> Patch 1/7 has been split up to cover A64 and H6 separately.
>
> I tried to reach out to people with Pine64-LTS boards to clarify on
> the blue LED, as it seems like production boards are spread thinly
> across developers. We got confirmation from several people with
> several board revisions that this LED works and is indeed blue.
>
> I also double checked on the CD pin situation on the two SoPine SOMs
> I have, and could confirm their functionality.
>
> Rebased on top of sunxi/dt-for-5.12.
>
> ================
> a collection of DT fixes I gathered over time:
>
> - Adding usbphy references to [EO]HCI0 nodes (A64, H6)
> - Adding Pine64-LTS status LED
> - Dropping non-removable from SoPine/Pine64-LTS SD card
> - Enabling HS200 @ 150 MHz on Pine H64 (H6)
> - Enabling HS200 @ 150 MHz on Pine64-LTS
>
> For details please see the individual patches!
>
> Thanks,
> Andre
>
> Changelog v1 .. v2:
> - Add Fixes: tags
> - Add Chen-Yu's ACKs
> - split USB PHY 0 link patch
>
> Andre Przywara (8):
>   arm64: dts: allwinner: A64: properly connect USB PHY to port 0
>   arm64: dts: allwinner: H6: properly connect USB PHY to port 0
>   arm64: dts: allwinner: Pine64-LTS: Add status LED
>   arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card
>   arm64: dts: allwinner: H6: Allow up to 150 MHz MMC bus frequency
>   arm64: dts: allwinner: A64: Limit MMC2 bus frequency to 150 MHz
>   arm64: dts: allwinner: Pine64-LTS/SoPine: Enable HS200 eMMC mode
>   arm64: dts: allwinner: Pine H64: Enable HS200 eMMC mode

Everything looks good to me.

Acked-by: Chen-Yu Tsai <wens@csie.org>
