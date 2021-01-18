Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C2082F9688
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 01:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728042AbhARAOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 19:14:15 -0500
Received: from mail.kernel.org ([198.145.29.99]:55908 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726785AbhARAOO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Jan 2021 19:14:14 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3EE282137B;
        Mon, 18 Jan 2021 00:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610928812;
        bh=Tes2caO//M+zBo40BQZqOS1MchzyCqgCeXCtJrSHaZ8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jWwtnhE55GE0PSYSoskKI5hmoA8SvoDQ6WcOTzI/3oXiUvQS+NA0KWvzNkIRbwpdu
         mGA5NKXpuINnZgPOX0sJ2yvbBjRjjjtqx5dhkaPMLsmB2tYT85HhZeZsxEzgZC+yc7
         iCZW2OB7fe/Ljmm9yxbkhcINd4gT4YHoqynUHsKMFq6AGJuNdnz+nW0NZwyX+qwR2H
         aVm3T/lRvkZ003qzAVBC+solSduERPNXhPaB0NQ04t6ms3qsfZM9WPqQqSrbbwCko1
         z2vJ8TRDuh7MVSC8eeNDwVwUzS2XkVO536gPX3iTSIo9qCtNaaj4yLo64/Me60SmOf
         O6fOMHZ8RkiDA==
Date:   Mon, 18 Jan 2021 08:13:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: lx2160a-clearfog-itx: add power button
 support
Message-ID: <20210118001327.GZ28365@dragon>
References: <E1ky0tK-0005Js-78@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1ky0tK-0005Js-78@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 08, 2021 at 11:09:58PM +0000, Russell King wrote:
> Add support for the power button.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
