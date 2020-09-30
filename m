Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88ACD27EE62
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728076AbgI3QH2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:07:28 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:38693 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbgI3QH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:07:28 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1h3f14xYz1qsb3;
        Wed, 30 Sep 2020 18:07:26 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1h3d6rrTz1sM9S;
        Wed, 30 Sep 2020 18:07:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id de9H-WRn0Xot; Wed, 30 Sep 2020 18:07:24 +0200 (CEST)
X-Auth-Info: KBieF0voAzrqalLrlktTQCmysLzPHhjaou4NSOPlybc=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:07:24 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155418.535857-1-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <4ebde709-32bf-84d4-3aa5-ed47373c5bf3@denx.de>
Date:   Wed, 30 Sep 2020 18:03:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155418.535857-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:54 PM, Lucas Stach wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> According to the documents, the i.MX8M-Mini features a GC320 and a
> GCNanoUltra GPU core. Etnaviv detects them as:
> 
> 	etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
> 	etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> 
> This seems to work fine more or less without any changes to the HWDB,
> which still might be needed in the future to correct some features,
> etc.
> 
> [lst]: Added power domains and switched clock assignments to the
>        new clock defines used for the composite clocks, instead of
>        relying on the backwards compat defines.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> This patch depends on the power domain support for i.MX8MM, as the
> GPUs are in a invalid state (which might lead to full system lockups)
> if they are not properly powered on via the power sequencing
> implemented in the GPCv2 driver.

And that means the three power domains in the MX8MM can not really be
used, because there is only one reset for all the GPUs, sigh.

Reviewed-by: Marek Vasut <marex@denx.de>
