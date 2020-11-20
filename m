Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 389FE2BB7F5
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 21:59:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730046AbgKTUxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 15:53:41 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:32849 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728740AbgKTUxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 15:53:41 -0500
Received: by mail-ot1-f67.google.com with SMTP id n12so6485189otk.0
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 12:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HlhwNYubJtHrxWT2ZNAhkWxJDu+Su29i2kEspUacPRA=;
        b=ajHtm11bmVmXHNv5MZ/WbTbX/WTzqa/qzD+DZstLol+Lblmwyha35zmCHTOq4mimaC
         OnNPwfKc2hTv3NdFQx7QPZohAOCJHIB7j6nMuj1q8H8oTEuFZX6ijiF+7eND2LQfviAV
         BQ1pGRxlVhe+ZyHqv30tJyH0F8eaDKZNQy5wIshpH58F//PTzLrbZEelI2IjmQSL6WVs
         ODZZDe3/1l1Z+YE7AYK0IgW5bAGV3EpLfjE4eKFW6JqkaMSLW6Vti/eyODWk8RR9paOk
         WoFteQksfCsLpU/jg2E+08xRkLdfMbJ6R/IHlhC7qpwG3Psn2UeAWNcthW9HRmqG4LmM
         P8rg==
X-Gm-Message-State: AOAM531KFd31pTb9TqowIJp2Q9Nxhx2pGfVo0/1gXsS8ROxF3MRDJN9/
        FXAnecwWDyLu3pRJbYgp6Q==
X-Google-Smtp-Source: ABdhPJxUvqZlYEJM1cGthssq19Hy0wEqx5MMN8pabLRGvPs77JW4uNMJO6kUKBoplRLawY5EEP9CkQ==
X-Received: by 2002:a05:6830:158e:: with SMTP id i14mr15191550otr.123.1605905618986;
        Fri, 20 Nov 2020 12:53:38 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a5sm1791959oto.1.2020.11.20.12.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:53:38 -0800 (PST)
Received: (nullmailer pid 1722118 invoked by uid 1000);
        Fri, 20 Nov 2020 20:53:37 -0000
Date:   Fri, 20 Nov 2020 14:53:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, david.abdurachmanov@gmail.com,
        lewis.hanly@microchip.com, robh+dt@kernel.org,
        cyril.jean@microchip.com, anup.patel@wdc.com,
        jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
        daire.mcnamara@microchip.com, palmer@dabbelt.com,
        atish.patra@wdc.com
Subject: Re: [PATCH 5/6] dt-bindings: add bindings for polarfire soc system
 controller
Message-ID: <20201120205337.GA1721508@robh.at.kernel.org>
References: <20201119170958.20984-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119170958.20984-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 17:09:58 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,mpfs_sys_controller.yaml        | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml:23:111: [warning] line too long (113 > 110 characters) (line-length)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.example.dts:19.32-25.11: Warning (unit_address_vs_reg): /example-0/syscontroller@37020000: node has a unit name, but no reg or ranges property


See https://patchwork.ozlabs.org/patch/1403156

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

