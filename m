Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB3FB6754D6
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 13:43:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbjATMnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 07:43:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjATMna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 07:43:30 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39776422C
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 04:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674218609; x=1705754609;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JN8ajwXrj642G4YxWODrXWlILk4BXwrwlIJtEA6ptZI=;
  b=E+FXopw6oNWvDqP2rCqtkQlO1HoIP+hbu3W/TLuzvqzjLk87zxzI8aV4
   0OrMTJ4M4ZPuHcHaBqiU2Ofb3jOhshA/BOi/lJ6fRa5r4vhDYnUADCcne
   3OPFX9DqlBsm8iThoNs0tYgmTbhscwJiAX/0t2yuZ7c8jdDi64lmlqmuK
   IqW+BGVxPYsG6SSAlcrdDmtkAVoKb8GmDzsHMLDscJ5vWgbHo/Sl0/Zup
   0VQ60kd668MCjqK1vnaWGrxF24ckXEVtHTNwXUSF3cyD/nxK83QdpWwV8
   gqZIkAND/t4g5oEtjMQN0vXq0/ENp4g5IWUo8IP1Fr7YSS/2rkkcgLb4i
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,232,1669071600"; 
   d="scan'208";a="28559993"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 20 Jan 2023 13:43:27 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 20 Jan 2023 13:43:27 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 20 Jan 2023 13:43:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674218607; x=1705754607;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JN8ajwXrj642G4YxWODrXWlILk4BXwrwlIJtEA6ptZI=;
  b=m3iisd6tyEiZvf/a9fXJ3fgOgLloyNHPNOINcnghTsVUOKJC53dxcZCh
   eSvpI0rhXBPVARX74QQxPcEo22eIFuVizBAnpDFSPLNPaBmj9hM9BjL/N
   7sM2SblCS9ObWQ26ZS52nHu71Mj2rpLHF+ZXtzKUzxoNLnG2fDxnVErdN
   Hc7PzfBZieBSLF3lgxmrUw96NwXYGeezQfBGKRGwpMiMlGxc3MtNEo4rc
   V8PDuJ5MYoayU9PDq2ZoaOvhqmGmLxKPc1bRxKttEytXKeimPHZsebjLW
   D4jQ41iAFci1IVJFp6h1lJwsMX2t9aiQdqfVKK19G9Fz/Lp0Eb+PT+2TB
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,232,1669071600"; 
   d="scan'208";a="28559992"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Jan 2023 13:43:26 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9BA23280056;
        Fri, 20 Jan 2023 13:43:26 +0100 (CET)
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
Date:   Fri, 20 Jan 2023 13:43:26 +0100
Message-ID: <3629553.RUnXabflUD@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <9e2aa58c-10dc-49d0-a492-4d724cf29c2b@app.fastmail.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com> <2617470.BddDVKsqQX@steina-w> <9e2aa58c-10dc-49d0-a492-4d724cf29c2b@app.fastmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

Am Donnerstag, 19. Januar 2023, 17:07:30 CET schrieb Arnd Bergmann:
> On Thu, Jan 19, 2023, at 16:27, Alexander Stein wrote:
> > Am Donnerstag, 19. Januar 2023, 16:09:05 CET schrieb Arnd Bergmann:
> >> On Thu, Jan 19, 2023, at 15:42, Alexander Stein wrote:
> >> > This is necessary to support PCIe on LS1021A.
> >> >=20
> >> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> >>=20
> >> Can you explain why this is actually required? I can see that the
> >> ranges in the PCIe device point to a high address (0x4000000000,
> >> 2^40), but I can't tell if this is hardwired in the SoC or a
> >> setting that is applied by software (either the bootloader or
> >> the PCIe driver).
> >=20
> > The RM ([1]) memory map (Table 2-1) says that 'PCI Express 1' is located
> > at
> > '400000_0000', 'PCI Express 2' at '480000_0000', so I assume this is
> > hardcoded in SoC.
> > It also explicitly lists in that table PCIe 1&2 is only accessible with
> > 40-bit addressing.
> >=20
> >> If you can reprogram the memory map, I would expect this to fit
> >> easily into the 32-bit address space, with 1GB for DDR3 memory
> >> and 1GB for PCIe BARs.
> >=20
> > I'm not sure which part of memory map you can reprogram and where, but I
> > guess this is fixed on this SoC.
>=20
> Ok, I see it now. It looks like they fell victim to the
> cursed "Principles of ARM=AE Memory Maps White Paper"
> document and messed it up even further ;-)
>=20
> In particular, it seems that the memory map of the PCI address
> spaces is configurable, but only within that area you listed.
> I see that section "28.4.2 PEX register descriptions" does list
> a 64-bit prefetchable address space in addition to the 32-bit
> non-prefetchable memory space, but the 64-bit space is not
> listed in the DT. It would be a good idea to configure that
> as well in order for devices to work that need a larger BAR,
> such as a GPU, but it wouldn't help with fitting the PCIe
> into non-LPAE 32-bit CPU address space.

I'm not sure if I can follow you here. Do you have some keywords of what's=
=20
missing there?

> In the datasheet I also see that the chip theoretically
> supports 8GB of DDR4, which would definitely put it beyond
> the highmem limit, even with the 4G:4G memory split. Do you
> know if there are ls1021a devices with more than 4GB of
> installed memory?

Where did you find those 8GB? Section 16.2 mentions it supports up to 4 ban=
ks/
chip-selects which I would assume is much more. Also the memory map has a D=
RAM=20
region 2 for memory region 2-32GB. But yes this exceeds 32bit addressing.
I'm not aware of ls1021 devices with more than 4GB memory. Our modules only=
=20
support up to 2GB.

Best regards,
Alexander



