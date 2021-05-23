Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADB2938D924
	for <lists+devicetree@lfdr.de>; Sun, 23 May 2021 07:34:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbhEWFgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 May 2021 01:36:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:34580 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229895AbhEWFgL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 May 2021 01:36:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3E716611CB;
        Sun, 23 May 2021 05:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621748085;
        bh=ZpkxJRWEeyQSnDtGKOnKkWrXG5TsdM6Qqw5wqM2+Vms=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=P2thkGoP+iGzmrq3On8Aje+967QOZQjw72FUxdrczcCwpelHXqJA8GpQCtuOdhs80
         By9ggn1KY85H+Jj0sLCYDTZxN2RJMWoX2cHd4EkfIatOGWjo4DPSv9RCAXh7887ZS8
         nH+CuwrtcpwQ3uzLz0HpVXkQ2/u50M18cAsf9727fKzimOp+lKvphOQnBvjjiDw74/
         ancr1qTFtCae20x674g4uwGmLT1BcDT5IIpPgc/42Iytc4HXMRp7bzef4q8cqvu1fP
         n1/P0IlLhg2hlRn1yMpTbePBY807xkqrr0Yiw/PcQdCmHYA/jjuPMsT8/07FLoJEUO
         sCIu+Foslg+Qg==
Date:   Sun, 23 May 2021 13:34:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, dongas86@gmail.com,
        linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
        Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8: conn: fix enet clock setting
Message-ID: <20210523053440.GA8194@dragon>
References: <20210521031248.2763667-1-aisheng.dong@nxp.com>
 <20210521031248.2763667-3-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210521031248.2763667-3-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 11:12:48AM +0800, Dong Aisheng wrote:
> enet_clk_ref actually is sourced from internal gpr clocks
> which needs a default rate. Also update enet lpcg clock
> output names to be more straightforward.
> 
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied, thanks.
