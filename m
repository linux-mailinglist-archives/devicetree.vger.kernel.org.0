Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 051102F0B88
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 04:41:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727036AbhAKDkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jan 2021 22:40:04 -0500
Received: from mail.kernel.org ([198.145.29.99]:59242 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725824AbhAKDkE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Jan 2021 22:40:04 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 16D2F22225;
        Mon, 11 Jan 2021 03:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610336363;
        bh=nk44xhO78VNacSwGq8DV1pXAld6NXVFIb1unrRVcwww=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gx8F4Srue9eej246CDV2u13o42bHYoITmOQj9V1f1lqLocTOOhDq4IBCQqZsU7zgw
         aMsWcwn7SGNhXJ46wPTT2OUQQ1FIfbd3UUrMarHIu1J/7bo3XWTc4yGyPmQLehlH5g
         HksCjn9q9HAMSnA7dzHzNiV0/FpUk0/Vptg98uykGXx0oRbqA7J2qyGoGZHktaVzFb
         1KasmMqz7vaGPjii3j9KhDgo1lnEF5a9xGHEdKENXGejHvcTqLK4H2s8zQFzigSGqW
         PmBd4eZBiaStP/WNtH/8kQSlyQVIrmDgOzmZ6vK3wMxgARjTNS9ZVz7/k/r8N05PLr
         +jxUj5qj40VSw==
Date:   Mon, 11 Jan 2021 11:39:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: Re: [PATCH v4 0/4] Initial support for phyBOARD-Pollux i.MX8MP
Message-ID: <20210111033917.GD28365@dragon>
References: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 07, 2021 at 10:12:07AM +0100, Teresa Remmet wrote:
> Fourth version for the initial support for the SoM phyCORE-i.MX8MP
> and the carrier board phyBOARD-Pollux.
> 
> Changes in v4:
> - resolved defconfig conflict adding PCA9532 during rebase to v5.11-rc2
> - removed unneeded status properties in device trees
> - removed upstream not available i2c rtc property
> - fixed i2c rtc trickle-resistor value
> 
> Changes in v3:
> - removed deprecated led label property
> - added Reviewed-by and Acked-by tags
> 
> Changes in v2:
> - add rv3028 as module instead of buildin in defconfig
> - updated commit message of rv3028 accordingly
> - changed entries of device tree binding documentation to "const" 
>   and fixed order
> - fixed led dimmer node name
> - removed rtc clock node
> - fixed pmic node name
> - removed reg entries in pmic regulator nodes
> - removed clock entry from rtc node
> - moved muxing of enable gpio for sd-card regulator to the proper node
> - squashed imx8mp-phyboard-pollux.dtsi into imx8mp-phyboard-pollux-rdk.dts
> 
> Teresa
> 
> Teresa Remmet (4):
>   arm64: defconfig: Enable rv3028 i2c rtc driver
>   arm64: defconfig: Enable PCA9532 support
>   bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree bindings
>   arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP

Applied all, thanks.
