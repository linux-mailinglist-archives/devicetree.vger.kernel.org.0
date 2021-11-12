Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E95044E0B5
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 04:14:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbhKLDRg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 22:17:36 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:40481 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhKLDRg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 22:17:36 -0500
Received: by mail-ot1-f51.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so3935447otj.7
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 19:14:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=FhkP3DqyQXh5RMUcdf21YAJZtHtRc6ehAtBhoS54R60=;
        b=U361krQRnIhzkZkvmzvdLLtiiswkswvU9Mj1503LSQGxSoSCw09Zs/BqSXqU/WdJe5
         xAxoA7w0kQ/ekVzSo+lxSDwkVOShWLdX2jp4gVqfcVZGKKkDCBTlqznb2SA6yQvBCSZD
         Jt9dBy9o9YcgDeJNQHQwwvVnTzdN7i5eAb4EAb90BMhoBfhSSpM86NZsSJKkOH0PnIre
         p3Dw7UZFcoeVSEUsF6BhsDQDQK2vj0g7fwpRE6/RgzxlnszUb2zJsbxpYJOHfhZK39At
         /VBaEYGKNyyAG0A/QrIDSOqdZ7F7c4vPHPmsV4Je7QazjM0U3/CFEooHX4/Ot48jf3Y9
         uiVQ==
X-Gm-Message-State: AOAM532WS1LB3PIWeKeLVzfV8Aqtz999v/qbknodlgvLiib3sSAAe01G
        mVN/kyPNzs4YxQfIVvopvQ==
X-Google-Smtp-Source: ABdhPJxnY5O0cEKzuWXi7lcuRysab5RQjF26ANiZ53Y0PdC4u9Y+5lzakJ/OFSJKr8zDNBVstn+TbA==
X-Received: by 2002:a05:6830:1da:: with SMTP id r26mr9840805ota.73.1636686886205;
        Thu, 11 Nov 2021 19:14:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id o26sm993950otj.14.2021.11.11.19.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 19:14:45 -0800 (PST)
Received: (nullmailer pid 621132 invoked by uid 1000);
        Fri, 12 Nov 2021 03:14:44 -0000
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Matteo Lisi <matteo.lisi@engicam.com>,
        linux-amarula@amarulasolutions.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
In-Reply-To: <20211111154557.852637-2-jagan@amarulasolutions.com>
References: <20211111154557.852637-1-jagan@amarulasolutions.com> <20211111154557.852637-2-jagan@amarulasolutions.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
Date:   Thu, 11 Nov 2021 21:14:44 -0600
Message-Id: <1636686884.626655.621131.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Nov 2021 21:15:56 +0530, Jagan Teki wrote:
> i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.
> 
> C.TOUCH 2.0 is a general purpose carrier board with capacitive
> touch interface support.
> 
> 10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.
> 
> i.Core STM32MP1 needs to mount on top of C.TOUCH 2.0 carrier with
> pluged 10.1" OF for creating complete i.Core STM32MP1 C.TOUCH 2.0
> 10.1" Open Frame board.
> 
> Add bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/stm32/stm32.yaml:76:111: [warning] line too long (116 > 110 characters) (line-length)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1553999

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

