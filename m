Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 324A12EA421
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:54:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727458AbhAEDyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:54:24 -0500
Received: from mail.kernel.org ([198.145.29.99]:38260 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726518AbhAEDyX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:54:23 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2258022581;
        Tue,  5 Jan 2021 03:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609818823;
        bh=dS5tC+ND9IgUT7r9HIYz5tVq4yZewlR/r+yqwu1+LNY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kLqVSfGoYpT9xU7TzsbFHE4xSyQsztajQMlns9MRTT8ii+WRTDudqfWC7OEKrzOJj
         Xr8Ti+FTaGQemGRQxEBapA8+hXtMfgCB8CeuebEuZbBVRb1uRR/yefRN6Fn+fWfJY4
         BYQF0JV36zGsaeEf2HcZc6FT7aqrcQxgmP42MfiJgErU8bwkkgkhWiKFfQk1bSpKYt
         x1YRAc3dJyZjHh3X4nIXbv6cg0ZovfUowL/QoQ3hhmtaS991fkC2xzAdjCstyJH6Rl
         /Bq3/fNgLlWmVFT7nqEbM7YEKxUCyuaWfh0WSbUf1xh9KYUzjDJkiC76ZtlUMc3/YH
         3RuKr0RRR9hoA==
Date:   Tue, 5 Jan 2021 11:53:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Yangbo Lu <yangbo.lu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: Re: [v3] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Message-ID: <20210105035337.GN4142@dragon>
References: <20210105033259.31831-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210105033259.31831-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 05, 2021 at 11:32:59AM +0800, Yangbo Lu wrote:
> The eSDHC driver has converted to use asynchronous probe.
> Let's use fixed index mmcN for eSDHC controllers, so that
> we can ignore the effect on usage, and avoid problem on
> previous use cases with fixed index mmcblkN.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.
