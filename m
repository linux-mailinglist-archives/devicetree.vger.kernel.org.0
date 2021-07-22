Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25FD63D1BAD
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbhGVB3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 21:29:45 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:41621 "EHLO
        mail-io1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbhGVB3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 21:29:43 -0400
Received: by mail-io1-f51.google.com with SMTP id z9so4620021iob.8
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=1h7nVXxoJSB+Pcoc85nN01lGYZB7CrZ0pIvE9KNoMP8=;
        b=VNRq9uTo+Lxiu6N6eVR/aygH14bPy03y7wZzsAlPc87SmcAdJ47qu8Rv617CK+iBSy
         tPLCi4ESiTnh93smidXW6oy4zuqy7kI/iL2VZIcJasaFGobKLuajZ0B/m77/6Z5UR/Sd
         I4wPWMti43KyolCd4QTp8xptIgA++7nQ/+EZsemQaVVcZ8KKsUmk4GJ/hKI4jKB+CIzq
         Jn5fHSwaB7Aodwdr2DkRKznTkiNu+S8Vn1ZSuxW6hZ13kL6XoDtRoLqI9zwP/fITgpjU
         +G5NHnfC+jznfWL6O2LTr2FLHgRg9r+VqBCkLOWTTz/Pka4cnmuC9eS/wHZKFC/tOgLz
         vcsg==
X-Gm-Message-State: AOAM531rWPD/CUFV+GHFM0Qxo1EK/43c5+9jIt5z7MA01gmaS+tPWAKV
        5R4ubVZilmUhqRuwdMGvEA==
X-Google-Smtp-Source: ABdhPJzyaKKg9KKqI9c05xlv7+ivpgS396FNMXPqM8les6dQioJYYNLXQofloFEqlIRod2Zl6pJcKQ==
X-Received: by 2002:a05:6638:538:: with SMTP id j24mr24005522jar.59.1626919817881;
        Wed, 21 Jul 2021 19:10:17 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id w1sm13429405ilv.59.2021.07.21.19.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:10:17 -0700 (PDT)
Received: (nullmailer pid 3145323 invoked by uid 1000);
        Thu, 22 Jul 2021 02:09:56 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
In-Reply-To: <20210721140424.725744-7-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-7-maxime@cerno.tech>
Subject: Re: [PATCH 06/54] dt-bindings: arm: Convert ARM CCI-400 binding to a schema
Date:   Wed, 21 Jul 2021 20:09:56 -0600
Message-Id: <1626919796.949365.3145322.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:36 +0200, Maxime Ripard wrote:
> The ARM CCI-400 Interconnect is supported by Linux thanks to its device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 +++++++++++++++++
>  .../bindings/arm/cci-control-port.yaml        |  38 +++
>  Documentation/devicetree/bindings/arm/cci.txt | 224 ------------------
>  3 files changed, 254 insertions(+), 224 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/arm/arm,cci-400.example.dt.yaml:0:0: /dma@3000000: failed to match any schema with compatible: ['arm,pl330', 'arm,primecell']
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1508250

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

