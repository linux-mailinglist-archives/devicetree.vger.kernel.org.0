Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 330A768997C
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 14:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbjBCNNQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 08:13:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbjBCNNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 08:13:16 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D44C302BC
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 05:13:14 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1pNvsH-0005hE-7j; Fri, 03 Feb 2023 14:13:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1pNvsF-0000Q3-PA; Fri, 03 Feb 2023 14:13:03 +0100
Date:   Fri, 3 Feb 2023 14:13:03 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     =?iso-8859-15?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
Message-ID: <20230203131303.GY13319@pengutronix.de>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 03, 2023 at 10:44:49AM +0100, Sébastien Szymanski wrote:
> Hello,
> 
> On 2/1/23 21:33, Stefan Wahren wrote:
> > Since the imx28 belongs to the early ARM platforms which has been
> > adapted to DT, a lot of these DTS files are not in the best shape.
> > So this series tries to address this by using label references
> > and SPDX tags.
> > 
> > Theses patches doesn't include functional changes. The resulting
> > DTB files has been verified with dtdiff.
> > 
> > Stefan Wahren (9):
> >    ARM: dts: imx28-apf28: Convert to use label references
> >    ARM: dts: imx28-m28/sps1: Convert to use label references
> >    ARM: dts: imx28-apx4devkit: Convert to use label references
> >    ARM: dts: imx28-cfa10036: Convert to use label references
> >    ARM: dts: imx28-duckbill: Convert to use label references
> >    ARM: dts: imx28-duckbill-2: Include base board
> >    ARM: dts: imx28-evk: Convert to use label references
> >    ARM: dts: imx28-ts4600: Convert to use label references
> >    ARM: dts: imx28-tx28: add SPDX-License-Identifier
> > 
> >   arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
> >   arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
> >   arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
> >   arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
> >   arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
> >   arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
> >   arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
> >   arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
> >   arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
> >   arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
> >   .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
> >   arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
> >   arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
> >   arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
> >   arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
> >   arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
> >   arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
> >   arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
> >   arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
> >   arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
> >   arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
> >   21 files changed, 2142 insertions(+), 2735 deletions(-)
> > 
> 
> FYI, such changes have been rejected years ago:
> 
> https://lore.kernel.org/linux-arm-kernel/20140512141814.GE8330@dragon/

I hope the attitude has changed here in the last years. Device trees
with label references are so much easier to read and to maintain.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
