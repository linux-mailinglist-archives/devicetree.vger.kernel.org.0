Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B535E23C8C
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 17:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388874AbfETPvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 11:51:35 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:36553 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388243AbfETPvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 11:51:35 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6EBF0E0015;
        Mon, 20 May 2019 15:51:28 +0000 (UTC)
Date:   Mon, 20 May 2019 17:51:27 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Device Tree nodes ending with -supply
Message-ID: <20190520155127.cdc6dofoqckwsrrb@flea>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

I've noticed that you recently added support to validate the *-supply
properties in the dt-schema tools.

However, we have a family of PMIC that are exposing a bunch of power
supplies (battery, AC, USB, etc) to know what is currently powering
the board.

All these various supplies are exposed as children nodes of the PMIC
itself, and they are named *-power-supply. For an example, you can
look at:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56

Now, those are obviously not properties, and yet the current dt-schema
schemas are trying to validate them.

I'm not really sure how to fix that. Changing the node names seems
like an obvious solution, but they seem to be what they should be. Can
we reduce the scope of the validation to only match properties (ie
arrays?) and not the nodes (objects?)

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
