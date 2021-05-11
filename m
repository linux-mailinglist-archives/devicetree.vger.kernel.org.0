Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25BCC379C28
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 03:39:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbhEKBkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 21:40:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:35036 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229953AbhEKBkS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 10 May 2021 21:40:18 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D50961458;
        Tue, 11 May 2021 01:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620697152;
        bh=saynCoF2qaPX4IC3mxYmIUPX6kYnrbiSYHQHbQT14Z0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gYK9XRLp5XPiOSNW4vOrzOUwiRsViFCjhZmhm4qFYFUl68C25nN0mWIQ8ZaG5kbai
         r5rLPT2GPfM6R+XbioCOuK1Z1sRtjN0BYyN9BcsJsyagiYYzX7As3/iGue2HtLAlBJ
         5KwEfDG/oeKr/UzqRl2eb9g0Nt4SBM13ySkyQ1v+K5l0neyjmgW3yI7us8kEtU9PBC
         bEIVDptU1rTVxwwbpE384UDNjwH89U3SfpnzzDjua6KHRIltLT1xSSLACRJaz+Fo6b
         b1rPV7aaAY/x7T3z9wZgfIaZZfoFUiefSfTSmvrHG0M0/3Xluo4RDwLuyWmem/zWoj
         EOeC4mQfXJ9uA==
Date:   Tue, 11 May 2021 09:39:07 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: Fix gpio function name for pads
 GPIO_[A-F]
Message-ID: <20210511013906.GJ27585@dragon>
References: <20200810084725.16112-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200810084725.16112-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 10, 2020 at 10:47:25AM +0200, Uwe Kleine-König wrote:
> The pinfunc definitions used GPIO_A as function instead of GPIO_1_0 as
> done for all the other pins with GPIO functionality. Fix for consistency.
> 
> There are no mainline users that needs adaption.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Applied, thanks.
