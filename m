Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C27843BDE4
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 01:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240294AbhJZXdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 19:33:03 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:34553 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240288AbhJZXdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 19:33:03 -0400
Received: by mail-ot1-f54.google.com with SMTP id t17-20020a056830083100b00553ced10177so825737ots.1
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 16:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YdfJTAEtCAhSe+3h4tTe52kE6X+7iJoFuwPhPxv4gX8=;
        b=YRreYlHNanCfyV2ZYbmNpzevIpnK2Wt5LKvQsukX/T27H/1QTfJ+yKhWvnkVAx/Q+F
         7QXIbwxbH4WXUfIRrd13QcAG8g+kB/t6OdgbKA6iGe6QhpoPZtMOzgB4/xomN/GnbXok
         bx29i9dGPp7lCIu3c3Dsns0ZTmQ0Oyu27hKWf4cdwbFT2aqU4RHYX6fvrUg4l7i6c34d
         XIXi+c+8YbOE6P1sExXFM2j05Pvj20sCEL5L/sCPCmZ4vgvogHeQXExZCyL83uwSMQdY
         e3mgMWXqwWS9qxh1zM6H/+eIEG3d0HHDVDro/pwZvIHDMpvYwpMIV8l/Hdcda1x0RkAE
         XD+Q==
X-Gm-Message-State: AOAM531iMKb0bbyzefrUxMsqbcJxR0GI+52Er1o0oShmuzE6sd6VVBi2
        G9LupTHPck6t3whYKmdY9Q==
X-Google-Smtp-Source: ABdhPJycDdDfw2IphwJoJ9Qcr+cynsM1VQ1injCkHewZ9/51wcYtIag+y+i3rfiH0uhANUwonyEXTQ==
X-Received: by 2002:a05:6830:19c2:: with SMTP id p2mr21993981otp.27.1635291038361;
        Tue, 26 Oct 2021 16:30:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s39sm5224402otv.18.2021.10.26.16.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 16:30:37 -0700 (PDT)
Received: (nullmailer pid 3519654 invoked by uid 1000);
        Tue, 26 Oct 2021 23:30:36 -0000
Date:   Tue, 26 Oct 2021 18:30:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 2/2] dt-bindings: soc: bcm: Convert brcm,bcm2835-vchiq to
 json-schema
Message-ID: <YXiPnO4B9Za43ZDN@robh.at.kernel.org>
References: <1634475996-6809-1-git-send-email-stefan.wahren@i2se.com>
 <1634475996-6809-3-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1634475996-6809-3-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 17, 2021 at 03:06:36PM +0200, Stefan Wahren wrote:
> This converts the VCHIQ bindings to YAML format.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.txt        | 17 --------
>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.yaml       | 47 ++++++++++++++++++++++
>  2 files changed, 47 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
> deleted file mode 100644
> index f331316..0000000
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Broadcom VCHIQ firmware services
> -
> -Required properties:
> -
> -- compatible:	Should be "brcm,bcm2835-vchiq" on BCM2835, otherwise
> -		"brcm,bcm2836-vchiq".
> -- reg:		Physical base address and length of the doorbell register pair
> -- interrupts:	The interrupt number
> -		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
> -
> -Example:
> -
> -mailbox@7e00b840 {
> -	compatible = "brcm,bcm2835-vchiq";
> -	reg = <0x7e00b840 0xf>;
> -	interrupts = <0 2>;
> -};
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
> new file mode 100644
> index 0000000..2ef6b21
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/bcm/brcm,bcm2835-vchiq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom VCHIQ firmware services
> +
> +maintainers:
> +  - Nicolas Saenz Julienne <nsaenz@kernel.org>
> +
> +description: |

Don't need '|' if there is no formatting to preserve.

> +  The VCHIQ communication channel can be provided by BCM283x and Capri SoCs,
> +  to communicate with the VPU-side OS services.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm2835-vchiq
> +      - brcm,bcm2836-vchiq
> +
> +  reg:
> +    description: Physical base address and length of the doorbell register pair
> +    minItems: 1
> +
> +  interrupts:
> +    description: |
> +      Interrupt number of the doorbell interrupt
> +      see bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt

What interrupt controller you are attached to is outside the scope of a 
binding, so drop the ref. Plus, then we don't have to update it later.

> +    minItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mailbox@7e00b840 {
> +      compatible = "brcm,bcm2835-vchiq";
> +      reg = <0x7e00b840 0xf>;
> +      interrupts = <0 2>;
> +    };
> +
> +...
> -- 
> 2.7.4
> 
> 
