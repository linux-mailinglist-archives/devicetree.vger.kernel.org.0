Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 602152B2E6F
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726356AbgKNQ0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:26:09 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55214 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726265AbgKNQ0J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:26:09 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kdyNH-0072qB-NJ; Sat, 14 Nov 2020 17:26:03 +0100
Date:   Sat, 14 Nov 2020 17:26:03 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 2/6] ARM: dts: turris-omnia: add comphy handle
 to eth2
Message-ID: <20201114162603.GA1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-3-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114160409.19670-3-kabel@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 05:04:05PM +0100, Marek Behún wrote:
> The eth2 controller on Turris Omnia is connected to SerDes. For SFP to
> be able to switch between 1G ans 2.5G modes the comphy link has to be

s/ans/and

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
