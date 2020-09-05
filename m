Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3B1225E5D9
	for <lists+devicetree@lfdr.de>; Sat,  5 Sep 2020 08:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbgIEGaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 02:30:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:51040 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726372AbgIEGaM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 5 Sep 2020 02:30:12 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CFAEB2137B;
        Sat,  5 Sep 2020 06:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599287412;
        bh=3v7tjiil+/lOK2HaRN3Iq9+cyNNktXKS2d/L12rTzgM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=x9CLCV9/YkeB9avrskkZb5VGz/NwomKzQRTh/hPacgpcCZt09Vi7K+ryJy9rr3riu
         Bg/Z7+p5cNk3QV+QHZcFP75ybyCOaIDRpkKKccgSC53lZN8gIAricdFaq07RZQoJNf
         zAjGOANvppl/sxYJlSJugd/furBl0jyNwcHCMBMU=
Date:   Sat, 5 Sep 2020 14:29:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [RESEND PATCH v2 1/3] dt-bindings: arm: fsl: Add imx8mm ddr4 evk
 board
Message-ID: <20200905062935.GE9261@dragon>
References: <1598865254-20248-1-git-send-email-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1598865254-20248-1-git-send-email-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 31, 2020 at 05:14:12PM +0800, Jacky Bai wrote:
> Add entry for i.MX8MM DDR4 EVK board and update
> the comments for imx8mm-evk as it is populated
> with LPDDR4.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Acked-by: Rob Herring <robh@kernel.org>

Applied all, thanks.
