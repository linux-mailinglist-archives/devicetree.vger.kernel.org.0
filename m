Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFD013379AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 17:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbhCKQlu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 11:41:50 -0500
Received: from mail-io1-f44.google.com ([209.85.166.44]:44370 "EHLO
        mail-io1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbhCKQlX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 11:41:23 -0500
Received: by mail-io1-f44.google.com with SMTP id 81so22570319iou.11
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 08:41:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=+3y5o+1oaKZuqMVhsS8ruopNhactPzUGBDXzkkE8/k8=;
        b=p5/qNb/2fGH/NZGPXPJ1/Ki7ZlEOd+WfXdeqefYuI15SiBXAYnoXm71oa78Xfr36L0
         UwD3yqU5fCfBDav6izza9v25kAUe3vttalasNEHkn9lZOKyhwwF+PgN/mBKZKiphaSGd
         /8CTwUEiER8RjTWnB0PzGG6xuKCbSgUfGnZmIrgYn2g93TGpvyM1rQ8k6bn2DmqYZrGT
         mcH1Q7XujflMAj7kmpHfigqDEhC2aI5slA4Owsrhox6DgAbV5grhRW7pMUwVwDeQMjEe
         5kxbcHVHb6Wq+CF/fKfppQNaZ7CJjrB0w+Ep/EqTIkkOX0SB7k+V/5KwknhYH94P9X0U
         YwuQ==
X-Gm-Message-State: AOAM531Q3VxqW66SKbnDjaJZ1ylLACvXgIW8VUM2XpVOhg8wYyrV3Zc9
        wdDHnRyTNTjm3xeg3vSmnw==
X-Google-Smtp-Source: ABdhPJyLpyMvmT0QzCq9t02xwB8NsMjQ95MqYOykv4HfJ/6xg44iVvVnwoBMIgXafHcqcX15IST9bg==
X-Received: by 2002:a6b:6016:: with SMTP id r22mr6842998iog.93.1615480881372;
        Thu, 11 Mar 2021 08:41:21 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id a14sm1576741ilm.68.2021.03.11.08.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 08:41:20 -0800 (PST)
Received: (nullmailer pid 841937 invoked by uid 1000);
        Thu, 11 Mar 2021 16:41:02 -0000
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     atish.patra@wdc.com, devicetree@vger.kernel.org,
        daire.mcnamara@microchip.com, aou@eecs.berkeley.edu,
        anup.patel@wdc.com, lewis.hanly@microchip.com,
        damien.lemoal@wdc.com, robh+dt@kernel.org,
        jassisinghbrar@gmail.com, david.abdurachmanov@gmail.com,
        linux-riscv@lists.infradead.org, cyril.jean@microchip.com,
        j.neuschaefer@gmx.net, palmer@dabbelt.com, paul.walmsley@sifive.com
In-Reply-To: <20210311113444.15520-1-conor.dooley@microchip.com>
References: <20210311113444.15520-1-conor.dooley@microchip.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Thu, 11 Mar 2021 09:41:02 -0700
Message-Id: <1615480862.543621.841936.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Mar 2021 11:34:44 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,polarfire-soc-mailbox.yaml      | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/mailbox/microchip,polarfire-soc-mailbox.yaml#

See https://patchwork.ozlabs.org/patch/1451081

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

