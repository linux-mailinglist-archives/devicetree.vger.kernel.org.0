Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D48C3379AF
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 17:42:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbhCKQlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 11:41:51 -0500
Received: from mail-il1-f173.google.com ([209.85.166.173]:41243 "EHLO
        mail-il1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbhCKQlZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 11:41:25 -0500
Received: by mail-il1-f173.google.com with SMTP id c10so19480337ilo.8
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 08:41:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=CQUA7lEsNCIZfISGDNEPQTNkkXBr5JGsY/FpaftPSxY=;
        b=i5C6rSvwVvdzID10cOLDE41OKTc5N6egnbjtP8JM+WAjo2jpD1jxNiWT3iwfF6xipM
         RHthdwgM9YICkxkTp6dr+cRlQbglWElFItIW754NT9AJiDY1CAA8nPIFZZTnEt3glJ6S
         E1zbCt0hBToB+x+jFogjE0Bu3R+sig5goMwebtXsUTtgFsd6OTpbhSpa0kkVHLLjVXx7
         dKJMdXZQVgrdOFGkaHCike819MQf3uviaDF2IW0x5qeZSIBBFGIjxBhrTY/cxOfqeb7s
         vRFy+82lkkCUEbX/hh3ouesWWwXo4GRMIpL5k0WCELURbyO+bzB4y+b8/fmmGYt6qUsw
         2C+Q==
X-Gm-Message-State: AOAM533s5w30m5KJAPNxutDkhpop/I3RVishMjGt8VFsWYz/E0WtkqRS
        OtS8xGyIgE+LiSvCROKg6w==
X-Google-Smtp-Source: ABdhPJyi0lwoASwp6Gw1iZAwZwk3BpNQK40+2XPRSdT6ofNRjp1387XWkmBt1PpoQsvu9856sgnvDQ==
X-Received: by 2002:a92:7311:: with SMTP id o17mr7643444ilc.231.1615480884878;
        Thu, 11 Mar 2021 08:41:24 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id d3sm1564188ilo.32.2021.03.11.08.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 08:41:24 -0800 (PST)
Received: (nullmailer pid 841939 invoked by uid 1000);
        Thu, 11 Mar 2021 16:41:02 -0000
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     devicetree@vger.kernel.org, palmer@dabbelt.com,
        atish.patra@wdc.com, daire.mcnamara@microchip.com,
        anup.patel@wdc.com, aou@eecs.berkeley.edu, damien.lemoal@wdc.com,
        robh+dt@kernel.org, j.neuschaefer@gmx.net,
        cyril.jean@microchip.com, david.abdurachmanov@gmail.com,
        jassisinghbrar@gmail.com, linux-riscv@lists.infradead.org,
        paul.walmsley@sifive.com, lewis.hanly@microchip.com
In-Reply-To: <20210311113456.15686-1-conor.dooley@microchip.com>
References: <20210311113456.15686-1-conor.dooley@microchip.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Thu, 11 Mar 2021 09:41:02 -0700
Message-Id: <1615480862.550948.841938.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Mar 2021 11:34:56 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  ...icrochip,polarfire-soc-sys-controller.yaml | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml: properties:allOf: [{'$ref': '/schemas/mbox/mbox-consumer.yaml#properties'}] is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml: properties: {'enum': ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'if', 'items', 'maxItems', 'maximum', 'minItems', 'minimum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'propertyNames', 'required', 'then', 'unevaluatedProperties']} is not allowed for 'allOf'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml: ignoring, error in schema: properties: allOf
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml

See https://patchwork.ozlabs.org/patch/1451082

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

