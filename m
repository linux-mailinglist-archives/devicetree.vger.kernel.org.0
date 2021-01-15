Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 564BB2F7517
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 10:19:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726849AbhAOJTf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 04:19:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:37884 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726642AbhAOJTf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Jan 2021 04:19:35 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0FC38233CF;
        Fri, 15 Jan 2021 09:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610702334;
        bh=UAVgGf4gEUU1O0w4cmSELx4kX2pjCJ0XeXnSo3Lf48c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=d+xYRnBhHEMpXzCK1EAqYAYhrQynLyONtOhGM0kg8DexXOdA9KUQ7YGPHRpLwj0wm
         oD4EItJD/rWYH99FvjrYAn99LYyjyxMRIFS9T6VfDlHZTZA0K+Wy9SQtFq/Hll39+5
         KXdU6BZQjSm00h1zwM1pa8z2GdicfaGCQBXHk1ZtiadUv7rkU7PU80pOmZx0mD3oEz
         JDMoV0Azqr8ObE+0Z3r/JvmSPl+o00/MGNhhQh/QGyEQTfRnjQtZH1yh8TpCuafmEk
         vl+3Gp2x9dqqGyWIt1BlmKxnf1lPYo3QWNcumfRWNF5Y4GPIlDiRViYwwjGPksPQAi
         kCLwBXOFlENPA==
Date:   Fri, 15 Jan 2021 17:18:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>, Andy Duan <fugang.duan@nxp.com>
Subject: Re: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address for
 FEC
Message-ID: <20210115091847.GJ28365@dragon>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
 <20201119095249.25911-5-qiangqing.zhang@nxp.com>
 <20210105003511.GD4142@dragon>
 <DB8PR04MB6795D05432EC545786ADD880E6AA0@DB8PR04MB6795.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DB8PR04MB6795D05432EC545786ADD880E6AA0@DB8PR04MB6795.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 12, 2021 at 10:42:19AM +0000, Joakim Zhang wrote:
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: 2021年1月5日 8:35
> > To: Joakim Zhang <qiangqing.zhang@nxp.com>
> > Cc: s.hauer@pengutronix.de; festevam@gmail.com;
> > devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>; Andy Duan
> > <fugang.duan@nxp.com>
> > Subject: Re: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address
> > for FEC
> > 
> > On Thu, Nov 19, 2020 at 05:52:48PM +0800, Joakim Zhang wrote:
> > > Add mac address in efuse, so that FEC driver can parse it from nvmem
> > > cell.
> > >
> > > Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
> > > arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 +++++++
> > > arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
> > > arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
> > >  4 files changed, 28 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > index 367174031a90..0fbff13a9629 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > @@ -521,6 +521,10 @@
> > >  				cpu_speed_grade: speed-grade@10 {
> > >  					reg = <0x10 4>;
> > >  				};
> > > +
> > > +				fec_mac_address: mac-address@640 {
> > 
> > Shouldn't the unit-address be @90 rather than @640?
> 
> 
> Hi Shann, @90 is a offset, @640 is an absolute address, which one is prefer to you? Thanks.

My point was that unit-address should match 'reg' property.

Shawn
