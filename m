Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D79B730228
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 16:46:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236769AbjFNOqI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 10:46:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235889AbjFNOqD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 10:46:03 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BB361BE8
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 07:46:02 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-62dfc2da0c8so12951506d6.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 07:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1686753961; x=1689345961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XCPI5ZcRcUuga+hwGvL6zbC51EZUbGkp50/wT3gC0jw=;
        b=bxe8uVF1FEFSaF8JRbza9nJxP5K4Z2yuCd6J5OgmRschaBVxVJWJfmR+Ixcf6XsCRD
         VQGIikKxvftgKxlPbwVUcIOeW1ItnaXi0L9T24RrWyFWyUKgAKRwPeOhpH7hFh6F8sut
         jfeVokjQBWaGawD+ng6KqGLNS2xBnH9Qsjz03TyIdT94ubbeK/TtqLGXGf4t+RIxSQWO
         52o0vVvPYfTfR984Gy3/51k9fZpw+606eog4fRYT1dwqqc3HBjtl9YL8GXmCIy0qAkT0
         H8izUvIjCjOVtOI+9wUZ1aCs2HTvUtIXN+RsHs0mvBD8QwW+edk74Aq/Rv2f8Vb1W63i
         QpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686753961; x=1689345961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCPI5ZcRcUuga+hwGvL6zbC51EZUbGkp50/wT3gC0jw=;
        b=A3kQPNe/9MTZ9QTHKDu0GfetVQj07AbAsSTyT63/g1D7Xbb4EQXqH9+9QHcoDFYvm+
         fpanNF71RvjQwroYh6Figvlu7hsOuIua+MDdlVNJOOMuPpkuYYGLk39vwZ0eClS4WHHl
         bsJOlpCN1+/8ZPST/mq3L5xZCEW7C5T1vYyIQtJ/JTN2dz9iFzMhLhh6cV357rpj8eli
         iYwKfhbnFw1EamghBBGZbXthoh6Stro3ditpaqS+FCUtLyE916UOle1oXMn7dpXDOVQn
         KGGDyDvZ2oZ7AQny04nyne9R20bnYBlaUdDnwG4+H2h5byQLdyomEdDfHAz7BBIYEv1U
         dF7w==
X-Gm-Message-State: AC+VfDxlTqCiRu+f1QyOV4bHtJ/YjUNU/qwzQ2aUHQYQWwt2G/pt1Lnb
        BmKRpOmnPRFfi0C80jg8JkKOgA==
X-Google-Smtp-Source: ACHHUZ6YaaB5KAvmXloQoWaGZZvdtx8GavR+DcReFGFHeE3s5pRaCqmulS8858ZysFsR+JLXe8ovLQ==
X-Received: by 2002:a05:6214:d0b:b0:5ef:46a9:15d2 with SMTP id 11-20020a0562140d0b00b005ef46a915d2mr16973858qvh.7.1686753961443;
        Wed, 14 Jun 2023 07:46:01 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id e21-20020a0caa55000000b00626330a39ecsm4785870qvb.9.2023.06.14.07.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 07:46:01 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
        (envelope-from <jgg@ziepe.ca>)
        id 1q9Rl2-0058qB-9u;
        Wed, 14 Jun 2023 11:46:00 -0300
Date:   Wed, 14 Jun 2023 11:46:00 -0300
From:   Jason Gunthorpe <jgg@ziepe.ca>
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Conor Dooley <conor@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v4 06/10] irqchip/riscv-imsic: Improve IOMMU DMA support
Message-ID: <ZInSqC6b7RPD1nzX@ziepe.ca>
References: <20230613153415.350528-1-apatel@ventanamicro.com>
 <20230613153415.350528-7-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230613153415.350528-7-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 13, 2023 at 09:04:11PM +0530, Anup Patel wrote:
> We have a separate RISC-V IMSIC MSI address for each CPU so changing
> MSI (or IRQ) affinity results in re-programming of MSI address in
> the PCIe (or platform) device.
> 
> Currently, the iommu_dma_prepare_msi() is called only once at the
> time of IRQ allocation so IOMMU DMA domain will only have mapping
> for one MSI page. This means iommu_dma_compose_msi_msg() called
> by imsic_irq_compose_msi_msg() will always use the same MSI page
> irrespective to target CPU MSI address. In other words, changing
> MSI (or IRQ) affinity for device using IOMMU DMA domain will not
> work.

You didn't answer my question from last time - there seems to be no
iommu driver here so why are you messing with iommu_dma_prepare_msi()?

This path is only for platforms that have IOMMU drivers that translate
the MSI window. You should add this code to link the interrupt
controller to the iommu driver when you introduce the iommu driver,
not in this series?

And, as I said before, I'd like to NOT see new users of
iommu_dma_prepare_msi() since it is a very problematic API.

This hacking of it here is not making it better :(

Jason
