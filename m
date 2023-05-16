Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 543A8704F8B
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:41:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233727AbjEPNlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233705AbjEPNlR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:41:17 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07D2D527B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=9xfd6NH3CoOxve18+7m506bfVoopAHGoLPPR40WYTWo=; b=UAl0vwed0WN7IqNzVgPpYra7sZ
        ux3l2VE1Ht8mNB/mnHX/VG3uef0I4qFVpXLbCM3e34KuYvZLCA8C0Q5u3AU1pt6NbKnY0b7PJKDCJ
        CmgmmTkq5kCo8ScoaJ37/7oVGb69UHVJ1CPQ76ZR8f8hKZIzYwaBhNiYwcvGlOHefXEc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1pyuvK-00D1Mn-99; Tue, 16 May 2023 15:41:06 +0200
Date:   Tue, 16 May 2023 15:41:06 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm: dts: update arm sfp bindings to use -gpios
Message-ID: <349b5851-e8ff-49d1-a58c-a3854cd41e82@lunn.ch>
References: <E1pyrIG-005B4H-VG@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1pyrIG-005B4H-VG@rmk-PC.armlinux.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 10:48:32AM +0100, Russell King (Oracle) wrote:
> It was decided that SFP should use the -gpios suffix rather than -gpio.
> Update various boards to follow this.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi | 6 +++---
>  arch/arm/boot/dts/armada-388-clearfog.dtsi     | 8 ++++----
>  arch/arm/boot/dts/vf610-zii-cfu1.dts           | 4 ++--
>  3 files changed, 9 insertions(+), 9 deletions(-)

Hi Russell

We probably want two patches, since there are two Maintainers
involved.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
