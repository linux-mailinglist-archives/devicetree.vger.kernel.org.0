Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7CDB43903B
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 09:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbhJYHWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 03:22:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:34520 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230183AbhJYHWh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 03:22:37 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF61660724;
        Mon, 25 Oct 2021 07:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635146415;
        bh=oTmkGUaMrUls5+nCfH+wzzIwXOCcij7+t4UXotfvygc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NBBnUm5h4gqghZDyGBMFXofipnhDcGhosPJFd1wDxuNdR8Y3iJTNIfaycs/CXyeEk
         Pg1TjT/dDF6z6yziPGqO9eYMRx1Xh5kc35qEqRyYuFcAf4ExWCxzNb4OpkbLKLcNm/
         YtwCSwNicUdpsVC1qNrsQeqqSpX3eDl8xTFq8964WT60svGjv17G5F8epkoteciX0b
         MDM9z53DyMs+3WNInJXoi6s6gnPPCVCSK1aiEI/S/eH/G9jBfGky62ppl5JD2QDNuR
         1SsxwHagc6UmJGtIr7NVHonkZQ3/Su10jESG+wPPrb4BXYK2qNGgplVBxx+vICxTTo
         CCz4zW7iHKanw==
Date:   Mon, 25 Oct 2021 12:50:11 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 6/7] phy: phy-mtk-dp: Add driver for DP phy
Message-ID: <YXZaq/HYkZSNYKI3@matsya>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-7-msp@baylibre.com>
 <YXJIPu/Ax6qeft03@matsya>
 <20211022130636.ncqisltwsvkkc7cg@blmsp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211022130636.ncqisltwsvkkc7cg@blmsp>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-10-21, 15:06, Markus Schneider-Pargmann wrote:

> > > +	dp_phy->regs = *(struct regmap **)dev->platform_data;
> > > +	if (!dp_phy->regs) {
> > > +		dev_err(dev, "No data passed, requires struct regmap**\n");
> > > +		return -EINVAL;
> > > +	}
> > 
> > is there a reason to do it this way? Why not set the IORESOURCE_MEM for
> > this device and let the driver map here?
> > 
> > NO clocks?
> 
> As briefly mentioned in the commit message, this phy is not a dedicated
> phy. It is embedded in the DisplayPort controller that is added in patch
> 7 of this series. The registerspace of the DisplayPort controller starts
> at offset 0x0, continues with 0x1000 for PHY related functions and goes
> on with encoder related and other registers at 0x2000, 0x3000 and
> 0x4000.
> 
> As this seems to me to be a single function block (also from what I read
> from the datasheet), I designed the binding documentation so that the
> DisplayPort controller starts at 0x0 and spans all registers. Based on
> that I wanted to share the regmap created in the DisplayPort controller
> with this PHY driver that is a direct child of that driver, similar to
> multi function device drivers.
> 
> That also means that the PHY does not have any clocks it requires as it
> only exists in the context of the DisplayPort controller. I could pass
> the same clocks to the PHY, but the use of these clocks does not make
> any difference.

Okay, that sounds sensible

> As I don't have a piece of devicetree, I struggled with using phy_get
> as, if I understand it correctly, it uses the devicetree to find the
> correct PHY device?

Not really, device tree is one of the backends phy_get() relies on. If
you are having issues, then chances are there are bugs somewhere or
usage is incorrect

> Do you have a suggestion on how I could improve this interaction between
> DP controller and PHY? Maybe some driver that I could look at that has
> similar constraints?

I would say use phy_get() and fix if we have any issues around it, that
should make it much cleaner to use

-- 
~Vinod
