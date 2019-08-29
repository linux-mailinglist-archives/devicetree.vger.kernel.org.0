Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAC43A0ECE
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 03:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726384AbfH2BJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 21:09:14 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:39176 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726079AbfH2BJN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 21:09:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
        :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=sFzCLQljOVVup477S84S6o2/tJc4F15Dmhtol6ohh0M=; b=nVgS+xEc358i00Bi+OIvsPcruc
        IrpRBYMosLXOM3aTbNrqLlxqAgBTqhmMSxwoJ+k2oP6AA6hQkeK/gGkrpD/1wY6Z4EJXlKb7Vft+m
        +sAdPQ6+ghN8FvqCxyGqQRuG56SXnjvE91vDWxKZGdcLHxvmLnSVlZWNBZXaQplQdnMM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
        (envelope-from <andrew@lunn.ch>)
        id 1i38w0-00076K-PS; Thu, 29 Aug 2019 03:09:08 +0200
Date:   Thu, 29 Aug 2019 03:09:08 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>
Cc:     arm@kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 mvebu-dt64 3/3] arm64: dts: marvell: add DTS for
 Turris Mox
Message-ID: <20190829010908.GC32178@lunn.ch>
References: <20190828151243.23542-1-marek.behun@nic.cz>
 <20190828151243.23542-4-marek.behun@nic.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190828151243.23542-4-marek.behun@nic.cz>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 28, 2019 at 05:12:43PM +0200, Marek Behún wrote:
> This adds support for the Turris Mox board from CZ.NIC.
> 
> Turris Mox is as modular router based on the Armada 3720 SOC (same as
> EspressoBin).
> 
> The basic board can be extended by different modules.
> If those are connected, U-Boot lets the kernel know via device-tree.
> 
> Since modules can be connected in different order and some modules can
> be connected multiple times (up to three modules containing 8-port
> ethernet switch in DSA configuration can be connected) we decided
> against using device-tree overlays, because it got complicated rather
> quickly. (For example the SFP module can be connected directly to the
> CPU, or after a switch module. There are four cases and all would need
> different SFP overlay. There are two types of switch modules (8-port
> with pass-through and 4-port with no pass-through). For those we would
> again need at least 6 more overlays.)
> 
> We therefore decided to put all the possibly connected devices in one
> device-tree and disable them by default. When U-Boot finds out which
> modules are connected, it fixes the loaded device-tree accordingly just
> before boot. By Rob Herring's suggestion we also made it so that U-Boot
> completely removes nodes which are disabled after this fixup.
> 
> Signed-off-by: Marek Behún <marek.behun@nic.cz>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
