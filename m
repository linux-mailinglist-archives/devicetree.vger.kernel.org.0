Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFDF2B311B
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 23:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726125AbgKNWJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 17:09:34 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55646 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726121AbgKNWJb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 17:09:31 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1ke3jc-0075mZ-8m; Sat, 14 Nov 2020 23:09:28 +0100
Date:   Sat, 14 Nov 2020 23:09:28 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: update
 ethernet-phy handle name
Message-ID: <20201114220928.GH1480543@lunn.ch>
References: <20201114204253.8573-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114204253.8573-1-kabel@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 09:42:53PM +0100, Marek Behún wrote:
> Use property name `phy-handle` instead of the deprecated `phy` to
> connect eth2 to the PHY.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
