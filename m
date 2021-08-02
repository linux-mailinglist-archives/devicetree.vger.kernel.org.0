Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0B1F3DDFFD
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 21:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbhHBT0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 15:26:45 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:33321 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbhHBT0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 15:26:45 -0400
Received: by mail-io1-f41.google.com with SMTP id n19so21689352ioz.0
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 12:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Wh6CJUJkInmvc2LnlKeeBBjHzZp5o2jg5GIwOTmKcNI=;
        b=JdsCZnt0fzBwyhZ3ekitn+3r4EdGaLf/RmUJwDJVi0H+4XEVaJyThJFfCYjL4+jSTU
         qlK6f50xSW9JfMhyUVsBh7MZKp5O0lO6KlOtCuqaFqudeevAZ6DjER5Dk1B0skcHoD/H
         JMkS9cA2BFdZ20qcw711nIKbOXe4FUS8/SIPYvPkVzm6aQCofx1dva0I4pgSfuFeJUua
         cm37Qi+VTQi8jBp/pKBN1JjEaL78Au3NcV5TJ1ICwCmYUHqr1GA46AGj6QC/3Cr5VNQ2
         Gnwv7s5oTy6Q73PGyUai//hm7k8ddhAFyumOQhIHrgqiH5qgDIGKnZdLYkKGwtKNnWg7
         2xLA==
X-Gm-Message-State: AOAM530uScj3k1tCF3SKHHTSqXOQ9cl2T07X/esr76klUbhvNGbqNiEo
        Mr+7xgn1LGh4KNP/F0sw37aCE+wp2g==
X-Google-Smtp-Source: ABdhPJyf86EjcTouyzWQGRo/nC4jqyvj7HXTGPpvGDnsXTwrpLZWR04HpmQXGkbnzR90fA65Jyz+CQ==
X-Received: by 2002:a02:6a24:: with SMTP id l36mr15932154jac.4.1627932394566;
        Mon, 02 Aug 2021 12:26:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z11sm7525530ioh.14.2021.08.02.12.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 12:26:34 -0700 (PDT)
Received: (nullmailer pid 1449903 invoked by uid 1000);
        Mon, 02 Aug 2021 19:26:32 -0000
Date:   Mon, 2 Aug 2021 13:26:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Subject: Re: [RFC PATCH 2/2] dt-bindings: net: Add mctp-i2c bus-attach
 property
Message-ID: <YQhG6N421d7+Y0GO@robh.at.kernel.org>
References: <20210802040458.334732-1-matt@codeconstruct.com.au>
 <20210802040458.334732-3-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210802040458.334732-3-matt@codeconstruct.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 02, 2021 at 12:04:58PM +0800, Matt Johnston wrote:
> Allows attaching multiple child busses in a mux topology
> to an mctp-i2c instance on the root bus. In general I2C
> slave mode does not make sense for mux busses, but the MCTP
> request/response protocol means the the root can switch
> between child muxes for incoming I2C messages.

Perhaps a diagram of what I2C buses look like would help because I don't 
understand this.

> 
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  .../devicetree/bindings/net/mctp-i2c.yaml     | 42 +++++++++++++++++--
>  1 file changed, 38 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/mctp-i2c.yaml b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
> index f9378cd845d4..45429cbcc6a1 100644
> --- a/Documentation/devicetree/bindings/net/mctp-i2c.yaml
> +++ b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
> @@ -12,11 +12,10 @@ maintainers:
>  description:
>    The MCTP I2C binding defines an MCTP endpoint on the I2C bus to
>    communicate with I2C peripherals using MCTP (DMTF specification DSP0237).
> -
> -  An mctp-i2c device must be attached to a hardware bus adapter which supports
> +  A single binding node can attach to multiple child busses in a mux topology.
> +  An mctp-i2c node's parent must be a hardware bus adapter which supports
>    slave functionality. The reg address must include I2C_OWN_SLAVE_ADDRESS.
>  
> -
>  properties:
>    compatible:
>      const: mctp-i2c
> @@ -24,6 +23,17 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  bus-attach:
> +    $ref: "/schemas/types.yaml#/definitions/phandle-array"
> +    description: |
> +      List of phandles of I2C busses to attach to. I2C mux busses may only
> +      be attached to an mctp-i2c binding on their parent root adapter in the
> +      mux topology.
> +      If no bus-attach property is specified then only the direct parent
> +      I2C bus is attached. Otherwise to include a direct parent bus it
> +      must be included in the bus-attach list if needed.
> +
> +
>  additionalProperties: true
>  
>  required:
> @@ -33,12 +43,36 @@ required:
>  examples:
>    - |
>      #include <dt-bindings/i2c/i2c.h>
> -    i2c {
> +
> +    // simple attaching to a root adapter i2c0
> +    i2c0: i2cbus0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        mctp@50 {
> +            compatible = "mctp-i2c";
> +            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> +        };
> +    };
> +
> +    // attaching to a root adapter i2c5 and a child mux bus i2c14
> +    i2c5: i2cbus5 {
>          #address-cells = <1>;
>          #size-cells = <0>;
>  
>          mctp@50 {
>              compatible = "mctp-i2c";
>              reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> +            attach-bus = <&i2c5 &i2c14>;
>          };
>      };
> +
> +    i2cmux0 {
> +      compatible = "i2c-mux-gpio";
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      i2c-parent = <&i2c0>;
> +      i2c14: i2c@5 {

This is not how "i2c-mux-gpio" works. First you are missing mux-gpios. 
Second, how is this a mux with only 1 mux selection as the child nodes 
are the I2C buses for each mux selection.

> +        reg = <0>;

Either reg should be 5 here or the unit-address should be 0.

> +      };
> +    };
> -- 
> 2.30.2
> 
> 
