Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48F3C6F996
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:41:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbfGVGlW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:41:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:42504 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725920AbfGVGlV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:41:21 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 63D6421E6D;
        Mon, 22 Jul 2019 06:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563777680;
        bh=UUh4yHEKJHki1vrQZg93MSeQJqvf2KreNyt8bksDR/k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SJ+zXESRcVYxesIhJUxHjwnwXPdz5MS6r0L7nLNzO7pWJr1phYpTqVxE4Z+GPRBnX
         2kZ0qEUaEtq3klU0WeepsoIRRASCLUDHy9XKri+QHJLIKdm8tlXwiSoAoEQFkgFVO9
         k5OU/UDsHEpW3MTLlyRlvEG2lbsyxALzKTU1iAZM=
Date:   Mon, 22 Jul 2019 14:40:52 +0800
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
Subject: Re: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
Message-ID: <20190722064051.GY3738@dragon>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 04, 2019 at 11:53:21AM +0300, Leonard Crestez wrote:
> The same ddr perfomance counter IP from 8qxp is also available on imx8m
> series so add it to dts.
> 
> Tested with `perf stat` and `memtester` on imx8mm-evk and obtained
> plausible results.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.
