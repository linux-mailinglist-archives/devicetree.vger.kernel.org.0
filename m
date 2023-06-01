Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 931CE719E5B
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 15:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbjFANg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 09:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232329AbjFANg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 09:36:28 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB68FFC;
        Thu,  1 Jun 2023 06:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=shzvooHZOscQvZXZbJ0Gs9GP3oft87pP/A4YtSkQxY4=; b=xKqECrFD1kn7VU+3gBcD3mWVUp
        pjxLjhvaIdKnD47wU8S7O5e+NUAzGx/Ll2hzsSiNoo7IA4c+3HDaXU1x9ty3C88BO9A4A+JLpbezj
        fiUqhuuZGJxdqjUku6udQ6AMSiQV8cVkPaG4SyYvkVob/B6jia+ycE09fuOrPztW3i9A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1q4iTV-00EZUf-M9; Thu, 01 Jun 2023 15:36:21 +0200
Date:   Thu, 1 Jun 2023 15:36:21 +0200
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
Message-ID: <cc5cae94-effa-4246-85b8-8d3ec8fada66@lunn.ch>
References: <e7a699fb-f7aa-3a3e-625f-7a2c512da5f9@sord.co.jp>
 <7d2c7842-2295-4f42-a18a-12f641042972@lunn.ch>
 <6e0c87e0-224f-c68b-9ce5-446e1b7334c1@sord.co.jp>
 <8cc9699c-92e3-4736-86b4-fe59049b3b18@lunn.ch>
 <50ae1bda-3acf-8bce-c86c-036bc953c730@sord.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50ae1bda-3acf-8bce-c86c-036bc953c730@sord.co.jp>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> But in this case, LINK_ST is also connected to MII_RXLINK pin of
> the MAC module in SoC. MII_RXLINK also expects low-active signal input.
> (though I only wrote about LED, sorry)

This is why the Commit message should contain the answer to 'Why?'.
The code tells us 'What', but without knowing the 'Why', it is hard to
say if you are doing the right or wrong thing.

O.K. so the signal is also connected to the SoC. Why? This is very
unusual. The MAC does not really care if there is link or not, it just
sends a bitstream to the PHY. phylib will be monitoring the PHY and
when it detects the link is down it will tell the MAC via the
adjust_link callback.

What SoC is this?

> AD1200/AD1200 have another LED_0 pin and it should be appropriate for
> the LED subsystem.

Agreed.

	Andrew
