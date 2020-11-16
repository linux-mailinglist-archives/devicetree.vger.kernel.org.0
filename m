Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5957E2B440D
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 13:53:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgKPMxO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 07:53:14 -0500
Received: from mail.kernel.org ([198.145.29.99]:52688 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726199AbgKPMxO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 07:53:14 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9DF8C22240;
        Mon, 16 Nov 2020 12:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605531193;
        bh=IsXwWQhzkIuxQe09v2txDag+eucHPCVVsTYb8HVpZm0=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=1XvXRepVzqFvyjlt8S3bVVUP6Da5jzZU5FF9+qULFVXXB2nf0Kf5hELFs1ofb8aJw
         wvJUiNKpQekTkHm2eNIWXgUFdfSln2/D9biAoCUboPRhg9m8HtxAk5zqVf+LjoBV+K
         ROoIF2qQ0EQxR1TvgG4TJzE+7qF8Tqgh1cbB/CGY=
Date:   Mon, 16 Nov 2020 13:53:06 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        linux-arm-kernel@lists.infradead.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v3.1 4/7] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201116135306.4f3cd36c@kernel.org>
In-Reply-To: <20201116123456.GJ1551@shell.armlinux.org.uk>
References: <20201115135923.11523-5-kabel@kernel.org>
        <20201116122422.6840-1-kabel@kernel.org>
        <20201116123456.GJ1551@shell.armlinux.org.uk>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Nov 2020 12:34:56 +0000
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> Let's be clear: this is _not_ something I have any plans to be working
> on adding; this is for others to get involved with.

Russell, I consider this self-evident.

Since Turris Omnia is currently probably the only device with such
configuration, it will be on me to add this support.

I will try to work out the correct solution and send patches for review.

For now though, lets merge this. It will simplify our (the vendor of
the device) patching on TurrisOS.

Marek
