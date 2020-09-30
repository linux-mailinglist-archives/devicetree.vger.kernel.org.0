Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B87727EE64
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725860AbgI3QHd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:07:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbgI3QHc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:07:32 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ADE6C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:07:32 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1h3h4Z8Jz1rvxy;
        Wed, 30 Sep 2020 18:07:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1h3h31R5z1sM9Q;
        Wed, 30 Sep 2020 18:07:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id TipBe1ylrrCo; Wed, 30 Sep 2020 18:07:26 +0200 (CEST)
X-Auth-Info: 2ZfTFWQrvJLk9/rU1kKpigExyZ1bU0jVh4rqI3odJwg=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:07:26 +0200 (CEST)
Subject: Re: [PATCH 01/11] soc: imx: gpcv2: move to more ideomatic error
 handling in probe
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-2-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <508fb5dd-0ed6-eaf7-c466-8442f46a33a1@denx.de>
Date:   Wed, 30 Sep 2020 18:04:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-2-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:49 PM, Lucas Stach wrote:
> Switch to "goto out..." error handling in domain driver probe to
> avoid repeating all the error paths.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Marek Vasut <marex@denx.de>
