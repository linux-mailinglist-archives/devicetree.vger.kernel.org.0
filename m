Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9B4F2BB7E7
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 21:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730167AbgKTUtr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 15:49:47 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:41065 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729912AbgKTUtq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 15:49:46 -0500
Received: by mail-ot1-f68.google.com with SMTP id o3so9985805ota.8
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 12:49:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=W7lQrzdAOjkKYyj6xhzZ9osezKgm+xTXKqwpCCfV6ww=;
        b=qUVR9ZpBneUzlnuZ+PoK7vcE0ll0wdt2Rbt+ftZzxKri0xnQT6kgOLJU2sKqnVCaXa
         uTPGQUGdbeeiVHzd20D4+L50AGUi75moslpM7a2is3gbOiCQkUJZLLe8dmf7ECgyL/Jq
         adK8fxgVS3e85oARlf5QkhTLU3rSHiu7CrLw/1XX1/y48+x7ucGYjLRDqswJr4/0CFCz
         SWqPc4ocfUphKKzov6MoeiQlwOJQNH/xYUGCE3DUWANqcgOgLCB6wuFjK9p7nzWxQwDo
         6P8uQsh8IZmfV7SVIatyank5jCX2ZbNLykmWCzTrTJZj7O5VdOm6aIH4XI2KSgynF2Ml
         JY1A==
X-Gm-Message-State: AOAM531ZaQXvAVMZoD+exaqCtNjkB5Ty3EXiEuUgOjlBHaXOkF5SWC7J
        EAOyubptUSz1ypDLaJfZwA==
X-Google-Smtp-Source: ABdhPJwFwQxEgu2ijMwd81pNY9gb8+AhQXIzEh1VSXJFHzyloDGMOlwyz4HZvt2VyCMHaMMpYB9Prg==
X-Received: by 2002:a05:6830:1d8c:: with SMTP id y12mr262185oti.34.1605905385906;
        Fri, 20 Nov 2020 12:49:45 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l1sm1880646otj.17.2020.11.20.12.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:49:45 -0800 (PST)
Received: (nullmailer pid 1716977 invoked by uid 1000);
        Fri, 20 Nov 2020 20:49:43 -0000
Date:   Fri, 20 Nov 2020 14:49:43 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     jassisinghbrar@gmail.com, devicetree@vger.kernel.org,
        aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com,
        palmer@dabbelt.com, daire.mcnamara@microchip.com,
        lewis.hanly@microchip.com, atish.patra@wdc.com, robh+dt@kernel.org,
        paul.walmsley@sifive.com, cyril.jean@microchip.com
Subject: Re: [PATCH 3/6] dt-bindings: add bindings for polarfire soc mailbox
Message-ID: <20201120204943.GA1716438@robh.at.kernel.org>
References: <20201119170432.18447-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119170432.18447-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 17:04:32 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../mailbox/microchip,mpfs-mailbox.yaml       | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.example.dt.yaml: example-0: mailbox@37020000:reg:0: [0, 922877952, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.example.dt.yaml: example-0: mailbox@37020000:reg:1: [0, 536883596, 0, 64] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml


See https://patchwork.ozlabs.org/patch/1403152

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

