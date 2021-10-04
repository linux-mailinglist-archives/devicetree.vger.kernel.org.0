Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2B0D420511
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 05:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbhJDD1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 23:27:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:43930 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230295AbhJDD1u (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 3 Oct 2021 23:27:50 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4BD9B61351;
        Mon,  4 Oct 2021 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633317962;
        bh=rnrznOFRMDEvjI/ziBQpTfMzTrkNi2HgQnQTm+R3nLA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=H6XFNi8ael9eduJ+H+QacrO11faHRWze0V0LBL8ngcegV4r8AVjdyYt5CetaS6oBH
         j8e6/PyZ50aRIOPHQZJpHG7oh/NnPlAnbMJ6YP3hcBugWHQ93f3P8TSaFvzTRn9Yp5
         OmmCSIv7GscQRkxz/S72REVMcECfNpYy6KUHTBVtnbPwZZMN0r93kA9NUTYd/xdkx8
         GZmKsYXyGnGhihOsgoRDVKrTF52YcuqPKJMexL5AIp30fNxiS4Nrlmq1zM3aYvLWb2
         qdYeKm5/hd9kAPw7h7wh31QG5hpZ35DB2EB7Dl/wfb8raDT+m7bVWJhYfioHnSXdwY
         e/V4VjhEHi24A==
Date:   Mon, 4 Oct 2021 11:25:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     haibo.chen@nxp.com
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx: change the spi-nor tx
Message-ID: <20211004032556.GA15650@dragon>
References: <1629451790-10507-1-git-send-email-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629451790-10507-1-git-send-email-haibo.chen@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 05:29:49PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Before commit 0e30f47232ab5 ("mtd: spi-nor: add support for DTR protocol"),
> for all PP command, it only support 1-1-1 mode, no matter the tx setting
> in dts. But after the upper commit, the logic change. It will choose
> the best mode(fastest mode) which flash device and spi-nor host controller
> both support.
> 
> Though the spi-nor device on imx6sx-sdb/imx6ul(l/z)-14x14-evk board
> do not support PP-1-4-4/PP-1-1-4, but if tx is 4 in dts file, it will also
> impact the read mode selection. For the spi-nor device on the upper mentioned
> boards, they support read 1-4-4 mode and read 1-1-4 mode according to the
> device internal sfdp register. But qspi host controller do not support
> read 1-4-4 mode. so need to set the tx to 1, let the common code finally
> select read 1-1-4 mode, PP-1-1-1 mode.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied both, thanks!
