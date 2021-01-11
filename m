Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFD4C2F0B7C
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 04:32:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726987AbhAKDbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jan 2021 22:31:04 -0500
Received: from mail.kernel.org ([198.145.29.99]:57650 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725797AbhAKDbE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Jan 2021 22:31:04 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1C165206D6;
        Mon, 11 Jan 2021 03:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610335824;
        bh=1tEq/L3gc8hu6Yjy4a9YNfi5OzlMwDy90TPEwC3EpAc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZEIIWqAi615zK9ooBU+PWfJ4FmMcU1/y24TZ3+b6hARp+sE8iHlcD85WBPyfnH/nc
         qSrSXV35P+Ft+1yygAqwLrQNO7TsIi0PafEt/NIorZIV4heDcg+fn1LCJPj9bBOwdF
         0Z6ucIkKVcEFrFWm30z78hUhwR3RFyOf2Hrcm0C9+fiZIvKGPw6XcRpOaWh0cRwe52
         2ycA1mEaPGtp/B2/2JCO7Wy2u9yyxFaEw/qbnCajIFJk2S88gLzPnR2tN+EfmYs/cn
         hCeTRANp9rom0sgf6sDI0yFt9JAX1N8YqHBI2rCyJQSrjzC2jLVehP9uD6AuqgYoqf
         lDBXaOySA2bNQ==
Date:   Mon, 11 Jan 2021 11:30:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix i2c_lcd/cam
 default status
Message-ID: <20210111033019.GZ28365@dragon>
References: <20210105092406.21852-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210105092406.21852-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 05, 2021 at 10:24:07AM +0100, Marco Felsch wrote:
> Fix typo so the gpio i2c busses are really disabled.
> 
> Fixes: 2125212785c9 ("ARM: dts: imx6qdl-kontron-samx6i: add Kontron SMARC SoM Support")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
