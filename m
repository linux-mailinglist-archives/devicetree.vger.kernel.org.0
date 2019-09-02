Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70BDEA5812
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 15:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731254AbfIBNjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 09:39:13 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38786 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731242AbfIBNjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 09:39:12 -0400
Received: by mail-wm1-f68.google.com with SMTP id o184so14654271wme.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 06:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=viDwZpOARz1cFM6lOwQ1Yo70h5ns2nY224fON3ziGZ0=;
        b=P2BxIvcH0zdNH9r+6lg+6dT9h+P3P6GVzmOgwsGWEO1ogY1JpwXD6iH/pS9yBWA3XJ
         tD9EUAzZo6bUYtyiQP3psS4kTO3rOSE1K1gTnxJ+DG2Ec1r/+hgxlRnxALWFVxzt4wgM
         Ws1oRVmNu+l34ipaQM5vOo0Z8tTFQGAdxj6jP2X0EoUf7Z+ktUR7l6LBB00ZbuABKS1I
         GjVcMNA15Rgko7J5brd2/W4s93455APfbYbCbSGBKByC4DCxdUojUpkAfOd+JFTwNClf
         tdLOYWP5ilkRZMC8OvV78fp2wxHgCHs+ITEDAs3CoRphSbSP6pnFyc46hYmzhBibxxrB
         AOiw==
X-Gm-Message-State: APjAAAULfdCdL+Qvp9Su5TwEktxzrpXwM6E6uiM4p6FYfG+Aaz1ipnVj
        hllODSGTBhv9onJ5gwnHow==
X-Google-Smtp-Source: APXvYqxdFPgNrwKSJzlloeKFZWB965JRx6jQia5i73v3szd87dRMibiKtLQqdaSZgMepWZVR2jwaZw==
X-Received: by 2002:a7b:c7cc:: with SMTP id z12mr16711817wmk.80.1567431551009;
        Mon, 02 Sep 2019 06:39:11 -0700 (PDT)
Received: from localhost ([212.187.182.166])
        by smtp.gmail.com with ESMTPSA id m23sm19628786wml.41.2019.09.02.06.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 06:39:10 -0700 (PDT)
Date:   Mon, 02 Sep 2019 14:39:09 +0100
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
Message-ID: <20190902044231.GA17348@bogus>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <20190830210607.22644-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190830210607.22644-2-miquel.raynal@bootlin.com>
X-Mutt-References: <20190830210607.22644-2-miquel.raynal@bootlin.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 30, 2019 at 11:06:06PM +0200, Miquel Raynal wrote:
> Document the logicPD I2S FPGA block bindings in yaml.
> 
> Syntax verified with dt-doc-validate.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> new file mode 100644
> index 000000000000..cbff641af199
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +
> +description: |
> +  The IP supports I2S playback/capture audio. It acts as a slave and
> +  clocks should come from the codec. It only supports two channels and
> +  S16_LE format.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: xlnx,logicpd-i2s
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      Base address and size of the IP core instance.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: tx interrupt
> +      - description: rx interrupt
> +    description:
> +      Either the Tx interruption or the Rx interruption or both.

The schema says either tx or both. Doesn't really matter here as it's 
just numbers.

> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: tx
> +      - const: rx

But here it does matter.

The easiest way to express this is:

oneOf:
  - items:
      - enum: [ tx, rx ]
  - items:
      - const: tx
      - const: rx

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupts-controller
> +
> +examples:
> +  - |
> +    logii2s_dai: logii2s-dai@43c10000 {
> +        reg = <0x43c10000 0x1000>;
> +        compatible = "xlnx,logicpd-i2s-dai";
> +        interrupt-parent = <&intc>;
> +        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>, <0 30 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "rx", "tx";
> +    };
> -- 
> 2.20.1
> 

