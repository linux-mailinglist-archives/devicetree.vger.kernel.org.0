Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 492432FABA1
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 21:37:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388137AbhARKhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 05:37:04 -0500
Received: from mail.kernel.org ([198.145.29.99]:35424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389026AbhARJlm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 04:41:42 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DAED223E8;
        Mon, 18 Jan 2021 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610962860;
        bh=jhlHWB0dwdXpXfoNMa0BLlzYtQF0IuSRofCAZN/7diI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JOQlSPtEBiBiEPjvtePD3AVcNftIxwKOIYN6Sm2C7maFRR7nLc+Hx5kcpLJPniU2m
         K5bTfNjs4O+5lk+Zt6LBgyU+uV3OddDrJYjJr9IfqHX1tTV6xuhdnxauR22iwKoY25
         pLiE7gW9VrbKaF47Z2YX2GvTWZ+GVvPTMhzjgp+IsEbPoVCRwvznjWi8vtEMy3tJ3t
         MJuUfZ82yB+EfPLmBwJtULTut9rmQHfNIb8effRwj89tS4tmkxaQMlhDMS1dM3w8vA
         LF05kmsZ9G+lc4BSINdExDgknM04mT7aGApsfxPe/4MknkOrc2r16hrxcCHLIU3Bqt
         Hp3pxmhEFayZA==
Date:   Mon, 18 Jan 2021 17:40:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     s.hauer@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH V2 0/5] patches for FEC
Message-ID: <20210118094054.GA4356@dragon>
References: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 16, 2021 at 04:44:26PM +0800, Joakim Zhang wrote:
> Some improve patches for i.MX FEC.
> 
> ---
> ChangeLogs:
> V1->V2:
> 	* standardize patch subject prefix
> 	* let unit-address match 'reg' property
> 
> Joakim Zhang (5):
>   ARM: dts: imx6: add wakeup support via magic packet
>   arm64: dts: imx8m: correct assigned clocks for FEC
>   arm64: dts: imx8mq: assign clock parents for FEC
>   arm64: dts: imx8m: add mac address for FEC
>   arm64: dts: imx8m: add fsl,stop-mode property for FEC

Applied all, thanks.
