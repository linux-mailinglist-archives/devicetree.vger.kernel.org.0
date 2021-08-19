Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C2BB3F2057
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 21:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234079AbhHSTDZ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 19 Aug 2021 15:03:25 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:41941 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233673AbhHSTDZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 15:03:25 -0400
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9EAA26000C;
        Thu, 19 Aug 2021 19:02:47 +0000 (UTC)
Date:   Thu, 19 Aug 2021 21:02:46 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mtd-physmap: Add 'arm,vexpress-flash'
 compatible
Message-ID: <20210819210246.76845e46@xps13>
In-Reply-To: <20210819182427.1175753-1-robh@kernel.org>
References: <20210819182427.1175753-1-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Rob Herring <robh@kernel.org> wrote on Thu, 19 Aug 2021 13:24:27 -0500:

> The 'arm,vexpress-flash' compatible is in use, but has never been documented,
> so add it now.
> 
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/mtd/mtd-physmap.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> index 13c29cc91b59..f827984936f6 100644
> --- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> +++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> @@ -23,6 +23,7 @@ properties:
>                - amd,s29gl256n
>                - amd,s29gl512n
>                - arm,versatile-flash
> +              - arm,vexpress-flash
>                - cortina,gemini-flash
>                - cypress,hyperflash
>                - ge,imp3a-firmware-mirror


Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>


Thanks,
Miquèl
