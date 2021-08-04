Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7688B3DFDF6
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 11:24:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236288AbhHDJZA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 05:25:00 -0400
Received: from mail.kernel.org ([198.145.29.99]:60940 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236201AbhHDJZA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 05:25:00 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E68C60F10;
        Wed,  4 Aug 2021 09:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628069087;
        bh=yQJCXaJ1lIc6b4NIqDbXBzU5JPz5Orkw2H0bU7FU6KM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iqCspnjABZIx5TMYxdBQNbESMsbGjnJsqVzuZxEOCADtG0vVdl0tb0itsb0UcE2zB
         2bFu0rVuchVIuBsheyyXPz/wNXcC6UIrIdOWTOzDkxyrq7OuDSP/zjVGPdOADTV/cb
         ub6gP0Xmd31cV8H7158/OrQdYkFXnV3zLwD7bC6dtkgJvV//bGhI8TzEkT/WvDpXqb
         FU+jhfJKZEyvSi8ayp76garNBRuTxcLHLzNmm8Z/2NTdAnifo+oM4TIEUY68ZzPvc6
         xpnHkvH2bMAF0IbyFXL1hnN3x/PhtoTMaNPl8cZhPWTNBLt7iecMCwyUUcfi+EOD5U
         UQb/7dVmmwEHg==
Date:   Wed, 4 Aug 2021 17:24:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] arm64: dts: imx8mm-venice-gw700x: fix mp5416 pmic
 config
Message-ID: <20210804092441.GD30984@dragon>
References: <20210727161101.32267-1-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210727161101.32267-1-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 27, 2021 at 09:10:57AM -0700, Tim Harvey wrote:
> Fix various MP5416 PMIC configurations:
>  - Update regulator names per dt-bindings
>  - ensure values fit among valid register values
>  - add required regulator-max-microamp property
>  - add regulator-always-on prop
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied all, thanks!
