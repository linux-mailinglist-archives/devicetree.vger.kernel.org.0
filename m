Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEB4E63A03
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 19:15:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726165AbfGIRPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 13:15:16 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:34845 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbfGIRPQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 13:15:16 -0400
Received: by mail-pl1-f195.google.com with SMTP id w24so10418813plp.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 10:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=6JqEUq6HaXDJWu6s7yj66u17X0ICHbiONtveTUyPzEk=;
        b=eNcxbWYnHcBQa2L5Y8oqfVLwTSg1uIl/DeQjz+alQshTGfMRfp8NbFnIJfvpqiK1b6
         gtQpDXS0ArTdrNsAJ/DPjzpURsIGeIVF7YiBBeATJrDAB1SibPz+iqb0CMHeMR4bDxlz
         wDeqMWOUlMDEPUQWuc+yQgqEMS6ynbVePapmj2cQyzxfel22Kt5nE/0Uy9KwjE5sqlY6
         +5qknYKUPURGf9uutfwQcDgFCnyxGLBU864+LTwGxw881ou5SZe3e7QHlTZAJMRTLr+e
         DDCk5cEwSJouZMsWnPTZ7HY47c3mdR2I6m21FmisviWCHhxugHB0IJ0/Sj1kdEpDPCEh
         i3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=6JqEUq6HaXDJWu6s7yj66u17X0ICHbiONtveTUyPzEk=;
        b=opxPirCtBjpkF94P4GMxesR9XnU1VyiphkBp8yuFCCoyCte9aFbxPZuZuqmY8fo/KO
         6vDK0J32yB/feBoQBmnbzSAMd32JFW+SAMOvnHbDycxahrGZ/DjpbVOuaPZBLnnZJxJC
         /4oi/MU7/nHf7iLsXKjwvYIVYuSRbVb2oGtNKCWcS8zLKaDAEXGfkcRppW5a2wclDQqn
         jXlCp+Tv1leB5NOhq38+mp3bVk5Bks0NMvBN1MNudhY5u27ewJZAa2ZhklQYCHkd+SXA
         i+wTYhVXQ/YA8qdpprpsAcucasgAUsLpVLAqkYRh9nOjETXljLHiQJ30ka9JlJz/P4UL
         TIzg==
X-Gm-Message-State: APjAAAVz/yHWlyuhBwFkvFzwlYq+uxGd8T/YgKfijN8jNQ2D9/0EyWco
        56qy2nhrncVWdh66mZByc9pt0VnqdQ==
X-Google-Smtp-Source: APXvYqyNTmDI4M26K6JugK2vIR4D1U3j9E/kiP98iSOHWzeJ2x3Qx7I0p+WRjsowVapfdoTws09qyA==
X-Received: by 2002:a17:902:1129:: with SMTP id d38mr33932147pla.220.1562692515236;
        Tue, 09 Jul 2019 10:15:15 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7105:f96f:dc5f:6504:2cec:969e])
        by smtp.gmail.com with ESMTPSA id e13sm17644218pff.45.2019.07.09.10.15.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Jul 2019 10:15:14 -0700 (PDT)
Date:   Tue, 9 Jul 2019 22:45:08 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709171508.GA10127@Mani-XPS-13-9360>
References: <20190618212229.32302-4-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190618212229.32302-4-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> Convert RDA Micro SoC bindings to DT schema format using json-schema.
> 
> Cc: "Andreas Färber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Andreas, Update the license on this one too to dual licensed if you 
> want.

I'm fine with GPL-2.0. Since there isn't any other RDA specific patches
in my tree, you want to take this patch? Else I have to send the Pull
Request to ARM SoC folks with this patch alone.

Thanks,
Mani

> 
>  Documentation/devicetree/bindings/arm/rda.txt | 17 ----------------
>  .../devicetree/bindings/arm/rda.yaml          | 20 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 21 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/rda.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/rda.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/rda.txt b/Documentation/devicetree/bindings/arm/rda.txt
> deleted file mode 100644
> index 43c80762c428..000000000000
> --- a/Documentation/devicetree/bindings/arm/rda.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -RDA Micro platforms device tree bindings
> -----------------------------------------
> -
> -RDA8810PL SoC
> -=============
> -
> -Required root node properties:
> -
> - - compatible :  must contain "rda,8810pl"
> -
> -
> -Boards:
> -
> -Root node property compatible must contain, depending on board:
> -
> - - Orange Pi 2G-IoT: "xunlong,orangepi-2g-iot"
> - - Orange Pi i96: "xunlong,orangepi-i96"
> diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentation/devicetree/bindings/arm/rda.yaml
> new file mode 100644
> index 000000000000..51cec2b63b04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/rda.yaml
> @@ -0,0 +1,20 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/rda.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RDA Micro platforms device tree bindings
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - xunlong,orangepi-2g-iot     # Orange Pi 2G-IoT
> +          - xunlong,orangepi-i96        # Orange Pi i96
> +      - const: rda,8810pl
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2c6f4d15805e..56ee276088eb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2111,7 +2111,7 @@ F:	arch/arm/boot/dts/rda8810pl-*
>  F:	drivers/clocksource/timer-rda.c
>  F:	drivers/irqchip/irq-rda-intc.c
>  F:	drivers/tty/serial/rda-uart.c
> -F:	Documentation/devicetree/bindings/arm/rda.txt
> +F:	Documentation/devicetree/bindings/arm/rda.yaml
>  F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-intc.txt
>  F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
>  F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
> -- 
> 2.20.1
> 
