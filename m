Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7FFF49F5DB
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 00:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725976AbfH0WOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 18:14:31 -0400
Received: from emh06.mail.saunalahti.fi ([62.142.5.116]:41022 "EHLO
        emh06.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725835AbfH0WOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 18:14:31 -0400
X-Greylist: delayed 561 seconds by postgrey-1.27 at vger.kernel.org; Tue, 27 Aug 2019 18:14:30 EDT
Received: from darkstar.musicnaut.iki.fi (85-76-76-175-nat.elisa-mobile.fi [85.76.76.175])
        by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 4A0923001A;
        Wed, 28 Aug 2019 01:05:07 +0300 (EEST)
Date:   Wed, 28 Aug 2019 01:05:07 +0300
From:   Aaro Koskinen <aaro.koskinen@iki.fi>
To:     Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc:     linux-mips@vger.kernel.org, chenhc@lemote.com,
        paul.burton@mips.com, tglx@linutronix.de, jason@lakedaemon.net,
        maz@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.co, devicetree@vger.kernel.org
Subject: Re: [PATCH 02/13] MIPS: Loongson64: Sepreate loongson2ef/loongson64
 code
Message-ID: <20190827220506.GK30291@darkstar.musicnaut.iki.fi>
References: <20190827085302.5197-1-jiaxun.yang@flygoat.com>
 <20190827085302.5197-3-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190827085302.5197-3-jiaxun.yang@flygoat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 27, 2019 at 04:52:51PM +0800, Jiaxun Yang wrote:
> As later model of GSx64 family processors including 2-series-soc have
> similar design with initial loongson3a while loongson2e/f seems less
> identical, we seprate loongson2e/f support code out of mach-loongson64
                ^^^^^^^

separate (typo in patch title as well)

> to make our life easier.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

[...]

> +config MACH_LOONGSON2EF

You need to update lemote2f_defconfig with his patch.

A.
