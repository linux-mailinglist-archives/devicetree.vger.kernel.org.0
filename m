Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB701167B7
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 08:56:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727132AbfLIH4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 02:56:17 -0500
Received: from mail.kernel.org ([198.145.29.99]:42286 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727122AbfLIH4R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Dec 2019 02:56:17 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B1C76206D3;
        Mon,  9 Dec 2019 07:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1575878177;
        bh=u7OY9N0yxUaizCfCj1lqOxG5tJ8buexZ4yffTAFjVWU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HGFk0s25dcSidAcwwgFWi0uvzyTsPos355Gz1GyDv3xMoxSjj9JaM7tuMGnqYKiOm
         gFgRWR1VFNt1bt7cHW/O5g8EMoI0+NNrUSO7zPWlRQEmA0HIJdF4QWz84bIAFZdgeg
         o4wYPGAjG4puxmoHdVHDFVBAuG4DfefPV6NmNkJw=
Date:   Mon, 9 Dec 2019 15:55:59 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: add missing SAI nodes
Message-ID: <20191209074952.GI3365@dragon>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191127182127.1204-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 27, 2019 at 07:21:26PM +0100, Lucas Stach wrote:
> Currently only SAI2 is present in the DT. Add all the other SAI
> instances present on the SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied this one, thanks.
