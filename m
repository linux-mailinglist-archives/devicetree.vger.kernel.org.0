Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDE782AC9D0
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 01:40:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729923AbgKJAkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 19:40:19 -0500
Received: from mail.kernel.org ([198.145.29.99]:51172 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729454AbgKJAkT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Nov 2020 19:40:19 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6C083206D8;
        Tue, 10 Nov 2020 00:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604968818;
        bh=F8d1ejiwKOsTbVCpsk32jzr6n4gQZP5v+o0S8gQaPoo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ENPncDIwjRi9VOWxbZqd+SIIWDpx3Ob8OrXfOQdO8uJvRfjPda9huQhDQ8m6hr7E9
         +3lq+74HEYAiSYyRnxdBMQws38NV+AYrBj4JqeXZOmFJ5CF+mzLHu93DvU9sAeYGdx
         jl7jssVP3ay/YMckWEBi2HXHDtRjGa69OpCFpBus=
Date:   Tue, 10 Nov 2020 08:40:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Yunus Bas <y.bas@phytec.de>
Subject: Re: [PATCH v2 4/6] ARM: dts: imx6ul: segin: Add phyBOARD-Segin with
 eMMC phyCORE-i.MX6UL
Message-ID: <20201110004013.GF31601@dragon>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
 <20201029070324.16057-4-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029070324.16057-4-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 08:03:22AM +0100, Stefan Riedmueller wrote:
> From: Yunus Bas <y.bas@phytec.de>
> 
> Add a PHYTEC phyBOARD-Segin full featured with phyCORE-i.MX 6UL with
> eMMC and following features:
>     - i.MX 6UL
>     - 512 MB RAM
>     - eMMC
>     - USB Host/OTG
>     - 2x 100 Mbit/s Ethernet
>     - RS232
>     - CAN
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Applied #4 ~ #6.
