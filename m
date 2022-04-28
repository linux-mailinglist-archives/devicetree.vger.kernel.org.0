Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B9C513F0B
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 01:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353269AbiD1XaE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 19:30:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbiD1XaC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 19:30:02 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF887BCB5D
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 16:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=J2DaY/L9lR+odLjYmINpHt4Diez0fj7s9J9Uzcl4Ln0=; b=6KnF6zerY+KrTa1cLe6DCvGd5y
        GZXEPgoOzzmFz/0GOMR5X0/NE/IW7oooQM0FUyv7PT3kdCmG/0iOgB4LOA7uP54hHjJtmwc9dykRR
        wY9wL+iBkis6PnYNZHYEXfdUgoyOaJxaVyoBLbDGG3qHSlHFovaRahU8Ydcjs7QiQGog=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1nkDWz-000OOo-Bt; Fri, 29 Apr 2022 01:26:41 +0200
Date:   Fri, 29 Apr 2022 01:26:41 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
Message-ID: <YmsisTq28nsSlf3k@lunn.ch>
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <YmndWe63ELJbQe20@lunn.ch>
 <b9c7eb81-c49e-76bf-5b49-b97cb5c2b03d@ext.kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b9c7eb81-c49e-76bf-5b49-b97cb5c2b03d@ext.kapsi.fi>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 28, 2022 at 11:25:00PM +0300, Mauri Sandberg wrote:
> Hello Andrew!
> 
> On 28.4.2022 3.18, Andrew Lunn wrote:
> > > > - there is no concensus on how to get ascii formatted MAC address from mtd
> > > >    partitions so eth is not fully functional without setting the MAC from
> > > >    userspace
> > > 
> > > Ideally this is handled by the boot loader, but that requires being
> > > able to update
> > > it.
> > 
> > The mv643xx Ethernet driver is happy if it finds the MAC address
> > already in the hardware. The vendor uboot often does this. Does tftp
> > boot work in uboot? That would indicate it has access to the MAC
> > address.
> 
> The u-boot is really limited and I am transferring new images over kermit.

Ouch!

If you can, try kexec. You can use wget or similar to grab the kernel
from you host machine, and then something like:

kexec --append 'rootwait ro earlyprintk console=ttyS0,115200n8' bzImage

wget will be much faster then kernel.

      Andrew
