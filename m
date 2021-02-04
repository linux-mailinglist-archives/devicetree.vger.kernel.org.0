Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0A73100FD
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbhBDXtE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:49:04 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:39812 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbhBDXtD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:49:03 -0500
Received: by mail-oi1-f174.google.com with SMTP id w124so5633983oia.6
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:48:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=11/yMWgByTqPQ9weDtZWBZUCQwidOO2D/gNIb+qEPA0=;
        b=TD6Yqlms1RmJiYDEzomWV0uhVEioXstqDJGuh2Ei0bYfZesVxY/3WZn5QR0Zuk0Q6i
         qMqvp1aiMa+TTWnR0oGuiP4cmk60IXzmIVFPpxBkNMPHqtwVYVRDz6iOUEGM47ftDmrO
         /VJVWJPCprTMVEwPt7FXXEv+HppSjCj/c1Jz/w0vFeXH+DZt7lMJzqaPOCe6SVZVTjev
         KeY1WVJWVhJnor61oMkIkFqA5mC3FmqbsvSSzBB17WX60HjL1e19HWK5SLvlfdfmtrxg
         RZW8tYrptNJT9YgwonYNKWqJ2su8AAy9DyTMQVMeeky4EDznlApzORBuczgi/3T07MNK
         p5Cw==
X-Gm-Message-State: AOAM533N5vrKHI8djh7fB2QJii21wrz3AtbmuP1IVXtUE7YaKykM2vGy
        fP88n24Lurt/rPtb30iaXiy+aPzJPQ==
X-Google-Smtp-Source: ABdhPJzEKNvcRP/gBap1YCoizQhQGD6VDBVxF79naB9mCenOK0QmnSW6cmSGWhUCEOtNlJFZGci5ag==
X-Received: by 2002:a05:6808:8fa:: with SMTP id d26mr1376841oic.6.1612482502087;
        Thu, 04 Feb 2021 15:48:22 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m22sm1408338ooj.43.2021.02.04.15.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:48:21 -0800 (PST)
Received: (nullmailer pid 1351403 invoked by uid 1000);
        Thu, 04 Feb 2021 23:48:19 -0000
Date:   Thu, 4 Feb 2021 17:48:19 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v15 04/16] dt-bindings: update sifive plic compatible
 string
Message-ID: <20210204234819.GA1348461@robh.at.kernel.org>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
 <20210203125913.390949-5-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203125913.390949-5-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 03, 2021 at 09:59:01PM +0900, Damien Le Moal wrote:
> Add the compatible string "canaan,k210-plic" to the Sifive plic bindings
> to indicate the use of the "sifive,plic-1.0.0" IP block in the Canaan
> Kendryte K210 SoC. The description is also updated to reflect this
> change, that is, that SoCs from other vendors may also use this plic
> implementation.
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  .../sifive,plic-1.0.0.yaml                    | 20 ++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index b9a61c9f7530..04ed7a03c97e 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -8,10 +8,11 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: SiFive Platform-Level Interrupt Controller (PLIC)
>  
>  description:
> -  SiFive SOCs include an implementation of the Platform-Level Interrupt Controller
> -  (PLIC) high-level specification in the RISC-V Privileged Architecture
> -  specification. The PLIC connects all external interrupts in the system to all
> -  hart contexts in the system, via the external interrupt source in each hart.
> +  SiFive SoCs and other RISC-V SoCs include an implementation of the
> +  Platform-Level Interrupt Controller (PLIC) high-level specification in
> +  the RISC-V Privileged Architecture specification. The PLIC connects all
> +  external interrupts in the system to all hart contexts in the system, via
> +  the external interrupt source in each hart.
>  
>    A hart context is a privilege mode in a hardware execution thread. For example,
>    in an 4 core system with 2-way SMT, you have 8 harts and probably at least two
> @@ -41,9 +42,14 @@ maintainers:
>  
>  properties:
>    compatible:
> -    items:
> -      - const: sifive,fu540-c000-plic

Change this to an 'enum' and add 'canaan,k210-plic'.

> -      - const: sifive,plic-1.0.0
> +    oneOf:
> +      - items:
> +          - const: sifive,fu540-c000-plic
> +          - const: sifive,plic-1.0.0
> +
> +      - items:
> +          - const: canaan,k210-plic
> +          - const: sifive,plic-1.0.0
>  
>    reg:
>      maxItems: 1
> -- 
> 2.29.2
> 
