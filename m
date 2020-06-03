Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4C01ED17A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2020 15:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725905AbgFCNwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jun 2020 09:52:30 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:39042 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgFCNwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jun 2020 09:52:30 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E7B002A3D89;
        Wed,  3 Jun 2020 14:52:27 +0100 (BST)
Date:   Wed, 3 Jun 2020 15:52:24 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Anton Vorontsov <anton@enomsg.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-mtd@lists.infradead.org
Cc:     Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev@lists.ozlabs.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 10/10] dt-bindings: mtd: fsl-upm-nand: Deprecate
 chip-delay and fsl,upm-wait-flags
Message-ID: <20200603155224.3baa35f9@collabora.com>
In-Reply-To: <20200603134922.1352340-11-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
        <20200603134922.1352340-11-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

And I forgot to Cc the DT maintainer/ML on this one :-/

On Wed,  3 Jun 2020 15:49:22 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Those properties are no longer parsed by the driver which is being passed
> those information by the core now. Let's deprecate them.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  Documentation/devicetree/bindings/mtd/fsl-upm-nand.txt | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/fsl-upm-nand.txt b/Documentation/devicetree/bindings/mtd/fsl-upm-nand.txt
> index fce4894f5a98..25f07c1f9e44 100644
> --- a/Documentation/devicetree/bindings/mtd/fsl-upm-nand.txt
> +++ b/Documentation/devicetree/bindings/mtd/fsl-upm-nand.txt
> @@ -7,14 +7,16 @@ Required properties:
>  - fsl,upm-cmd-offset : UPM pattern offset for the command latch.
>  
>  Optional properties:
> -- fsl,upm-wait-flags : add chip-dependent short delays after running the
> -	UPM pattern (0x1), after writing a data byte (0x2) or after
> -	writing out a buffer (0x4).
>  - fsl,upm-addr-line-cs-offsets : address offsets for multi-chip support.
>  	The corresponding address lines are used to select the chip.
>  - gpios : may specify optional GPIOs connected to the Ready-Not-Busy pins
>  	(R/B#). For multi-chip devices, "n" GPIO definitions are required
>  	according to the number of chips.
> +
> +Deprecated properties:
> +- fsl,upm-wait-flags : add chip-dependent short delays after running the
> +	UPM pattern (0x1), after writing a data byte (0x2) or after
> +	writing out a buffer (0x4).
>  - chip-delay : chip dependent delay for transferring data from array to
>  	read registers (tR). Required if property "gpios" is not used
>  	(R/B# pins not connected).
> @@ -52,8 +54,6 @@ upm@3,0 {
>  	fsl,upm-cmd-offset = <0x08>;
>  	/* Multi-chip NAND device */
>  	fsl,upm-addr-line-cs-offsets = <0x0 0x200>;
> -	fsl,upm-wait-flags = <0x5>;
> -	chip-delay = <25>; // in micro-seconds
>  
>  	nand@0 {
>  		#address-cells = <1>;

