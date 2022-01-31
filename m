Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A708D4A3FFC
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 11:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358070AbiAaKTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 05:19:42 -0500
Received: from foss.arm.com ([217.140.110.172]:44322 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232024AbiAaKTl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 05:19:41 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 384F112FC;
        Mon, 31 Jan 2022 02:19:41 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48F183F774;
        Mon, 31 Jan 2022 02:19:40 -0800 (PST)
Date:   Mon, 31 Jan 2022 10:19:21 +0000
From:   Andre Przywara <andre.przywara@foss.arm.com>
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        linux-sunxi@lists.linux.dev, mripard@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/4] dt-bindings: mmc: sunxi: Add Allwinner F1c100s
 compatibles
Message-ID: <20220131101921.75e4ec78@donnerap.cambridge.arm.com>
In-Reply-To: <20220130220325.1983918-2-Mr.Bossman075@gmail.com>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
        <20220130220325.1983918-2-Mr.Bossman075@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Jan 2022 17:03:23 -0500
Jesse Taube <mr.bossman075@gmail.com> wrote:

> Add binding for F1c100s's mmc controller.
> 
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
> V1 -> V2:
> * New commit
> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index 4f62ad6ce50c..76137132500d 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -55,6 +55,9 @@ properties:
>        - items:
>            - const: allwinner,sun50i-h616-mmc
>            - const: allwinner,sun50i-a100-mmc
> +      - items:
> +          - const: allwinner,suniv-f1c100s-mmc
> +          - const: allwinner,sun7i-a20-mmc
>  
>    reg:
>      maxItems: 1

