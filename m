Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1695A15CF42
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 01:55:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727707AbgBNAzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Feb 2020 19:55:52 -0500
Received: from mail.kernel.org ([198.145.29.99]:40946 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727604AbgBNAzw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Feb 2020 19:55:52 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3ECFB20848;
        Fri, 14 Feb 2020 00:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1581641751;
        bh=Ry+arPI+CIEAghZqlmUDXHFMvI/SR4iE3IXsoYWQ8cg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iixW2kY1xWbzGdglHkWMv8Ncn+atdC547cDm94GmBOKI82kJL+edlvDQrAxf2ndVW
         47BDZ6cfPzntIFgPBCA6YD4vNh/oKu2feCmymzJ4l2SAoisTX28pqlHNQS5Yof1kdt
         3SeYG7jJKnxvPcOJn/9cgEe7vcUGyld4AvK6nPno=
Date:   Fri, 14 Feb 2020 08:55:46 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm: imx: dts: Kill off "simple-panel" compatibles
Message-ID: <20200214005545.GQ11096@dragon>
References: <20200117230848.25330-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200117230848.25330-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 17, 2020 at 05:08:48PM -0600, Rob Herring wrote:
> "simple-panel" is a Linux driver and has never been an accepted upstream
> compatible string, so remove it.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.
