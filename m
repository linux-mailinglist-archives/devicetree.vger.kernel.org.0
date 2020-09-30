Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F19F27EEF0
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731353AbgI3QUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:20:46 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:35326 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731343AbgI3QUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:20:41 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hLw1T08z1qs0w;
        Wed, 30 Sep 2020 18:20:40 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hLw0GtPz1sM9L;
        Wed, 30 Sep 2020 18:20:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id c-wf1UGdbtqe; Wed, 30 Sep 2020 18:20:38 +0200 (CEST)
X-Auth-Info: /Iq/VO9mHudyK/aQgIfYAApGYrLCH4o1nwOUkf2kfO4=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:20:38 +0200 (CEST)
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de,
        Abel Vesa <abel.vesa@nxp.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-11-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <f37405cb-4941-dec6-347a-3840afd41214@denx.de>
Date:   Wed, 30 Sep 2020 18:20:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-11-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:50 PM, Lucas Stach wrote:
> This adds the DT nodes to describe the power domains available on the
> i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> domain setups, as there is now a hierarchy of domains where complete
> subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> fine granular gating within those subsystems is possible.
> 
> Note that this is still incomplete, as both VPU and DISP domains are
> missing their reset clocks. Those aren't directly sourced from the CCM,
> but have another level of clock gating in the BLKCTL of those domains,
> which needs a separate driver.

I already have a basic draft of that BLK_CTL driver for MX8MM based on
work from Abel, so if we can agree the BLK_CTL is the way forward, I can
post that.
