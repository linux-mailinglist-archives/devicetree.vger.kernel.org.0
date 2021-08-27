Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B3F03F9E62
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 19:58:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235974AbhH0R7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 13:59:35 -0400
Received: from rosenzweig.io ([138.197.143.207]:43614 "EHLO rosenzweig.io"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231319AbhH0R7f (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Aug 2021 13:59:35 -0400
Received: by rosenzweig.io (Postfix, from userid 1000)
        id 5A51541AEA; Fri, 27 Aug 2021 17:58:45 +0000 (UTC)
Date:   Fri, 27 Aug 2021 17:58:45 +0000
From:   Alyssa Rosenzweig <alyssa@rosenzweig.io>
To:     Mark Kettenis <mark.kettenis@xs4all.nl>
Cc:     devicetree@vger.kernel.org, Mark Kettenis <kettenis@openbsd.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Saenz Julienne <nsaenzjulienne@suse.de>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v4 3/4] dt-bindings: pci: Add DT bindings for apple,pcie
Message-ID: <YSkn1bMU/xkl2P7e@rosenzweig.io>
References: <20210827171534.62380-1-mark.kettenis@xs4all.nl>
 <20210827171534.62380-4-mark.kettenis@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210827171534.62380-4-mark.kettenis@xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +#  msi-ranges:
> +#    description:
> +#      A list of pairs <intid span>, where "intid" is the first
> +#      interrupt number that can be used as an MSI, and "span" the size
> +#      of that range.
> +#    $ref: /schemas/types.yaml#/definitions/phandle-array

Comment intended?
