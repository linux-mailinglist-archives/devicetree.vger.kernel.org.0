Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDD0D473B66
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 04:16:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232457AbhLNDQ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 22:16:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbhLNDQz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 22:16:55 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F67C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 19:16:54 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 87597612DF
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 03:16:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC79C34605;
        Tue, 14 Dec 2021 03:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639451813;
        bh=lwZluMUGjImVJRbPpwvqqt7Ya2nEcDDBXytp6rerInA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kW4g0khBnF2AcqnIZWfPEURRo+ohhMwma8IQQuO+hQfb5rxBtNJPj9A8Bq9dcaQ+A
         oAMNzYNFRItFjoCpcmZ7DZml7wdhkNmDgqxSAteHQTeMMlSwFfR2qZ8cCJxjI0sXGF
         CZrfyr50zuSu5AFvFSge3+7YbEARHj5tqyKLut1Y+bB3PYGIQcA6hVjjF8kmAq8oP2
         vv2OTl3w/dGUDn2FQG9oJmQtV0fBKx8keDi820DUr5qZaWY+Hlyg6BlS8pop6m9fz+
         3tA44Il82NidxBFmn+YTUpNStUWnh279cyOIusEWgbNGP+y+S/1/RiFmjhpfn3/DPG
         pjYBjwxUoJ1YQ==
Date:   Tue, 14 Dec 2021 11:16:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/3] ARM: dts: Fixes for imx7 mipi_csi
Message-ID: <20211214031647.GB10916@dragon>
References: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 03, 2021 at 12:19:00AM +0200, Laurent Pinchart wrote:
> Hello,
> 
> This small patch series is a follow up on Rob's nxp,imx7-mipi-csi2.yaml
> fix ([1]) and the dtb check warnings that started appearing as a result.
> There's not much else to be said, please see individual patches for
> details.
> 
> [1] https://lore.kernel.org/all/20211202023021.3655384-1-robh@kernel.org/
> 
> Laurent Pinchart (3):
>   ARM: dts: imx7s-warp: Drop undefined property in mipi_csi node
>   ARM: dts: imx7: Drop reset-names property for mipi_csi node
>   ARM: dts: imx7: Group mipi_csi 'port' children in a 'ports' node

Applied all, thanks!
