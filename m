Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0B19269ADA
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 03:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726087AbgIOBFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 21:05:49 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:39395 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726057AbgIOBFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 21:05:47 -0400
Received: by mail-io1-f67.google.com with SMTP id b6so2239959iof.6
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 18:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4K8hgYOIozb4eV4tE27z5U4/TuKGwafzOOZVveRuAWg=;
        b=Ll/4TqOGffgj/KAPjLyTAUIAALd8hwt5v8pEEZDnQ6yL5QxFi7TKLyHKtIqgvOJLYe
         i7AWvAqaGFxXmrbiUhORfzJuOgkEiZPHWk5DB9jrc3J/CMT1xbdn3mX9/0vI4JBFvanQ
         tjDo9NTN+Mt++WAUF1DK9mNrI8uVxtxYRP3f+2aBc2UIT4SgzdjLduPbFoauxnOqJKem
         PpODNvzTMjlREJ5Y7m134bjfD/E1E4Odb8JLlcbc9A/4rUdoQdQkiv3Gff9cfICJBJPe
         ogvOyvuaS9jsgdscmDJEnu3tEbnDWChGo7AY9euTfppDaPUa6d9fRpqcCK+6Rs00rbZ5
         iI6g==
X-Gm-Message-State: AOAM5313Xdc/Fh7iTDyeGs11LFYRQx2Q+ZmIXn5Qt/F+XHN2G0SuAOsh
        P9ZY4YbvsrTyc6OYFBptC6WV/a+I9v/y
X-Google-Smtp-Source: ABdhPJyeOrm0wS6VfzxyWw018C3Pfbn90WCq5qB1yjbl7A1oksWUyEkQHM+2EgWsvF1hagglRRZ/7w==
X-Received: by 2002:a6b:6e0b:: with SMTP id d11mr13258988ioh.155.1600131945835;
        Mon, 14 Sep 2020 18:05:45 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id c6sm4023381ils.86.2020.09.14.18.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 18:05:45 -0700 (PDT)
Received: (nullmailer pid 628112 invoked by uid 1000);
        Tue, 15 Sep 2020 01:05:43 -0000
Date:   Mon, 14 Sep 2020 19:05:43 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH v3 2/5] powerpc: apm82181: create shared dtsi for APM
 bluestone
Message-ID: <20200915010543.GB612463@bogus>
References: <cover.1599343429.git.chunkeey@gmail.com>
 <47109d80c7bd481c7747c949e8a3ecd498d9c039.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <47109d80c7bd481c7747c949e8a3ecd498d9c039.1599343429.git.chunkeey@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 06, 2020 at 12:06:12AM +0200, Christian Lamparter wrote:
> This patch adds an DTSI-File that can be used by various device-tree
> files for APM82181-based devices.
> 
> Some of the nodes (like UART, PCIE, SATA) are used by the uboot and
> need to stick with the naming-conventions of the old times'.
> I've added comments whenever this was the case.
> 
> Signed-off-by: Chris Blake <chrisrblake93@gmail.com>
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
> rfc v1 -> v2:
> 	- removed PKA (this CryptoPU will need driver)
> 	- stick with compatibles, nodes, ... from either
> 	  Bluestone (APM82181) or Canyonlands (PPC460EX).
> 	- add labels for NAND and NOR to help with access.
> v2 -> v3:
> 	- nodename of pciex@d.... was changed to pcie@d..
> 	  due to upstream patch.
> 	- use simple-bus on the ebc, opb and plb nodes
> ---
>  arch/powerpc/boot/dts/apm82181.dtsi | 466 ++++++++++++++++++++++++++++
>  1 file changed, 466 insertions(+)
>  create mode 100644 arch/powerpc/boot/dts/apm82181.dtsi
> 
> diff --git a/arch/powerpc/boot/dts/apm82181.dtsi b/arch/powerpc/boot/dts/apm82181.dtsi
> new file mode 100644
> index 000000000000..60283430978d
> --- /dev/null
> +++ b/arch/powerpc/boot/dts/apm82181.dtsi
> @@ -0,0 +1,466 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Device Tree template include for various APM82181 boards.
> + *
> + * The SoC is an evolution of the PPC460EX predecessor.
> + * This is why dt-nodes from the canyonlands EBC, OPB, USB,
> + * DMA, SATA, EMAC, ... ended up in here.
> + *
> + * Copyright (c) 2010, Applied Micro Circuits Corporation
> + * Author: Tirumala R Marri <tmarri@apm.com>,
> + *	   Christian Lamparter <chunkeey@gmail.com>,
> + *	   Chris Blake <chrisrblake93@gmail.com>
> + */
> +
> +#include <dt-bindings/dma/dw-dmac.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <1>;
> +	dcr-parent = <&{/cpus/cpu@0}>;
> +
> +	aliases {
> +		ethernet0 = &EMAC0; /* needed for BSP u-boot */
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		CPU0: cpu@0 {
> +			device_type = "cpu";
> +			model = "PowerPC,apm82181";

This doesn't match the existing bluestone dts file.

Please separate any restructuring from changes.
