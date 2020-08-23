Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF0A24EAA0
	for <lists+devicetree@lfdr.de>; Sun, 23 Aug 2020 02:58:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725821AbgHWA6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Aug 2020 20:58:23 -0400
Received: from mail.kernel.org ([198.145.29.99]:59600 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725767AbgHWA6W (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 22 Aug 2020 20:58:22 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 64BFE2072D;
        Sun, 23 Aug 2020 00:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598144302;
        bh=U+MQdzEFTdcUpgxamTssNd3GwPOGygQ1ASFecHr1bsQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KcMOzc52NiJO5oqznDg3/5G2hXSXIzasxHrSgqWrD6PKyLXPjqArR3M+hjGmwo7AH
         HsEZVP9zhYhmEBfTWG2C2g5mUayb1P/Xwxr5D0FQyxWlWx7Js05QsZK4l448HLVkm8
         5NLzuE1u2lSnp/1dT3lG+8oIsRjNol39JxZqb/SE=
Date:   Sun, 23 Aug 2020 08:58:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: Fix GPT function names
Message-ID: <20200823005817.GE30094@dragon>
References: <20200813202410.5670-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200813202410.5670-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 13, 2020 at 10:24:10PM +0200, Uwe Kleine-K�nig wrote:
> According to the reference manual of the i.MX25 the function name for
> the GPT capture input is called CAPIN1. So fix the names to follow the
> same naming scheme as used for the other pads and functions. Also add
> one missing pad function.
> 
> There are no mainline users that needs adaption.
> 
> Signed-off-by: Uwe Kleine-K�nig <u.kleine-koenig@pengutronix.de>

Applied, thanks.
