Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBBF9679532
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:30:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231828AbjAXKab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:30:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjAXKaa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:30:30 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F14F12ED4F
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674556229; x=1706092229;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=spYBhvAold+3ucIlPRHp8mP16oH0Wx+85EfP26eKzd8=;
  b=UcMPXXqS0cay05AVOXitsXW+n8WgylI0Zw8ruVSSW5jWCAeSmZUYNBis
   mTwN9Q/sknImIpNVhqhTv8B3j9OVybSvxVGC3ZduAdolDP1R/REISX6Xn
   zE0ZTQ6aamGPKI4L6iLIXXEkF0deFFt39Rbwf9rq18zFS4rnX3A4S47VF
   0GeZxvkD6vzeO/piAwTVVrfMct2/4EzkRCmXQiCIWSfBLtn7a0a7eaKSI
   fkqE91l0icHUtk5XzSUJcu/EXTKhpzZCh5lYIBOwZii2vR+EftYc3s47i
   z/Fu/jWqj9N0+viczLHFbDS9aXu0xH5e1us4wsgMkCAozCMvwyqldhVb7
   g==;
X-IronPort-AV: E=Sophos;i="5.97,242,1669071600"; 
   d="scan'208";a="28615291"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 24 Jan 2023 11:30:25 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 24 Jan 2023 11:30:26 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 24 Jan 2023 11:30:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674556226; x=1706092226;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=spYBhvAold+3ucIlPRHp8mP16oH0Wx+85EfP26eKzd8=;
  b=asWx9map494EIt3UpH8qZhC9rHF3BCLEl/nSto0aUG0qZ9iYGTd4BS8G
   1Y8hr2bPZ7beYwjnhC33ETNip3T2SDV9BaT1MfL/RDs8EiuVWldZQ3ntS
   WcAccYmlAEojwcJ8I7Y+IKexNcpXv7BgJ4jnaztdJ0vt3E57xLxnxnQ5m
   o/S9gJOaBOjWNyTiHSbCxYCS1lQg6kkUE5eLnrtNfHElIHFs1QKrTASZh
   vlkIovwND72FUqAosxzUuykEp3+uQV//sGPHD+Ctveh5p+BxzOX8to0BY
   JYLZXqkxb6v/G+2h9pVM1fFgCCyaNl2NKUlDaPisleAJKmr9Qucashsds
   A==;
X-IronPort-AV: E=Sophos;i="5.97,242,1669071600"; 
   d="scan'208";a="28615287"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Jan 2023 11:30:24 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 07463280056;
        Tue, 24 Jan 2023 11:30:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 9/9] [DNI] ARM: multi_v7_defconfig: Enable CONFIG_ARM_LPAE for multi_v7_config
Date:   Tue, 24 Jan 2023 11:30:23 +0100
Message-ID: <4775166.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <7ab893a2-2b4f-47c3-be42-684c3d8ceb5f@app.fastmail.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com> <3629553.RUnXabflUD@steina-w> <7ab893a2-2b4f-47c3-be42-684c3d8ceb5f@app.fastmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

Am Freitag, 20. Januar 2023, 15:00:35 CET schrieb Arnd Bergmann:
> On Fri, Jan 20, 2023, at 13:43, Alexander Stein wrote:
> > Am Donnerstag, 19. Januar 2023, 17:07:30 CET schrieb Arnd Bergmann:
> >> On Thu, Jan 19, 2023, at 16:27, Alexander Stein wrote:
> >> 
> >> In particular, it seems that the memory map of the PCI address
> >> spaces is configurable, but only within that area you listed.
> >> I see that section "28.4.2 PEX register descriptions" does list
> >> a 64-bit prefetchable address space in addition to the 32-bit
> >> non-prefetchable memory space, but the 64-bit space is not
> >> listed in the DT. It would be a good idea to configure that
> >> as well in order for devices to work that need a larger BAR,
> >> such as a GPU, but it wouldn't help with fitting the PCIe
> >> into non-LPAE 32-bit CPU address space.
> > 
> > I'm not sure if I can follow you here. Do you have some keywords of what's
> > missing there?
> 
> Prefetchable_Memory_Base_Register, section 28.4.2.20 in the
> document you pointed me to.
> 
> PCIe addressing is usually split up into I/O space (kilobytes of
> registers), non-prefetchable memory space (megabytes of registers
> and memory and prefetchable 64-bit memory space (gigabytes of
> device memory).
> 
> The prefetchable space is indicated by bit '30' of the first
> word in the ranges property, so if that is configured, you
> would see a third line there starting with 0xc2000000 or
> 0x42000000. Without this, PCIe cards that have prefetchable
> BARs fall back to the non-prefetchable one, which may be
> too small or less efficient. This is usually only relevant
> for framebuffers on a GPU, but there are probably other
> devices as well.

Thanks for the explanation, although I'm still lacking deeper knowledge how to 
configure PCIe properly.
I tried adding the following line in the 'ranges' property:
> <0xc2000000 0x0 0x20000000 0x40 0x20000000 0x0 0x20000000>, /* prefetchable 
memory */
which was taken from the old example in Documentation/devicetree/bindings/pci/
layerscape-pci.txt, removed in Commit a3b18f5f1d42e ("dt-bindings: pci: 
layerscape-pci: define AER/PME interrupts", 2022-03-11).
But I couldn't detect any difference, maybe it's just due to my PCIe devices I 
have available.

> >> In the datasheet I also see that the chip theoretically
> >> supports 8GB of DDR4, which would definitely put it beyond
> >> the highmem limit, even with the 4G:4G memory split. Do you
> >> know if there are ls1021a devices with more than 4GB of
> >> installed memory?
> > 
> > Where did you find those 8GB? Section 16.2 mentions it supports up to 4
> > banks/ chip-selects which I would assume is much more. Also the memory
> > map has a DRAM region 2 for memory region 2-32GB. But yes this exceeds
> > 32bit addressing. I'm not aware of ls1021 devices with more than 4GB
> > memory. Our modules only support up to 2GB.
> 
> I think I misread this, as section 2.2 mentions you can have
> four chip-selects that are limited to either 2GB or 8GB each,
> for a theoretical maximum of 26GB. As long as the practical
> limit is 4GB or less, I think we're fine here. Linus Walleij
> has is working on a prototype for changing the memory
> management code to handle up to 4GB of contiguous RAM without
> highmem, which will become relevant in the future as we get
> rid of highmem support. On this chip, the first 4GB of
> installed memory are not contiguous in the physical address
> space, so this will need another set of patches on top.
> 
> As long as you only use the first chip-select with 2GB
> of installed memory, very little will change for you.
> 
> It might be worthwhile to check if your system works
> correctly with ARM_LPAE=y, VMSPLIT_2G=y and HIGHMEM=n,
> which should be the best configuration for your system
> anyway and will keep working after highmem gets removed.

Thanks for that hint. Having this setting the board seems to still run like it 
should.

Best regards,
Alexander



