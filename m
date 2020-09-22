Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E558274D70
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 01:41:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726896AbgIVXlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 19:41:37 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:44894 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726641AbgIVXlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 19:41:37 -0400
Received: by mail-io1-f67.google.com with SMTP id g128so21629282iof.11
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 16:41:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=p1RL8zk9JCqmZ9TQdsIqa08RrKUZcF+JUNa75FvE4X4=;
        b=tjPmeZPyObqIKeQvBlkhA3mMThLoc0OOXCNzMFx5l9p4E6BpsO/0WtzmI5zMElGYVp
         Ru+mT0u7mLSgCglwabRzOm8d3s3oX7p8Mdwy3gdy3Koitk7JzIBTEjgJyQNLgSqiZwup
         dtf1DLJiyvPxQa1yMatvBmHMNpBjl9sDm+rY4oswupZM+vXyRNltK4YfGkHH2N/3AbMI
         htjMAIzR2UESDJj7BWrYzIRFk6ca7uCuGLRUsBXg/HOqS7t5VzIXeY+TP0+DXZouSTPk
         2D9BExBq/qBv85ig/poN/ojfcnhYa/y7jQ6iFFC/c8UMIBrws4TzniJm7ylf30ykQaB8
         0XfA==
X-Gm-Message-State: AOAM531pXIm928yHqHZXijysNg1Q4FlXEZ2Ufo/8j6VYvjwLfLzgh/aE
        Yqhioujv7b2F/q8vBvPSMQ==
X-Google-Smtp-Source: ABdhPJzhGUisiw6cRl8NCrjdATIOTxBLxrdxuoCIbWSTnBbmH1UVm1yAZz+bAx8byNw0XvuSm7PVsg==
X-Received: by 2002:a02:6623:: with SMTP id k35mr6187422jac.105.1600818096675;
        Tue, 22 Sep 2020 16:41:36 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id s2sm9943894ili.49.2020.09.22.16.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 16:41:36 -0700 (PDT)
Received: (nullmailer pid 3489380 invoked by uid 1000);
        Tue, 22 Sep 2020 23:41:34 -0000
Date:   Tue, 22 Sep 2020 17:41:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 3/5] dt-bindings: arm: ti: Add bindings for J7200 SoC
Message-ID: <20200922234134.GA3489252@bogus>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-4-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200914162231.2535-4-lokeshvutla@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Sep 2020 21:52:29 +0530, Lokesh Vutla wrote:
> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> It is targeted for automotive gateway, vehicle compute systems,
> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> The SoC aims to meet the complex processing needs of modern embedded
> products.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A72s in a single cluster, two clusters of lockstep
>   capable dual Cortex-R5F MCUs and a Centralized Device Management and
>   Security Controller (DMSC).
> * Configurable L3 Cache and IO-coherent architecture with high data
>   throughput capable distributed DMA architecture under NAVSS.
> * Integrated Ethernet switch supporting up to a total of 4 external ports
>   in addition to legacy Ethernet switch of up to 2 ports.
> * Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
>   20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C and
>   I2C, eCAP/eQEP, eHRPWM among other peripherals.
> * One hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
>   management.
> 
> See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> for further details: https://www.ti.com/lit/pdf/spruiu1
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
