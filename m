Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1C9F229F
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 00:30:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727376AbfKFXaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 18:30:01 -0500
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:51131 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727316AbfKFXaB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 18:30:01 -0500
X-Originating-IP: 92.184.100.196
Received: from localhost (unknown [92.184.100.196])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4FD6E60006;
        Wed,  6 Nov 2019 23:29:46 +0000 (UTC)
Date:   Thu, 7 Nov 2019 00:29:32 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Kamel Bouhara <kamel.bouhara@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
        Mickael GARDET <m.gardet@overkiz.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: at91: add a dts and dtsi file for
 kizbox2 based boards
Message-ID: <20191106232932.GM8309@piout.net>
References: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
 <20191105212234.22999-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191105212234.22999-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/11/2019 22:22:34+0100, Kamel Bouhara wrote:
> There are several boards available depending on the PCB
> (3 antennas support and several revison). Add a dtsi file to share
> common binding between all kizbox2 boards. This patch also add support
> for the kizbox2-2 variant.
> 
> Signed-off-by: K�vin RAYMOND <k.raymond@overkiz.com>
> Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2:
> ==============
> 	- Replaced "_" by "-" in dts/dtsi file names
> 	- Fixed unusual C++ Style comments
> 
> Changes in v3:
> ==============
> 	- Removed the kizbox changes from this patch
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  arch/arm/boot/dts/Makefile                 |   2 +-
>  arch/arm/boot/dts/at91-kizbox2-2.dts       |  26 +++
>  arch/arm/boot/dts/at91-kizbox2-common.dtsi | 258 +++++++++++++++++++++
>  arch/arm/boot/dts/at91-kizbox2.dts         | 244 -------------------
>  4 files changed, 285 insertions(+), 245 deletions(-)
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-2.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-common.dtsi
>  delete mode 100644 arch/arm/boot/dts/at91-kizbox2.dts
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
