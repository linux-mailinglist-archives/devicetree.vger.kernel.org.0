Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA2592B2F39
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 18:49:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726140AbgKNRr0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 14 Nov 2020 12:47:26 -0500
Received: from lists.nic.cz ([217.31.204.67]:38888 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726070AbgKNRrY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 12:47:24 -0500
Received: from localhost (unknown [IPv6:2a0e:b107:ae1:0:3e97:eff:fe61:c680])
        by mail.nic.cz (Postfix) with ESMTPSA id 573C8140A71;
        Sat, 14 Nov 2020 18:47:19 +0100 (CET)
Date:   Sat, 14 Nov 2020 18:47:17 +0100
From:   Marek Behun <marek.behun@nic.cz>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114184717.3018bff5@nic.cz>
In-Reply-To: <20201114184221.1f74de86@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
        <20201114174928.5ab4f8ae@kernel.org>
        <20201114171639.GO1456319@lunn.ch>
        <20201114184221.1f74de86@kernel.org>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
        USER_IN_WELCOMELIST,USER_IN_WHITELIST shortcircuit=ham
        autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 18:42:21 +0100
Marek Behún <kabel@kernel.org> wrote:

> Do you think we should just poll for interrupts with the PHY?

Andrew, JFI, there are also SFP GPIOs connected to this expander. So
interrupt will be generated on changes from those gpios as well. Is an
interrupt storm seriosly probable here?

Marek
