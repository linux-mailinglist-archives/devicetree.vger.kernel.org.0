Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC484E6C87
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2019 07:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731990AbfJ1Gt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Oct 2019 02:49:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:58778 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730497AbfJ1Gt5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 28 Oct 2019 02:49:57 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BDA9620873;
        Mon, 28 Oct 2019 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1572245397;
        bh=hE8YrV90OgDfQQtk53yvsfWOnB4/UfgpeGSzKX0bxoE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ITc4HThObbBHQq5pgmMs/87ilJLSD8BO1zEJ/ZyV+nNOdrzQoy7PPFQt0l6gBev9f
         gW0QHRRGB6zpwoqoVyGkP+Z9OMhFLlsYZMsdYbgZMBL05RBA1hApCDB9sZRXcs4pBI
         J7S/NyeYnqIPp3CNruTaEiveIBmczV3n8WPe2Who=
Date:   Mon, 28 Oct 2019 14:49:37 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Julien Boibessot <julien.boibessot@armadeus.com>
Subject: Re: [PATCH 1/9] ARM: dts: imx6qdl-{apf6,apf6dev}: switch boards to
 SPDX identifier
Message-ID: <20191028064936.GQ16985@dragon>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
 <20191022131655.25737-2-sebastien.szymanski@armadeus.com>
 <CAOMZO5Bnb-Jd_XkMxdcMFRkmMzcVVikV_6+Ug=Rz6iDa5QZ_yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5Bnb-Jd_XkMxdcMFRkmMzcVVikV_6+Ug=Rz6iDa5QZ_yw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 24, 2019 at 05:38:22PM -0300, Fabio Estevam wrote:
> Hi S�bastien,
> 
> On Tue, Oct 22, 2019 at 10:17 AM S�bastien Szymanski
> <sebastien.szymanski@armadeus.com> wrote:
> 
> > - *  a) This file is free software; you can redistribute it and/or
> > - *     modify it under the terms of the GNU General Public License as
> > - *     published by the Free Software Foundation; either version 2 of
> > - *     the License, or (at your option) any later version.
> 
> > - */
> > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> 
> The original license said "either version 2 of the License, or (at
> your option) any later version."
> 
> So you should use:
> 
> // SPDX-License-Identifier: GPL-2.0+ OR MIT

I fixed it up and applied the series.

Shawn
