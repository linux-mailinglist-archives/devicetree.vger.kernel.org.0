Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CED9256C82
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 09:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726629AbgH3HLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 03:11:43 -0400
Received: from mail.kernel.org ([198.145.29.99]:49892 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726601AbgH3HLn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 30 Aug 2020 03:11:43 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1C7B82071B;
        Sun, 30 Aug 2020 07:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598771502;
        bh=UJJDNUb8eAJ3ZYUQoL89IWQv+JeN3MUlFYCUlMTPEeU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gFPv4qwZhXERswXEKLmjSEANYeDuKp8M93jVjmll7t4UGJTGgTUGlzLnUGdoMKVlO
         KCo5IZzwWV2fXCPrHy53kBMRLeU/6IZXDAQTl4vPVsw8f5YKJPZCxQ/WqLBZLt+5LQ
         Z7xfyNGxMmCx1KkgFWCtH05EOvXASJCy3iaKv6j8=
Date:   Sun, 30 Aug 2020 15:11:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/5] arm64: dts: imx8mm-evk: Align regulator names with
 schema
Message-ID: <20200830071137.GK32096@dragon>
References: <20200823172019.18606-1-krzk@kernel.org>
 <20200823172019.18606-5-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200823172019.18606-5-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 23, 2020 at 07:20:19PM +0200, Krzysztof Kozlowski wrote:
> Device tree schema expects regulator names to be lowercase.  This fixes
> dtbs_check warnings like:
> 
>     pmic@4b: regulators:LDO1:regulator-name:0: 'LDO1' does not match '^ldo[1-6]$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied, thanks.
