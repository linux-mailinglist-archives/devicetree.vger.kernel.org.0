Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A38F2D1538
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 16:58:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727128AbgLGPyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 10:54:17 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:41753 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726788AbgLGPyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 10:54:16 -0500
Received: by mail-oi1-f193.google.com with SMTP id 15so4673972oix.8
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 07:54:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Hypmg4LpjXSy0GzxNxBUf1ww7vOYIv2Xlk3pfbDp9J0=;
        b=G27WA/7iOT7fzy59y4w8zDnuWNRHTtf0LWgaM8s0eppRdVzThHOJ9tfPgfCgaiu7Bc
         24gT546O4W/muOIVi9ArqcFvtrDcJiM7hxRLDhcfkJgGu8gfKM/TewSZwHzYJOEMKffv
         yhnFznidJsH2yKTCwJHYWUfRM6ThI+k2j9hYDUDYlb+gUfP2MPeZrO0Nq6ZvT5f40NCv
         A0y4vulUCUU1F8bjCk8iLBcZqWP7jfNLcQdbpAJjd4OWKp0Btp22cn6hq9J3i/BvFLz6
         1vyOmF3yIdIw0z7wxc7920dm5BheARe8fSL23MgOc4r8yr5R30dZ6FUpF3ZFnFuSkBH4
         aaAg==
X-Gm-Message-State: AOAM532sMR7MiLFPFUYmj1Q/XDEnDWVJ3xiR9bIXCXgbqwxpldOX8k41
        kQXaotysE7dSKaUUUBZHpg==
X-Google-Smtp-Source: ABdhPJyGjeSH/GRe0J8BAg2uOUh/diV9qfejX27wBKuR4x7Sq1coEii1ZQtzYAuPbWmRRy3UhNAnmg==
X-Received: by 2002:aca:c3c3:: with SMTP id t186mr12960411oif.53.1607356416130;
        Mon, 07 Dec 2020 07:53:36 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k3sm1422103oor.19.2020.12.07.07.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:53:34 -0800 (PST)
Received: (nullmailer pid 345583 invoked by uid 1000);
        Mon, 07 Dec 2020 15:53:33 -0000
Date:   Mon, 7 Dec 2020 09:53:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     aou@eecs.berkeley.edu, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, daire.mcnamara@microchip.com,
        jassisinghbrar@gmail.com, david.abdurachmanov@gmail.com,
        palmer@dabbelt.com, atish.patra@wdc.com, damien.lemoal@wdc.com,
        cyril.jean@microchip.com, anup.patel@wdc.com,
        lewis.hanly@microchip.com, paul.walmsley@sifive.com,
        robh+dt@kernel.org
Subject: Re: [PATCH v2 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <20201207155333.GA345332@robh.at.kernel.org>
References: <20201201110311.28593-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201201110311.28593-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Dec 2020 11:03:11 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,mpfs_sys_controller.yaml        | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml:23:111: [warning] line too long (113 > 110 characters) (line-length)

dtschema/dtc warnings/errors:


See https://patchwork.ozlabs.org/patch/1408782

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

