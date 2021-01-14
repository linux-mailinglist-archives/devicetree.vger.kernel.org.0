Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94CE22F6EAC
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 23:56:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730840AbhANWyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 17:54:49 -0500
Received: from mail-oo1-f41.google.com ([209.85.161.41]:35718 "EHLO
        mail-oo1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730835AbhANWyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 17:54:49 -0500
Received: by mail-oo1-f41.google.com with SMTP id s19so1775383oos.2
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 14:54:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=34AMVK93rgPDwGuNVgNxJ7NzIYYLGU8YZBtsafOkccc=;
        b=EWMGMOeZ7ceqQaqJZFxrgjCVw0uZ4HYY85HOtO3ybPdRzEKChSu2MhJAHcWqx0pb4c
         iWALjUKpK7INeIcA+Z1LsmNJFwUkhEHgPZAnxxiCgn+8JaA7q9I1/nf81cMNPg1WgadU
         Q/t6VDqxgE0h2xDPd4XWdCGdyTOpYjnPFCnKUGfuU9NTcy+JDtu1GgUYVERxM/wwV6x5
         MeKc+ma2D0W/Vj87PZ4K0ho7oMapNQzgONEFhf5Jqmbr9Zlbacsm+us86tSBZyXuBQRU
         uSNfM101h9/JdSpD9e+vBK7t/XjQSQRWVVPxEbtbOSFkld+UuInr0XplO8TWIZo/Cv7B
         v97A==
X-Gm-Message-State: AOAM530zso2tF1XL+OIPr7zRXt+GsTFdRX5TVBir19MdHLO7DCzMVLXI
        G9aalcatvCfBVvT7lh1PWQ==
X-Google-Smtp-Source: ABdhPJwpjXLAH+CutZqlx3/2gM2esvoRo16QBCF85CzJ1/Mjt85sRFQIRXsiPCLykRV7ydZIlCjJ1g==
X-Received: by 2002:a4a:c692:: with SMTP id m18mr6114671ooq.59.1610664848801;
        Thu, 14 Jan 2021 14:54:08 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l12sm1364789ooq.22.2021.01.14.14.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 14:54:07 -0800 (PST)
Received: (nullmailer pid 3797257 invoked by uid 1000);
        Thu, 14 Jan 2021 22:54:06 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>,
        Alistair Francis <alistair@alistair23.me>
In-Reply-To: <20210114113538.1233933-5-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-5-maxime@cerno.tech>
Subject: Re: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to unevaluatedProperties
Date:   Thu, 14 Jan 2021 16:54:06 -0600
Message-Id: <1610664846.670175.3797255.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 12:35:24 +0100, Maxime Ripard wrote:
> additionalProperties prevent any property not explicitly defined in the
> binding to be used. Yet, some serial properties like max-speed are valid
> and validated through the serial/serial.yaml binding.
> 
> Let's change additionalProperties to unevaluatedProperties to avoid
> spurious warnings.
> 
> Cc: Alistair Francis <alistair@alistair23.me>
> Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

See https://patchwork.ozlabs.org/patch/1426311

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

