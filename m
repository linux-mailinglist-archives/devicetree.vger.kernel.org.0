Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99A9B2C56DA
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 15:15:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391028AbgKZOOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 09:14:43 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:51372 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389957AbgKZOOm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Nov 2020 09:14:42 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kiI2Y-008z4C-Pm; Thu, 26 Nov 2020 15:14:30 +0100
Date:   Thu, 26 Nov 2020 15:14:30 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Aryan Srivastava <aryan.srivastava@alliedtelesis.co.nz>
Cc:     robh+dt@kernel.org, jason@lakedaemon.net,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v2] ARM: dts: mvebu: Add device tree for RD-AC3X-48G4X2XL
 board
Message-ID: <20201126141430.GM2075216@lunn.ch>
References: <20201126044544.17829-1-aryan.srivastava@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201126044544.17829-1-aryan.srivastava@alliedtelesis.co.nz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 26, 2020 at 05:45:44PM +1300, Aryan Srivastava wrote:
> Add device tree for RD-AC3X-48G4X2XL board. This has a Armada 382 SoC on
> a interposer board connected to a baseboard with a Prestera AC3X ASIC
> connected via PCI.
> 
> Signed-off-by: Aryan Srivastava <aryan.srivastava@alliedtelesis.co.nz>
> Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
