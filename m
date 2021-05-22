Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4FE138D5D4
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 14:35:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230457AbhEVMg0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 May 2021 08:36:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:40112 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230455AbhEVMgX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 22 May 2021 08:36:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D967611AD;
        Sat, 22 May 2021 12:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621686891;
        bh=YG69R9obqC/iKqh/k0Oy8arR5s3hE5hydr9WNWHFS8s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t5RfEuUUxRdN6PSePC/eoA1NcLeo3GhP0n9mSVW6NxG0kOAWYXJeTxS2z/Rf0xOia
         cUTr2913H3od/J1OqLaC5N9W4jiNQF3ZxwADgEibzS5K0Q2Gez/NM8HAplPVhZg8UH
         CLghwb2rbF+nDEOe0hRDfg4l7igEPFACkbF/iCJwuu8zQ8UK2fdP/h9hihDXd4Jnm1
         EsvnoyOXGp8lrrqbi0gOOnW+MFBM2/xj9S/6uIWjCNBLJB1gCti9mv1upQU5aeRWGA
         7P2JuWhRgSzz75BuWI6+nZ6q8qse51S76i/YoqwsbzpRb1qy0oG7PrIB3WkHMuAno4
         cFEyvJMgzthOA==
Date:   Sat, 22 May 2021 20:34:46 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Michael Walle <michael@walle.cc>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ls1028a: fix memory node
Message-ID: <20210522123445.GA8194@dragon>
References: <20210408110219.20149-1-michael@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210408110219.20149-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 08, 2021 at 01:02:18PM +0200, Michael Walle wrote:
> While enabling EDAC support for the LS1028A it was discovered that the
> memory node has a wrong endianness setting as well as a wrong interrupt
> assignment. Fix both.
> 
> This was tested on a sl28 board. To force ECC errors, you can use the
> error injection supported by the controller in hardware (with
> CONFIG_EDAC_DEBUG enabled):
> 
>  # enable error injection
>  $ echo 0x100 > /sys/devices/system/edac/mc/mc0/inject_ctrl
>  # flip lowest bit of the data
>  $ echo 0x1 > /sys/devices/system/edac/mc/mc0/inject_data_lo
> 
> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied both, thanks.
