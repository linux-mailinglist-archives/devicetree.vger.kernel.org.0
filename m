Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D68B83E4167
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 10:11:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233669AbhHIILv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 04:11:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:54992 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233588AbhHIILv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Aug 2021 04:11:51 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1DBC261004;
        Mon,  9 Aug 2021 08:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628496691;
        bh=PR7IOLoXIY/MkdrX1BQp6vLQalo6ARjxTOEyIcpq+nU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mZipI5H4NXkOecemAEn57P401ZhUJU/AkxRiEjabe2q9ctHAWBTKUKfcHM2mn5qT6
         Rrl/7YfJobY8EU3vx7XXRA3f13PWFulYjXM07PUZOoJusQou/vp7JVR3uUJfhEETG1
         RgCEqJrOj7NcSBKHWwQw58UZOVo1E+jDdSh85Yazwcq93jOrPidYOfTsIfOxW65fyM
         tJTzabyrCGwy4ZP1AzexDp5WiffKlWfpFOpABKfK5QX6De0GT6IIMFngJuLtbYXdzK
         uFL+3A/YbxsCTP+DjKVVLS8G5csGF78vvZd8mxXH3pLW3WN7TJ3oLPrD5cYHm+uAoN
         1qjzuSm07pEzQ==
Date:   Mon, 9 Aug 2021 16:11:26 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Thomas Perrot <thomas.perrot@bootlin.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7: add ftm nodes for Flex Timers
Message-ID: <20210809081126.GR30984@dragon>
References: <20210805150633.348451-1-thomas.perrot@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210805150633.348451-1-thomas.perrot@bootlin.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 05, 2021 at 05:06:33PM +0200, Thomas Perrot wrote:
> The i.MX7 has two possible Flex Timers, disabled by default. Moreover, the
> block is the same as LS1021a, then the drivers can be used as-is.
> 
> Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>

Applied, thanks!
