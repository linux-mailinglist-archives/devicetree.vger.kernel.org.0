Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 333A03CD0BF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 11:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235190AbhGSIrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 04:47:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235767AbhGSIrF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 04:47:05 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C1C6C061574
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 01:28:56 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m5PJd-00072d-8f; Mon, 19 Jul 2021 11:11:57 +0200
Message-ID: <a5eca4c926164ef359b9e586eac4a92e1d146c93.camel@pengutronix.de>
Subject: Re: [PATCH 09/17] soc: imx: add i.MX8M blk-ctrl driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Dan Carpenter <dan.carpenter@oracle.com>, kbuild@lists.01.org,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     lkp@intel.com, kbuild-all@lists.01.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Date:   Mon, 19 Jul 2021 11:11:55 +0200
In-Reply-To: <202107181452.0x9rl7rG-lkp@intel.com>
References: <202107181452.0x9rl7rG-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dan,

Am Montag, dem 19.07.2021 um 09:12 +0300 schrieb Dan Carpenter:
> Hi Lucas,
> 
> url:    https://github.com/0day-ci/linux/commits/Lucas-Stach/i-MX8MM-GPC-improvements-and-BLK_CTRL-driver/20210718-102944
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
> config: i386-randconfig-m021-20210718 (attached as .config)
> compiler: gcc-10 (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> drivers/soc/imx/imx8m-blk-ctrl.c:222 imx8m_blk_ctrl_probe() warn: missing error code 'ret'

Thanks for the report! Fixed up locally.

Regards,
Lucas

