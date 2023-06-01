Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B140C719C22
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 14:29:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbjFAM3A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 08:29:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbjFAM3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 08:29:00 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11616133;
        Thu,  1 Jun 2023 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=OTsx+IOqxbYdUnQsgfql+uLXRlsYC1fAzy2R6BIpCx8=; b=e8/lNo1ypjP1KEshm7WVJlDFUL
        tQqn/KZGCuhfZPFNdjSNAqcU+2jwIxRHVOa2VInJ1CmeZUeBnwZ/x2SD3FRGvQVaKM3Qk6BuvZg7X
        IheD584crLZvrdy4wVkmoTLGB4pdNN4iAumLGITAzlYqKtCJA1Q7f0jE+rS0+kVmk6G4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1q4hQD-00EZ7V-HV; Thu, 01 Jun 2023 14:28:53 +0200
Date:   Thu, 1 Jun 2023 14:28:53 +0200
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
Message-ID: <8cc9699c-92e3-4736-86b4-fe59049b3b18@lunn.ch>
References: <e7a699fb-f7aa-3a3e-625f-7a2c512da5f9@sord.co.jp>
 <7d2c7842-2295-4f42-a18a-12f641042972@lunn.ch>
 <6e0c87e0-224f-c68b-9ce5-446e1b7334c1@sord.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e0c87e0-224f-c68b-9ce5-446e1b7334c1@sord.co.jp>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 01, 2023 at 09:29:01AM +0900, Atsushi Nemoto wrote:
> On 2023/05/31 23:35, Andrew Lunn wrote:
> >> The ADIN1200/ADIN1300 supports inverting the link status output signal
> >> on the LINK_ST pin.
> > 
> > Please could you add an explanation to the commit message why you
> > would want to do this?  Is this because there is an LED connected to
> > it, but its polarity is inverted?
> 
> Yes, the LINK_ST pin of AD1200/1300 is active-high but our custom
> board designer connected it to an LED as an active-low signal.

O.K. LED is the magic word here. And the fact that there is nothing
specific to this PHY. Being able to specify the polarity of an output
to an LED is pretty common.

Please take a look at:

ocumentation/devicetree/bindings/net/ethernet-phy.yaml

where it describes LEDs. Please add a generic DT property there for
everybody to use. See if the LED subsystem has a name for such a
property.

There is sufficient code in net-next to allow LED0 to be controlled in
a limited way. There are more patches coming soon which will give you
much more control.

Using LINK_ST to control an LED is not so easy to represent in the
current code because it appears you don't have manual control of the
LED, i.e. forced on/off. But you can offload functions when the new
code lands.

     Andrew
