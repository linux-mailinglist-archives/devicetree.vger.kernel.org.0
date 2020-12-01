Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36E812C9498
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 02:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389244AbgLABUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 20:20:44 -0500
Received: from mail.kernel.org ([198.145.29.99]:36158 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389242AbgLABUo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 20:20:44 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 38D762085B;
        Tue,  1 Dec 2020 01:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606785603;
        bh=7Gfgjt5u3uJFfUoRatUW2RTorOokKsT5SxG/xp+vN48=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sC0NTjKdeMmvRTS+VAa8+yx10nEtLONT3+Y/H6cGTSBpQaVmnAxTMOQC+178MLEyG
         z0C9sBzXVt38m5QxyeAwcum29gBJZzS9OVqdhCjJpyE39UIi5BRW1VkLTuYdypXKmh
         9C61zOqcaNrmArFDLVYsrkKi23lVnsAdCejbh6jI=
Date:   Tue, 1 Dec 2020 09:19:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, festevam@gmail.com, plaes@plaes.org,
        kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: increase i2c-frequency
Message-ID: <20201201011955.GP4072@dragon>
References: <20201126192252.6067-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201126192252.6067-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 26, 2020 at 08:22:52PM +0100, Marco Felsch wrote:
> Set it to max. allowed 375kHz for faster transfers. The limit is given
> by the erratum [1].
> 
> [1] https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
