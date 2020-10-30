Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6790429FA10
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 01:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725797AbgJ3Az2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 20:55:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:49106 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725372AbgJ3Az1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Oct 2020 20:55:27 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 49FB02072C;
        Fri, 30 Oct 2020 00:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604019326;
        bh=YDWqDBLh6wKSRDFQUOx2fDXwk+n0xrasDAAmwg8d0vA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=xUuCudrRehuziPD4ilRIAUBRjyQ3qsb2e3y7dsLsB1bey+kOPcs/lr18aDU3jB2cS
         dhh4LujFIgDz6qCbe00jKayWP/aExBI5ixi7JAX2XiiKKuJyyjyKXfyavfV6RrwtiG
         UTQd4Tn7YUW9BdRwCwtK1Og7BwLMXZ84SSEPhCZA=
Date:   Fri, 30 Oct 2020 08:55:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, krzk@kernel.org,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: freescale: Add pmu support on imx8mp
Message-ID: <20201030005521.GC28755@dragon>
References: <20200929091523.2775950-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200929091523.2775950-1-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 29, 2020 at 05:15:22PM +0800, Jacky Bai wrote:
> Add PMU node to enable pmu support on imx8mp.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Applied both, thanks.
