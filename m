Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 865AB399472
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 22:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229467AbhFBUVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 16:21:19 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:34372 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbhFBUVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 16:21:18 -0400
Received: by mail-ot1-f52.google.com with SMTP id v27-20020a056830091bb02903cd67d40070so531443ott.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 13:19:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Kwi9AWnAN+pwFBTVSOF2Qq8CG0QbDor+XzQYcS9Q854=;
        b=FpbpTQIrxB9oZhlrvpZgFGfNdrtCUorKU524FSBMmlfAN3He4AE+XBTDOLjpSFyMJt
         thkQ8tCcB1+m3TKXIhDP+I8WsWzpE3kB0fk6N3VaoPMbkKz10AcLSpu8xKENIXGi8fnb
         iTKiFBPCrgjNnre/DTSJA3ZGT5tJs+AYJp5M3foBmzocaxlZzE5M66CJeeSZP5Q7hA6O
         wuNYxIpXVEAeJpjRiQlCsaDIVfH9cT9T9+5H3JieU/nxnfruF9ISInjeRQr+3bZXj/yL
         PtyqbNa4QMsEiUWvF7jxXNcejftx5M40K81Y2U85bDEqS0loafD/wrwaBkThYlI3bh6R
         Cp9A==
X-Gm-Message-State: AOAM532lDJgy57a5il+abOa7TwDW3EO+dciXGbu9KvIUFoIh+9JqwLCC
        88VRPP/e6NotSuxb7SISeA==
X-Google-Smtp-Source: ABdhPJwlXz4WDup6TDdOm5eEPRVmhBR1IeEm9NepD9KP7SskYWN1GWGbzegg8klCg+WGckPTg7ZDMA==
X-Received: by 2002:a05:6830:15d8:: with SMTP id j24mr6325923otr.123.1622665174779;
        Wed, 02 Jun 2021 13:19:34 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x187sm215221oia.17.2021.06.02.13.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 13:19:34 -0700 (PDT)
Received: (nullmailer pid 3924524 invoked by uid 1000);
        Wed, 02 Jun 2021 20:19:33 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sinthu Raja <sinthu.raja@mistralsolutions.com>
Cc:     Amarnath MB <amarnath.mb@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tero Kristo <kristo@kernel.org>,
        Sinthu Raja <sinthu.raja@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>
In-Reply-To: <20210602182237.12632-2-sinthu.raja@ti.com>
References: <20210602182237.12632-1-sinthu.raja@ti.com> <20210602182237.12632-2-sinthu.raja@ti.com>
Subject: Re: [1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
Date:   Wed, 02 Jun 2021 15:19:33 -0500
Message-Id: <1622665173.253924.3924523.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021 23:52:36 +0530, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> for TI’s J721E SoC.
> Add DT binding documentation for J721E EAIK
> 
> Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.example.dt.yaml: /: compatible: 'oneOf' conditional failed, one must be fixed:
	['ti,j721e'] is too short
	'ti,j721e' is not one of ['ti,am654-evm', 'siemens,iot2050-basic', 'siemens,iot2050-advanced']
	'ti,j721e' is not one of ['ti,j721e-eaik']
	'ti,j7200' was expected
	'ti,j721e' is not one of ['ti,am642-evm', 'ti,am642-sk']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/ti/k3.yaml

See https://patchwork.ozlabs.org/patch/1486849

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

