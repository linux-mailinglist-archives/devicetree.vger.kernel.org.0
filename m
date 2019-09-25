Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C817BE86D
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 00:47:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729644AbfIYWri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 18:47:38 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:35673 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725804AbfIYWri (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 18:47:38 -0400
Received: by mail-pg1-f196.google.com with SMTP id a24so201855pgj.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 15:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=i+W79Fs+JtLmvj8CWOzkvZTsSvzosH+D6ZGyUem3ZnA=;
        b=QiOYkbRmVsN0NOymJrZmyNk1Aqs67OzdvJqNVdBgR1dAcP4rnJgsfYdIiaSEoto46F
         Jz05CrdMfASGsfvx5uv5JpHJk/u8jtuxC7qN8ceDRcUwoV+tZQ/pzFDvo9ENX/IOInt1
         F21xWgdJ446psjlOHyUlz8fTjAqdrTpwK8msB0hKdgsYgf2cGR6fEc7iDCD3shAxGd1W
         aXm7YRXOtY4TbhADrjU9hMXBWsaEJVy+8InX35P8rxGIA/P+2i8iB6cLsaa9mxgb/GJb
         /QejV4k2p03XCnSOcWdeEaWORIHuF4vrHU1GFW1bVSrrlWcx/stVQYHCq0DIVxhfDffB
         Y/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=i+W79Fs+JtLmvj8CWOzkvZTsSvzosH+D6ZGyUem3ZnA=;
        b=hKGcdkx8HiLx71cTg+nOz1GiPoLhkhiKAE1DRRrtzfBnyJCP0PoLT+H6NKBHucQJWh
         dJWgg+rZxXFrWXCpyOxVX07rYcD3hhxH9YTiVEKsC7C/2YWtzJJ2snCoLKQUMEZIAIru
         BtjRRlWuXY8T+do+lsimL14NICkonv1UtoCwa25ftsU+N09kIdZOZ3m412juDgL68nKY
         Iw79+KfVeVAqnInPx6WdrlWKP2qh7nT9145esgPYbVT/51YgkMHUrifrxqAoZkxUV35d
         IgJiSYxCtf/JuGJuRDYKygb+nwm06g6KqQc1pAf0Q43oa+/fa7PzKQ6gCYdX0w2BVyXI
         BELg==
X-Gm-Message-State: APjAAAUhbRfKOoDkBUPmz/v/UFLxJsHy8XvYhhjLEzrK+i0+GFZi7QTn
        3DyCHGTiItsbdSTt1RHwhh3Ygw==
X-Google-Smtp-Source: APXvYqz9kGKfiISSY6GKYU59WSD/o/ecZYyCnkLsLXzxHGjEjI0j1FcxGdHUuVDusWLEWSDsnbyIGQ==
X-Received: by 2002:a17:90a:d792:: with SMTP id z18mr106795pju.60.1569451655789;
        Wed, 25 Sep 2019 15:47:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id bb15sm205894pjb.2.2019.09.25.15.47.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Sep 2019 15:47:35 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>, robh+dt@kernel.org,
        mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
In-Reply-To: <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com> <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com> <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
Date:   Wed, 25 Sep 2019 15:47:34 -0700
Message-ID: <7h7e5wt2m1.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Jerome,
>
> On Mon, Sep 23, 2019 at 11:29 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>> On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>>
>> > So far the HHI clock controller has been providing the XTAL clock on
>> > Amlogic Meson8/Meson8b/Meson8m2 SoCs.
>> > This is not correct because the XTAL is actually a crystal on the
>> > boards and the SoC has a dedicated input for it.
>> >
>> > This updates the dt-bindings of the HHI clock controller and defines
>> > a fixed-clock in meson.dtsi (along with switching everything over to
>> > use this clock).
>> > The clock driver needs three updates to use this:
>> > - patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
>> >   the explicit reference to CLKID_XTAL while at the same time making
>> >   the code much easier (thanks to Neil for providing this new method
>> >   as part of the G12A CPU clock bringup!)
>> > - patch #3 ensures that the clock driver doesn't rely on it's internal
>> >   XTAL clock while not losing support for older .dtbs that don't have
>> >   the XTAL clock input yet
>> > - with patch #4 the clock controller's own XTAL clock is not registered
>> >   anymore when a clock input is provided via OF
>> >
>> > This series is a functional no-op. It's main goal is to better represent
>> > how the actual hardware looks like.
>>
>> I'm a bit unsure about this series.
>>
>> On one hand, I totally agree with you ... having the xtal in DT is the
>> right way to do it ... when done from the start
> yep
>
>> On the other hand, things have been this way for years, they are working
>> and going for xtal in DT does not solve any pending issue. Doing this
>> means adding complexity in the driver to support both methods. It is
>> also quite a significant change in DT :/
> my two main motivations were:
> - keeping the 32-bit SoCs as similar as possible to the 64-bit ones in
> terms of "how are the [clock] drivers implemented"
> - with the DDR clock controller the .dts looked weird: &ddr_clkc took
> CLKID_XTAL from &clkc as input and &clkc took DDR_CLKID_DDR_PLL as
> input from &ddr_clkc
>
> RE complexity in the driver to support both:
> I still have a cleanup of the meson8b.c init code on my TODO-list
> because we're still supporting .dtbs without parent syscon
> my plan is to drop that code-path along with the newly added fallback
> for "skip CLKID_XTAL" (assuming this is accepted) together for v5.6 or
> v5.7

TBH, I'm big(ish) "functional no-op" changes like this are not things I
get super exicted about, especially for SoCs that have been working well
for awhile, and are do not have a large (upstream) userbase.

OTOH, since Martin is doing most of the heavy lifting for keeping this
platform working upstream, I'm happy to take the changes, as long as
Martin is willing to deal with any fallout.

Kevin
