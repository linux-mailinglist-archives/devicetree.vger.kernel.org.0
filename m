Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE44734975C
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 17:57:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbhCYQ4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 12:56:32 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:37494 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhCYQ4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 12:56:04 -0400
Received: by mail-io1-f43.google.com with SMTP id b10so2589868iot.4
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 09:56:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=/ScO6XMEnuFtsG1sXpIeHDcl0GG8nAqFbwD18gXyzyE=;
        b=mpUAtLRFdsKfjUqVJEpZ8x4Bkd6zD58OPIapVTg2Mk5Qs1GAGbaVXaxhcOXbXAeQ7A
         tW2tSx65Vtv+rL1FQ9Ae+YhbDzr3LJXo/447mSJkkTaL4HnH9wzPczRvT7MP/6Ly45oB
         M3EPbWNx0Hw3nRnbVIb7lHYszUFgNq32TfAcB5ZhT37XtztSgHJkWExjUC3GZsWB4/fH
         2cVhu6Qxh5gHLbZHBxMcii7rWU1ayAmM5RaugzocqhZfpXvQvHBqe4yi44PQJ8wiS+mU
         Zp3euyWQdjorkX5qHR/d3hUpagGhA53arLihMlg0S33UZYyDhBt1nF1dUGTgkoWkbAzn
         /hlQ==
X-Gm-Message-State: AOAM530e/KtoCCVliaDXLUsHhGP1rZXgQpFqGLx7WBHfJP703rItVhYh
        c2tc5DLUqi4hPzS0wMVJIw==
X-Google-Smtp-Source: ABdhPJxIte7OOT4m0iZIpIpF9Lb9lAhTWfkD83T1fElktNAYVqlabTWLyqvb8EYaO0MiixhjTT79bQ==
X-Received: by 2002:a5e:d908:: with SMTP id n8mr7224172iop.121.1616691364005;
        Thu, 25 Mar 2021 09:56:04 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id 18sm2967927ilj.59.2021.03.25.09.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:56:03 -0700 (PDT)
Received: (nullmailer pid 1321886 invoked by uid 1000);
        Thu, 25 Mar 2021 16:56:01 -0000
From:   Rob Herring <robh@kernel.org>
To:     daire.mcnamara@microchip.com
Cc:     mturquette@baylibre.com, david.abdurachmanov@gmail.com,
        linux-clk@vger.linux.org, cyril.jean@microchip.com,
        robh+dt@kernel.org, lewis.hanly@microchip.com, sboyd@kernel.org,
        padmarao.begari@microchip.com, devicetree@vger.kernel.org,
        conor.dooley@microchip.com
In-Reply-To: <20210324104351.2200605-2-daire.mcnamara@microchip.com>
References: <20210324104351.2200605-1-daire.mcnamara@microchip.com> <20210324104351.2200605-2-daire.mcnamara@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: clk: microchip: Add Microchip PolarFire host binding
Date:   Thu, 25 Mar 2021 10:56:01 -0600
Message-Id: <1616691361.034558.1321885.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 24 Mar 2021 10:43:50 +0000, daire.mcnamara@microchip.com wrote:
> From: Daire McNamara <daire.mcnamara@microchip.com>
> 
> Add device tree bindings for the Microchip PolarFire system
> clock controller
> 
> Signed-off-by: Daire McNamara <daire.mcnamara@microchip.com>
> ---
>  .../bindings/clock/microchip,mpfs.yaml        | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/clock/microchip,mpfs.example.dts:19:18: fatal error: dt-bindings/clock/microchip,mpfs-clock.h: No such file or directory
   19 |         #include <dt-bindings/clock/microchip,mpfs-clock.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:349: Documentation/devicetree/bindings/clock/microchip,mpfs.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1380: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1457851

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

