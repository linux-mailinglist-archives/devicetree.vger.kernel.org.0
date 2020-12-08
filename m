Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37382D2F01
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:05:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729938AbgLHQEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:04:15 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:41470 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729998AbgLHQEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:04:15 -0500
Received: by mail-ot1-f66.google.com with SMTP id x13so8714662oto.8
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 08:03:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=87WguhbQXyz7kpCj449vkC4bNW+PjIa6SLvX4wLndSU=;
        b=HnpU+95XDOEnEeWDwj2iIdEzugPr2J4+7GakXGEjOa8nrhuH/ZjESbdhhEq6Bvwd9Y
         zqh4NsGWOb+nv37k+U7eHOVYp7ImfnlmEX/fJ9bmlG6rwbwLoaIFNitpgbZiw+oQIRr/
         +Lb57XSEf7arWhmTBfH1Iv1wnZPMh1L89ZULu+W44vXmsT/7/38/fyJlPJjWBnN2Ynwa
         /xb7z0A+29IDssxp0WsSw8Ba7wWcg8Z3lsG891qy0es9oaAoXytt9HUsQQz/B0oWozW+
         gX/fYm0Y0AJciWkAJo82Ug4S7RINiKk2Fzg2n9jRgTDNlbaDhbdIoqL2xaaxMhWBkwqg
         xDNw==
X-Gm-Message-State: AOAM530p1UpAijajDbGAJPXBIFmWGyOd8FzmB/GOaJcISGOvVSPEDXeJ
        b/OL8xMVhvsg8JeGhCYVow==
X-Google-Smtp-Source: ABdhPJwf2y1U5KcNNjc/RKc6n+6NCO6xXVMjz789cfBT9U3B2I5X9EwlA4rKtU1Q9A9A7Fk0qjitOA==
X-Received: by 2002:a9d:d01:: with SMTP id 1mr16935763oti.295.1607443414420;
        Tue, 08 Dec 2020 08:03:34 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g2sm3381321ooh.39.2020.12.08.08.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 08:03:23 -0800 (PST)
Received: (nullmailer pid 2610625 invoked by uid 1000);
        Tue, 08 Dec 2020 16:03:11 -0000
Date:   Tue, 8 Dec 2020 10:03:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dave Gerlach <d-gerlach@ti.com>
Cc:     Peter Ujfalusi <peter.ujfalusi@ti.com>,
        linux-arm-kernel@lists.infradead.org,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: ti: Add bindings for AM642 SoC
Message-ID: <20201208160311.GA2610574@robh.at.kernel.org>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-2-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201125052004.17823-2-d-gerlach@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Nov 2020 23:20:02 -0600, Dave Gerlach wrote:
> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable applications such as
> Motor Drives, PLC, Remote IO and IoT Gateways.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>   MCUs, and a single Cortex-M4F.
> * Two Gigabit Industrial Communication Subsystems (ICSSG).
> * Integrated Ethernet switch supporting up to a total of two external
>   ports.
> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>   peripherals.
> * Centralized System Controller for Security, Power, and Resource
>   Management (DMSC).
> 
> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> for further details: https://www.ti.com/lit/pdf/spruim2
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
