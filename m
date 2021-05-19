Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDFB53892A2
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 17:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354866AbhESPa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 11:30:59 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:38779 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354872AbhESPaz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 11:30:55 -0400
Received: by mail-oi1-f170.google.com with SMTP id z3so13458356oib.5
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 08:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=bgrrGi/UMUuyu8aFCBMj2xWDHCffEqaEPf5cyqzt+PU=;
        b=I4UyKRvx0DXQ3GWtSw3YB/6EQ9kRDPZCA3gvBYjVKPbZpVb3EVY3o2nMZnxdAYK4br
         9ZOGyMt2di4zIUCHV84twtjJo6Q23px9LEcq5G3ZhpnuiUhI1hF8vw3CIeYhOGUGBLye
         YRhPxfvMPurzoJmFfoJnS3j8CG5bJL1dtl8PlJgPyR7xaMePhD7fnafw5DRSKI7h8b9W
         jV9Dvgcz8G0TO6ZigggZjj8gVQYYDBHqTwPPA6nYSm+89PLd6sS7k7BYqgAVWkPe4WBg
         U6bL/Jqm24JsEJgRIdGq9CdZcOSzXvWkgtQc3qj33D+KIGQcQtSqyjVlD9fYwXN5qxL/
         AfIw==
X-Gm-Message-State: AOAM5323F5j7G+M4be6gX4+S6EoT4l0uK97+hW5j6ULNHz9vfboAD9p/
        HXRR+66nYzZMZwHmwbWfsg==
X-Google-Smtp-Source: ABdhPJwGG/L5TdSlKJsDg3pDnq22pCZSZz+HE5Nn1icteMNAyhvUykBkn6iSb8KToy3ECiHxVlbLYg==
X-Received: by 2002:aca:2102:: with SMTP id 2mr8013819oiz.70.1621438172708;
        Wed, 19 May 2021 08:29:32 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i26sm1035679oos.21.2021.05.19.08.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 08:29:31 -0700 (PDT)
Received: (nullmailer pid 3134236 invoked by uid 1000);
        Wed, 19 May 2021 15:29:24 -0000
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Vivek Unune <npcomplete13@gmail.com>
In-Reply-To: <20210519082049.30976-1-zajec5@gmail.com>
References: <20210415062839.11713-1-zajec5@gmail.com> <20210519082049.30976-1-zajec5@gmail.com>
Subject: Re: [PATCH V2 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Date:   Wed, 19 May 2021 10:29:24 -0500
Message-Id: <1621438164.140945.3134235.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 10:20:49 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Use complete binding & change additionalProperties to false
> 
> NOTICE: this patch is based on top of the linux-next as it requires:
> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> 
> This is reworked version of the
> [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml     | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/pinctrl/brcm,ns-pinmux.yaml'
xargs: dt-doc-validate: exited with status 255; aborting
make[1]: *** Deleting file 'Documentation/devicetree/bindings/mfd/brcm,cru.example.dt.yaml'
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/pinctrl/brcm,ns-pinmux.yaml'
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/mfd/brcm,cru.example.dt.yaml] Error 255
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1416: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1480763

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

