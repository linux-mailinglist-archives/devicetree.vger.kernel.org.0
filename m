Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEBA4702666
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 09:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbjEOHuy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 03:50:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238839AbjEOHup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 03:50:45 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FF61135
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 00:50:33 -0700 (PDT)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id B7BBE1BF212;
        Mon, 15 May 2023 07:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1684137031;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=kFHe21bfKe+F2B+/LgS1fmICvN8LbYBb/L651ZeRJbU=;
        b=URZVOrAoLMvxX05GaHBpwyZWEzn1D1MmBR6FBFBFk2g0+/KQxKrlnn24anr/LiAeBlc4wB
        7ZQ0XvJYe69Q2fDK02eyysqV4sknKdDKayytkjpBcqft8Krab+vx696pAomSuhN8dfMHbG
        ZJlCA+hfaqI9O5OEX0ElnULuW6Cb3OWjUgxX4FDkt+1BrUX8qopTr3y/Yy2Rmb5vroJpIf
        DomMLpAhIP+xJf3B0dBzeqRdpGE5Wko+u4cqsmb7HUjFCK//fheu9c07shZDPEBHUZnutv
        X4a2uOP/hEK4PrGHt8X0yZAeZ1eu2Y1dj0RqjPj/ZZpD/ZuvwqUswTlMQwKFlg==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Andrew Lunn <andrew@lunn.ch>,
        "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: armada388-clearfog: add missing phy-modes
In-Reply-To: <7e9ac2ac-19e2-4664-8f47-7aa82ea1885e@lunn.ch>
References: <E1pxmNQ-0034DX-Jo@rmk-PC.armlinux.org.uk>
 <7e9ac2ac-19e2-4664-8f47-7aa82ea1885e@lunn.ch>
Date:   Mon, 15 May 2023 09:50:30 +0200
Message-ID: <87mt26xcc9.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andrew Lunn <andrew@lunn.ch> writes:

> On Sat, May 13, 2023 at 11:21:24AM +0100, Russell King (Oracle) wrote:
>> The DSA framework has got more picky about always having a phy-mode,
>> particularly for the CPU port. Add the missing phy-mode properties
>> for every port which does not have an integrated PHY.
>> 
>> Add a phy-mode property to the ethernet interface facing the switch
>> as this was configured using SGMII - as the switch is actually
>> using 1000base-x, let's have some consistency between the two link
>> partners.
>> 
>> Additionally, the cpu label has never actually been used in the
>> binding, so remove it.
>> 
>> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
>
> Thanks Russell
>
> The changes for most of the IMX board where merged recently. So
> hopefully by the merge window, we will have all boards updated.
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Applied on mvebu/dt

Thanks,

Gregory

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
