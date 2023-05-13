Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA60970178B
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 15:53:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239177AbjEMNxX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 09:53:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238993AbjEMNxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 09:53:19 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82A5D273D
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 06:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=eVxAwfwWKkMik39y0v5qls1SqvSpd1SB1UNQ+N+ALJA=; b=yDY2fLGKkKALtMUaAmw1MRJHAq
        WbNYh7WqtqTWh887uUoAqRzbDjKyupQARwS2YmGtqK60mRMR/tkhLvICb306obB4qW77SKfY34rxM
        SziSChjFta1O8ur/LZAPWDUM8sCAH2qSugyJhwuBgwA+COQXpSeZmcMgijNZrcPdtiWs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1pxpgN-00CkuT-1K; Sat, 13 May 2023 15:53:11 +0200
Date:   Sat, 13 May 2023 15:53:11 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: armada388-clearfog: add missing phy-modes
Message-ID: <7e9ac2ac-19e2-4664-8f47-7aa82ea1885e@lunn.ch>
References: <E1pxmNQ-0034DX-Jo@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1pxmNQ-0034DX-Jo@rmk-PC.armlinux.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 13, 2023 at 11:21:24AM +0100, Russell King (Oracle) wrote:
> The DSA framework has got more picky about always having a phy-mode,
> particularly for the CPU port. Add the missing phy-mode properties
> for every port which does not have an integrated PHY.
> 
> Add a phy-mode property to the ethernet interface facing the switch
> as this was configured using SGMII - as the switch is actually
> using 1000base-x, let's have some consistency between the two link
> partners.
> 
> Additionally, the cpu label has never actually been used in the
> binding, so remove it.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Thanks Russell

The changes for most of the IMX board where merged recently. So
hopefully by the merge window, we will have all boards updated.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
