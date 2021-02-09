Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B66FF3152C7
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 16:28:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232582AbhBIP10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 10:27:26 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:45080 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232591AbhBIPZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 10:25:43 -0500
Received: by mail-ot1-f45.google.com with SMTP id o12so17733522ote.12
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 07:25:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ETOckpqhgtN1CWWOx8jueiJoxzKahbBsQfwx4pm8Tk0=;
        b=HXGZbeZfIaZ+oXxIWFN+w8S7vtgkAxtR656sVPZ2Q/kcKU8qUBNbYKKGf/6tofcSl/
         vlsliFOK4ZthwgaXRHCuQmhYP1nL1mUELr8Ffu34UsUioiJ94KT8KGiu0HHq8WjmqOLC
         9B6jioQGG5tO4Eh6b+Ft91IlSp/2KxE0S29vgTPUJNpHKjmH7nmE4wVIQDSUbhUmShOV
         lks+ik9Tm4lalodb+FrTFGLq9LDu/UNBfp4lOjLI3d52469NI8Wk+c0orkf+FKg2mP9e
         L5J9E3+g5NFK9403Nkwk4iarmK5JwikxGQBZH7JIsU2OAfpaat83A4zYkYucdtIsf/VZ
         gpug==
X-Gm-Message-State: AOAM530y2RKgmaP1M6C6MgOFqYBvl9BOAPuE6lGPgV70WmZfxgU47t5K
        Wlo7cb26jS9jYhR3hfP8LR0CBX0eIg==
X-Google-Smtp-Source: ABdhPJxjZbsbC+aYdLyJyL6JGkpXwUv0RmFQEzdoSCQTpuYVZ3NOYcUg9rgaSnpmpAgXY4KX3hPSxA==
X-Received: by 2002:a9d:961:: with SMTP id 88mr15549101otp.183.1612884302008;
        Tue, 09 Feb 2021 07:25:02 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e17sm4573577otf.32.2021.02.09.07.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 07:24:59 -0800 (PST)
Received: (nullmailer pid 3785781 invoked by uid 1000);
        Tue, 09 Feb 2021 15:24:58 -0000
Date:   Tue, 9 Feb 2021 09:24:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>, devicetree@vger.kernel.org,
        Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>,
        linux-riscv@lists.infradead.org, Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH v18 09/16] riscv: Update Canaan Kendryte K210 device tree
Message-ID: <20210209152458.GA3785724@robh.at.kernel.org>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
 <20210209123014.165928-10-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209123014.165928-10-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 09 Feb 2021 21:30:07 +0900, Damien Le Moal wrote:
> Update the Canaan Kendryte K210 base device tree k210.dtsi to define
> all supported peripherals of the SoC, their clocks and reset lines.
> The device tree file k210.dts is renamed to k210_generic.dts and
> becomes the default value selection of the configuration option
> SOC_CANAAN_K210_DTB_BUILTIN_SOURCE. No device beside the serial console
> is defined by this device tree. This makes this generic device tree
> suitable for use with a builtin initramfs with all known K210 based
> boards.
> 
> These changes result in the K210_CLK_ACLK clock ID to be unused and
> removed from the dt-bindings k210-clk.h header file.
> 
> Most updates to the k210.dtsi file come from Sean Anderson's work on
> U-Boot support for the K210.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kconfig.socs                     |   2 +-
>  arch/riscv/boot/dts/canaan/k210.dts         |  23 --
>  arch/riscv/boot/dts/canaan/k210.dtsi        | 395 ++++++++++++++++++--
>  arch/riscv/boot/dts/canaan/k210_generic.dts |  46 +++
>  include/dt-bindings/clock/k210-clk.h        |   1 -
>  5 files changed, 414 insertions(+), 53 deletions(-)
>  delete mode 100644 arch/riscv/boot/dts/canaan/k210.dts
>  create mode 100644 arch/riscv/boot/dts/canaan/k210_generic.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>
