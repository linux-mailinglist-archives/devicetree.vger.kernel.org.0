Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11BF83099D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 09:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727051AbfEaHmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 03:42:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:45472 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725955AbfEaHmv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 31 May 2019 03:42:51 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 893E326529;
        Fri, 31 May 2019 07:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1559288570;
        bh=OWF+4zfsD8qBU6ktHETlir6S0oiuOLtAfekZ034iKY0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iysMdhNCi2xWgzoTXnZjUwJc2pdkVKxfVEZ8thttZYmoxAdx87t1qlmIu22KVDXAY
         7onsfx8ZDeIswfEtGuce16zrtvk34R4q77rANfiVsMRgq1H3FwtKwsIINHAkQ7uhri
         jXtE3SvBGg2X5bfWVxh/oUkWwWpWzZBiR9Qy74+U=
Date:   Fri, 31 May 2019 15:41:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Pankaj Bansal <pankaj.bansal@nxp.com>
Cc:     Leo Li <leoyang.li@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>,
        Rajesh Bhagat <rajesh.bhagat@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Message-ID: <20190531074128.GD23453@dragon>
References: <20190521150336.8409-1-pankaj.bansal@nxp.com>
 <20190523124806.GU9261@dragon>
 <VI1PR0401MB24966C5BB07836D5FA00BC12F11D0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB24966C5BB07836D5FA00BC12F11D0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 27, 2019 at 06:12:28AM +0000, Pankaj Bansal wrote:
> HI Shawn,
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Thursday, 23 May, 2019 06:18 PM
> > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Leo Li <leoyang.li@nxp.com>; Mingkai Hu <mingkai.hu@nxp.com>; Rajesh
> > Bhagat <rajesh.bhagat@nxp.com>; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org
> > Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
> > 
> > On Tue, May 21, 2019 at 09:40:09AM +0000, Pankaj Bansal wrote:
> > > The qspi flash in ls1046a based QDS and RDB boards can operate at
> > > 50MHz frequency.
> > > Therefore, update the maximum supported freq in their respective dts
> > > files.
> > >
> > > Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > 
> > Do not use base64 encoding for patch posting.
> 
> I did not understand this comment? Do you want me to change something in patch?
> I had run checkpatch script on the patch before sending and it did not report any waning or error.
> Can this patch not be merged in current tree ?

You mail server is using a content-transfer-encoding that makes patch
applying very difficult.  Talk to NXP colleague Anson Huang
<Anson.Huang@nxp.com> to find out how to fix it.

https://patchwork.kernel.org/patch/10944169/#22656941

Shawn
