Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F4671A0C2
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 16:46:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234022AbjFAOqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 10:46:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233476AbjFAOqJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 10:46:09 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943841B8;
        Thu,  1 Jun 2023 07:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=IJraWmBz2FGOkaRVvEzdCi4XIpNpPPZ+vqMbPQx049U=; b=iwa5TzwFZPl38zgrgCn8MJY5uK
        sCWGYH/y4KZHTcJeYUU+0CO9cuMeRb19sXom1btoMYtU9oDonY7FePXwA3Cw6mpfo5Iok5eNaf/lu
        HQDI5uWxS6xwNBvKd+EO7OeCRAvEyRQfypBhHCrcGyzwFp6Ff7MYewqlD2aYWYxXJIuM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1q4jYr-00EZrg-Gu; Thu, 01 Jun 2023 16:45:57 +0200
Date:   Thu, 1 Jun 2023 16:45:57 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Atsushi Nemoto <atsushi.nemoto@sord.co.jp>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Michael Hennerich <michael.hennerich@analog.com>,
        Alexandru Tachici <alexandru.tachici@analog.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: adin: document a phy
 link status inversion property
Message-ID: <feae1f84-36fd-437e-8b2f-9c058ba1e989@lunn.ch>
References: <e7a699fb-f7aa-3a3e-625f-7a2c512da5f9@sord.co.jp>
 <7d2c7842-2295-4f42-a18a-12f641042972@lunn.ch>
 <6e0c87e0-224f-c68b-9ce5-446e1b7334c1@sord.co.jp>
 <8cc9699c-92e3-4736-86b4-fe59049b3b18@lunn.ch>
 <50ae1bda-3acf-8bce-c86c-036bc953c730@sord.co.jp>
 <cc5cae94-effa-4246-85b8-8d3ec8fada66@lunn.ch>
 <919bdf79-1b53-9578-b428-a8ad969ef0d6@sord.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <919bdf79-1b53-9578-b428-a8ad969ef0d6@sord.co.jp>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 01, 2023 at 11:17:52PM +0900, Atsushi Nemoto wrote:
> On 2023/06/01 22:36, Andrew Lunn wrote:
> >> But in this case, LINK_ST is also connected to MII_RXLINK pin of
> >> the MAC module in SoC. MII_RXLINK also expects low-active signal input.
> >> (though I only wrote about LED, sorry)
> > 
> > This is why the Commit message should contain the answer to 'Why?'.
> > The code tells us 'What', but without knowing the 'Why', it is hard to
> > say if you are doing the right or wrong thing.
> 
> Yes, then how about this?
> ---
> The LINK_ST is active-high by default. This can be inverted by the
> GE_LNK_STAT_INV_REG register, meaning that link up is indicated by
> setting LINK_ST low.

O.K. So far. But the rest still does not explain why. So i suggest
adding....

One application of this PHY is connecting it to the PRU in TI Sitara
SoC. This MAC requires a hardware indication of link, rather than the
usual phylib callback via adjust link. And this input is active-low.
Add a property to indicate that LINK_ST be configured active low.

> Please look at a block diagram in this page:
> https://software-dl.ti.com/processor-sdk-linux/esd/docs/latest/linux/Foundational_Components/PRU-ICSS/Linux_Drivers/PRU-ICSS_Ethernet.html

We are now getting close to having all the pieces of the puzzle to
decide if this is the right or wrong way to do this.

This appears to be the 'Vendor Crap' driver. You are patching mainline
here, so it is the mainline PRU driver we care about:

https://lore.kernel.org/netdev/20230424053233.2338782-1-danishanwar@ti.com/T/

Looking at the device tree binding, it uses the standard phy-handle,
phy-mode properties. There is also emac_adjust_link() which is used by
phylib to tell the MAC driver the link is down.

So you now need to convince me this change is actually needed in
mainline.

Thanks
	Andrew
		

