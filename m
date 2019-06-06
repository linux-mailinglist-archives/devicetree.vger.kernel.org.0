Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4629636998
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 03:48:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726635AbfFFBsE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 21:48:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:49366 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726613AbfFFBsE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 Jun 2019 21:48:04 -0400
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8D8FA2070B;
        Thu,  6 Jun 2019 01:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1559785683;
        bh=AQf07PzbL36wKAQUrJOrcOkQ4LuctIqx8gRdVnnMQEQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gy/8/bZJwuAYu+DjoZBi/m7umY7zw427FKV+szGvUtDEEVCrvlaoXHYlnxHWVBnlQ
         OQ8/nE8SAY43FL3kCjwwB/YcZVsMQQck2rkraNEhqfUUfRftbwXpdxsxp747q9QymE
         yJMHRTfuAdgcknpBdnz9s1GHpY2T+rU0z4DNy7yg=
Date:   Thu, 6 Jun 2019 09:47:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
Message-ID: <20190606014745.GR29853@dragon>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
 <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 05, 2019 at 12:19:18PM -0300, Fabio Estevam wrote:
> On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
> >
> > Use the SPDX License Identifier for GPL-2.0+ OR X11
> >
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
> Nit: the Subject could be consistent with the other patches in the series:
> 
> ARM: dts: imx6sx-udoo: Use the correct...

Fixed it up and applied all, thanks.
