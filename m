Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 374B04D49F
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 19:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726943AbfFTRMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 13:12:08 -0400
Received: from guitar.tcltek.co.il ([192.115.133.116]:33827 "EHLO
        mx.tkos.co.il" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726649AbfFTRMI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jun 2019 13:12:08 -0400
Received: from tarshish (unknown [10.0.8.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id BC234440209;
        Thu, 20 Jun 2019 20:12:05 +0300 (IDT)
References: <20190618212229.32302-5-robh@kernel.org>
User-agent: mu4e 1.0; emacs 26.1
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: Convert Conexant Digicolor board/soc bindings to json-schema
In-reply-to: <20190618212229.32302-5-robh@kernel.org>
Date:   Thu, 20 Jun 2019 20:12:05 +0300
Message-ID: <87a7ecqize.fsf@tarshish>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Jun 19 2019, Rob Herring wrote:

> Convert Conexant Digicolor SoC bindings to DT schema format using json-schema.
>
> Cc: Baruch Siach <baruch@tkos.co.il>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Baruch Siach <baruch@tkos.co.il>

Thanks,
baruch

> ---
>  .../devicetree/bindings/arm/digicolor.txt        |  6 ------
>  .../devicetree/bindings/arm/digicolor.yaml       | 16 ++++++++++++++++
>  2 files changed, 16 insertions(+), 6 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/digicolor.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/digicolor.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/digicolor.txt b/Documentation/devicetree/bindings/arm/digicolor.txt
> deleted file mode 100644
> index 658553f40b23..000000000000
> --- a/Documentation/devicetree/bindings/arm/digicolor.txt
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -Conexant Digicolor Platforms Device Tree Bindings
> -
> -Each device tree must specify which Conexant Digicolor SoC it uses.
> -Must be the following compatible string:
> -
> -  cnxt,cx92755
> diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
> new file mode 100644
> index 000000000000..d9c80b827e9b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/digicolor.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Conexant Digicolor Platforms Device Tree Bindings
> +
> +maintainers:
> +  - Baruch Siach <baruch@tkos.co.il>
> +
> +properties:
> +  compatible:
> +    const: cnxt,cx92755
> +
> +...


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
