Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0C706AB4CA
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 03:58:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjCFC6j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 21:58:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbjCFC6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 21:58:37 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 827D6C67A
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 18:58:36 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 09C17B80B13
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 02:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF6FC433EF;
        Mon,  6 Mar 2023 02:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678071513;
        bh=LCg/7eWk98BMm+Y0EIK/a4wwn9+BH6DZqQnofANuF3c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=srHwop6kS55iHApRwdouyCcp67/BB69tIgpGug8ztNrrARV8ckdw/W/+HZujcc/lr
         RQ575ZkZZEL4sRxNtxnscxUcyMU0WmdxixJvQKj4nhmsXnx7l2RT3rO9BtyE7xpHjM
         J181NydfyCuoLokn6VFdy9vMsteRUtoJFLDPxcMqUdMzUi59gZMNAuq54m/y/KsFtG
         l0J3Bm17ZQdeBXa7QZkqxOsnOjkj0YAS2sNudlub6TP347kEliF+aJ5T77UKx/62Up
         OiECgJ3AlAHVQA9SIKACN+Q/87W439H5TUQ45BsqmKN/QxSR+ec9JLpVwJ6ULaja0H
         0lbm5P7+g5mTg==
Date:   Mon, 6 Mar 2023 10:58:26 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
Message-ID: <20230306025826.GE143566@dragon>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
 <20230203131303.GY13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230203131303.GY13319@pengutronix.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 03, 2023 at 02:13:03PM +0100, Sascha Hauer wrote:
> On Fri, Feb 03, 2023 at 10:44:49AM +0100, Sébastien Szymanski wrote:
> > Hello,
> > 
> > On 2/1/23 21:33, Stefan Wahren wrote:
> > > Since the imx28 belongs to the early ARM platforms which has been
> > > adapted to DT, a lot of these DTS files are not in the best shape.
> > > So this series tries to address this by using label references
> > > and SPDX tags.
> > > 
> > > Theses patches doesn't include functional changes. The resulting
> > > DTB files has been verified with dtdiff.
> > > 
> > > Stefan Wahren (9):
> > >    ARM: dts: imx28-apf28: Convert to use label references
> > >    ARM: dts: imx28-m28/sps1: Convert to use label references
> > >    ARM: dts: imx28-apx4devkit: Convert to use label references
> > >    ARM: dts: imx28-cfa10036: Convert to use label references
> > >    ARM: dts: imx28-duckbill: Convert to use label references
> > >    ARM: dts: imx28-duckbill-2: Include base board
> > >    ARM: dts: imx28-evk: Convert to use label references
> > >    ARM: dts: imx28-ts4600: Convert to use label references
> > >    ARM: dts: imx28-tx28: add SPDX-License-Identifier
> > > 
> > >   arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
> > >   arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
> > >   arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
> > >   arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
> > >   arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
> > >   arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
> > >   arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
> > >   arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
> > >   arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
> > >   arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
> > >   .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
> > >   arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
> > >   arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
> > >   arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
> > >   arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
> > >   arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
> > >   arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
> > >   arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
> > >   arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
> > >   arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
> > >   arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
> > >   21 files changed, 2142 insertions(+), 2735 deletions(-)
> > > 
> > 
> > FYI, such changes have been rejected years ago:
> > 
> > https://lore.kernel.org/linux-arm-kernel/20140512141814.GE8330@dragon/
> 
> I hope the attitude has changed here in the last years. Device trees
> with label references are so much easier to read and to maintain.

Ok, I'm flexible on this.  Considering Krzysztof has been doing the same
for other platforms, I guess arm-soc folks changed their thoughts.

Shawn
