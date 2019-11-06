Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5D491F2297
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 00:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727296AbfKFX2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 18:28:21 -0500
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:38159 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727316AbfKFX2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 18:28:21 -0500
X-Originating-IP: 92.184.100.196
Received: from localhost (unknown [92.184.100.196])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5168D40004;
        Wed,  6 Nov 2019 23:28:02 +0000 (UTC)
Date:   Thu, 7 Nov 2019 00:27:14 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Kamel Bouhara <kamel.bouhara@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: at91: Document Kizbox2-2 board
 binding
Message-ID: <20191106232714.GL8309@piout.net>
References: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/11/2019 22:22:33+0100, Kamel Bouhara wrote:
> Document devicetree's binding for the Kizbox2-2 board of
> Overkiz SAS based on SAMA5D31 SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> ==============
> 	- Removed other kizbox2 boards as the main difference between
> 	them is the usart configuration, only add the two heads variant
> 	for now.
> Changes in v3:
> ==============
> 	- Added R-b tag from Rob Herring.
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
