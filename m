Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE47F22A8
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 00:32:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727626AbfKFXcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 18:32:03 -0500
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:40351 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727654AbfKFXcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 18:32:03 -0500
X-Originating-IP: 92.184.100.196
Received: from localhost (unknown [92.184.100.196])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B9C861C0008;
        Wed,  6 Nov 2019 23:31:51 +0000 (UTC)
Date:   Thu, 7 Nov 2019 00:31:22 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Kamel Bouhara <kamel.bouhara@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: at91: rearrange kizbox dts using aliases nodes
Message-ID: <20191106233122.GN8309@piout.net>
References: <20191105212158.22907-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191105212158.22907-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/11/2019 22:21:58+0100, Kamel Bouhara wrote:
> Use aliases nodes to easy kizbox dts readability.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  arch/arm/boot/dts/at91-kizbox.dts | 172 +++++++++++++++---------------
>  1 file changed, 84 insertions(+), 88 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
