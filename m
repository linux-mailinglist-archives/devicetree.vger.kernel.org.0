Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B8623EA47A
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 14:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237543AbhHLMUg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 08:20:36 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:33419 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237432AbhHLMTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 08:19:54 -0400
Received: by mail-oi1-f176.google.com with SMTP id h11so10096489oie.0
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 05:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=KmrMvt8u/RnNkeR/FpoGINsb9diyUiiYz6yL7uadUyM=;
        b=mTgKybe6Dh9btLmfFVLAaA9ZXJ8mgt32UCd9fuB202f4HrDhy0LiesnFWP8Vo2JTvr
         PKrFhj8TeRNC6jB4Rws1rEhDkX/wLAkphvkCdZy9aKTcz18jVm8Uv4UNrmhGJ4is7MYr
         aJSc3TQVrDyq/awAEDniTuro7wWWxpti8tAoauvdwQegbNRAQVAAEbN5MHb3HI82mQDW
         6ekrVTpLQtNtAn6LQo2/FSdyRj1kTNX6PONsucrYR44mzLHmJjySbUfHzDOTbFDETfJD
         W+YYFtqZ+7feO73WlJf2OfNmBWkoRbg0gtnuEkzaM7yelUPfcQ0w99+/RW8rcL3W6KjV
         3LDQ==
X-Gm-Message-State: AOAM532Rfo+I0zIekWBQKWxcs9VPKMJGMx/AkuJidngbRyltjhnyaWgi
        63x4txT/4iduZyXiEsqx3g==
X-Google-Smtp-Source: ABdhPJy0wKII1rvQKKPbOea2abRnvjLCw8ACpHfEv5wWoKmLWVtTHe6yLvf9k3T4iFCMZ0CD48zeRA==
X-Received: by 2002:aca:dac1:: with SMTP id r184mr3171871oig.81.1628770768437;
        Thu, 12 Aug 2021 05:19:28 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m16sm275301oop.3.2021.08.12.05.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 05:19:27 -0700 (PDT)
Received: (nullmailer pid 1202802 invoked by uid 1000);
        Thu, 12 Aug 2021 12:19:26 -0000
From:   Rob Herring <robh@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     Wolfram Sang <wsa@kernel.org>, devicetree@vger.kernel.org,
        Jeremy Kerr <jk@codeconstruct.com.au>
In-Reply-To: <20210811034345.2424442-2-matt@codeconstruct.com.au>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au> <20210811034345.2424442-2-matt@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: net: New binding for mctp-i2c-generic
Date:   Thu, 12 Aug 2021 07:19:26 -0500
Message-Id: <1628770766.472742.1202801.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 11 Aug 2021 11:43:44 +0800, Matt Johnston wrote:
> An I2C bus with attached MCTP peripherals can be configured to be
> accessible to the host system, using a specified I2C address.
> 
> This mctp-i2c-generic binding can attach to existing I2C bus
> that supports slave functionality.
> 
> For a fictional hardware I2C controller:
> 
>     /* for I2C_OWN_SLAVE_ADDRESS */
>     #include <dt-bindings/i2c/i2c.h>
> 
>     /* root-level i2c controller */
>     i2c {
>         compatible = "vendor,example-i2c-controller";
>         reg = <...>
>         #address-cells = <1>;
>         #size-cells = <0>;
> 
>         mctp@50 {
>             compatible = "mctp-i2c";
>             reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
>         };
>     };
> 
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  .../bindings/net/mctp-i2c-generic.yaml        | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/net/mctp-i2c-generic.example.dt.yaml:0:0: /example-0/i2c/mctp@50: failed to match any schema with compatible: ['mctp-i2c']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1515565

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

