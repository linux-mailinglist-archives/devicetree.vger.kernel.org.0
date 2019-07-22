Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 682D76F998
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726120AbfGVGly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:41:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:42810 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725920AbfGVGly (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:41:54 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CF4D021E6D;
        Mon, 22 Jul 2019 06:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563777713;
        bh=Y7qwGlXzUiSE0kZg0GESG8XYy7cqbIb5hrbHF8nFU1c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b7r/sGk0gxkWn1ddDkwMyXgL1IWvDpoiOIOe3zBiw5clFQ5yAbx4t8AkWsH2jldZ3
         bQq/V+dGe4r0fVq17LNGzIxcxop5gSYqFqYtxAm/MhgPPKnFif1yiDzhvB7vwpwRPa
         Nxoq/kneifaC0Hke5TGg5uWwOqfd3B7R+s1V1kGg=
Date:   Mon, 22 Jul 2019 14:41:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Will Deacon <will@kernel.org>, Frank Li <Frank.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Message-ID: <20190722064121.GZ3738@dragon>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 04, 2019 at 11:53:22AM +0300, Leonard Crestez wrote:
> This is available on all imx8 but is not "boot critical" in any way so
> build as a module.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.
