Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36F3F3DDDE8
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 18:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbhHBQpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 12:45:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:49278 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229640AbhHBQpZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Aug 2021 12:45:25 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E267461050
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 16:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627922715;
        bh=6d+aCMibC//l2ZY1UkVdpVETVM6JtE1nEo/qtEtHMNA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=hEYqk9fP6+LwxeCnUG2m6FSU/hQ2PRSdsQ/pvZ2Cp48FMHU9wRzFPjBmTj6zxf6d5
         sRWYMgc8RLT40iwfhxuWnJSeUkJlC3xdJ9nscb1FNiv8M9olIf3iY48BMEw+0e6wJT
         FXNDpUOe6WttTA4/4OzMlindO4RIWUQh4S+s5CpaNpMzYsQ+8ks9BnY/zv3TOXHKgO
         a1JPU2TcvhxzhlTJFDgkcxpmu3sSjzRbgZvHP1xJFOKOONfOjONxrUPuDB99omulss
         b4dAXuIGEMuJb6WMoczvje6DfsOC6tS3VKIPfTJRro3Bpx08AWIi578Q0cB7+S/C6H
         Wc7Eg5LgVriwA==
Received: by mail-qv1-f52.google.com with SMTP id d3so9158256qvq.6
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 09:45:15 -0700 (PDT)
X-Gm-Message-State: AOAM530zzbGkStsy6SfJjiRy11tqVUTl0xV8pkpKCWPNXQze5gJnbKBs
        VRRIwE3PomzpR+nTgI3x2GHZ2wj4sszr370pRw==
X-Google-Smtp-Source: ABdhPJy5NlIbVO9ij8NS0thE5yzJvYZD4XjzBXtBRPlimj1hzK2eOi6dhS1ybHzrLVV7aLJIr5qNb+LKUiMF2C3BVAc=
X-Received: by 2002:a0c:ff4b:: with SMTP id y11mr3492262qvt.50.1627922715178;
 Mon, 02 Aug 2021 09:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210802040458.334732-1-matt@codeconstruct.com.au> <20210802040458.334732-2-matt@codeconstruct.com.au>
In-Reply-To: <20210802040458.334732-2-matt@codeconstruct.com.au>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 2 Aug 2021 10:45:03 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+rDox9gBDpZ2ZhiBvbyeHtwJDqFv_3imgSzt8hk4K4dA@mail.gmail.com>
Message-ID: <CAL_Jsq+rDox9gBDpZ2ZhiBvbyeHtwJDqFv_3imgSzt8hk4K4dA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: net: New binding for mctp-i2c
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 1, 2021 at 10:12 PM Matt Johnston <matt@codeconstruct.com.au> wrote:
>
> Used to define an endpoint to communicate with MCTP peripherals attached
> to an I2C bus.
>
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  .../devicetree/bindings/net/mctp-i2c.yaml     | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/mctp-i2c.yaml b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
> new file mode 100644
> index 000000000000..f9378cd845d4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/mctp-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MCTP I2C transport binding
> +
> +maintainers:
> +  - Matt Johnston <matt@codeconstruct.com.au>
> +
> +description:
> +  The MCTP I2C binding defines an MCTP endpoint on the I2C bus to
> +  communicate with I2C peripherals using MCTP (DMTF specification DSP0237).

The general problem with bindings for a protocol/interface is that
those are not complete devices. What if there's something specific
about the implementation that has to be handled? For example, if the
device has to be powered on, brought out of reset or has some buggy
behavior to work around? Or perhaps there's additional functionality.
The exception is if the specification covers all of those things.

Having a specific binding doesn't preclude having a generic driver
either. With a specific compatible, either a generic or device
specific driver could be bound and the kernel could switch between
those whenever it wants.

> +
> +  An mctp-i2c device must be attached to a hardware bus adapter which supports
> +  slave functionality. The reg address must include I2C_OWN_SLAVE_ADDRESS.

This constraint can be a schema.

> +
> +
> +properties:
> +  compatible:
> +    const: mctp-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +additionalProperties: true

This is only allowed to be 'true' for common, incomplete bindings.
What other properties do you expect?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    #include <dt-bindings/i2c/i2c.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        mctp@50 {
> +            compatible = "mctp-i2c";
> +            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
> +        };
> +    };
> --
> 2.30.2
>
