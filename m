Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA4C51233D0
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2019 18:45:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727655AbfLQRpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 12:45:19 -0500
Received: from mail-io1-f68.google.com ([209.85.166.68]:35985 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727567AbfLQRpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 12:45:19 -0500
Received: by mail-io1-f68.google.com with SMTP id r13so1709212ioa.3
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 09:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K++e5QOhyphAxpqqtvJTK/6MhPRY4wAHe5pP45LXjzM=;
        b=FxKV2Ad+DXwOEcA4A7bwirIMji+gxfaDm21MtuQYFag6aDszB62r6Bc3K1Cx3dfH8T
         0oBiM0DkCTMj1QEGmpca17104EuOb0G/UKL5WwqziTeD/Hu7h0reJl9quTCbUa08Tb3o
         opbAtbWUFmu8BCgb6kkQCTDDHhBH2AdsTJ6nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K++e5QOhyphAxpqqtvJTK/6MhPRY4wAHe5pP45LXjzM=;
        b=navcSMQSR+JW8sDv4BsVJDDGIUs5+aUIGgmdjdYWEbOxza6i9I1EVYULA88zLMK1Y5
         2sNTCw7p+wiw8ZLMA5s0GEHl33wO8hGqOh0CIEsQtqqpuQYciTc1vmj9QuSCIuaUUffb
         xM8ShCqDiMvJgHHLVoovX8V/nWvJPO4TEVztCUGIscGAbcvMBypvgZEyevozQlROGzQo
         jhNLsvTmBtsYxo0/NAJTlmpph0DAEeQa9lX8DqGUYFMwSfhsq7KqC0FuuvqCh2fc6ecZ
         6AZGwCPwQg37cLooQ+R/aNMSnOVNTZxpogOxe+L3TD7IprIEJ8lYPs8SvyOJ+V2H3Ll1
         H8EA==
X-Gm-Message-State: APjAAAUoN+9PpWYVYZChI2ePp3QcuUV+v3bajB9VBjdaKqTWJXUIyhfU
        iQG0fc9+1MEeAj3imRY6ddYVCgOg5sU=
X-Google-Smtp-Source: APXvYqyduK/pCkdCXX6D2sZFJ290FfcvyKdPjEWe6EQ9htVIobPhBee2A4uaA7GoN0jGgfp5eBs3rQ==
X-Received: by 2002:a05:6638:950:: with SMTP id f16mr18021844jad.107.1576604717756;
        Tue, 17 Dec 2019 09:45:17 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com. [209.85.166.182])
        by smtp.gmail.com with ESMTPSA id k26sm5267614iob.25.2019.12.17.09.45.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 09:45:16 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id x5so6102172ila.6
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 09:45:16 -0800 (PST)
X-Received: by 2002:a92:911b:: with SMTP id t27mr17776689ild.142.1576604716025;
 Tue, 17 Dec 2019 09:45:16 -0800 (PST)
MIME-Version: 1.0
References: <20191217005424.226858-1-swboyd@chromium.org>
In-Reply-To: <20191217005424.226858-1-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 17 Dec 2019 09:45:02 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UQAgd2R=ykTCnBZuOvFFKoWu4o-3Rq=GEdrc1KKSi9cQ@mail.gmail.com>
Message-ID: <CAD=FV=UQAgd2R=ykTCnBZuOvFFKoWu4o-3Rq=GEdrc1KKSi9cQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: tpm: Convert cr50 binding to YAML
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Herring <robh@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andrey Pronin <apronin@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Dec 16, 2019 at 4:54 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> This allows us to validate the dt binding to the implementation. Add the
> interrupt property too, because that's required but nobody noticed when
> the non-YAML binding was introduced.
>
> Cc: Andrey Pronin <apronin@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/security/tpm/google,cr50.txt     | 19 -------
>  .../bindings/security/tpm/google,cr50.yaml    | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/security/tpm/google,cr50.txt
>  create mode 100644 Documentation/devicetree/bindings/security/tpm/google,cr50.yaml
>
> diff --git a/Documentation/devicetree/bindings/security/tpm/google,cr50.txt b/Documentation/devicetree/bindings/security/tpm/google,cr50.txt
> deleted file mode 100644
> index cd69c2efdd37..000000000000
> --- a/Documentation/devicetree/bindings/security/tpm/google,cr50.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -* H1 Secure Microcontroller with Cr50 Firmware on SPI Bus.
> -
> -H1 Secure Microcontroller running Cr50 firmware provides several
> -functions, including TPM-like functionality. It communicates over
> -SPI using the FIFO protocol described in the PTP Spec, section 6.
> -
> -Required properties:
> -- compatible: Should be "google,cr50".
> -- spi-max-frequency: Maximum SPI frequency.
> -
> -Example:
> -
> -&spi0 {
> -       tpm@0 {
> -               compatible = "google,cr50";
> -               reg = <0>;
> -               spi-max-frequency = <800000>;
> -       };
> -};
> diff --git a/Documentation/devicetree/bindings/security/tpm/google,cr50.yaml b/Documentation/devicetree/bindings/security/tpm/google,cr50.yaml
> new file mode 100644
> index 000000000000..8bfff0e757af
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/security/tpm/google,cr50.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/tpm/google,cr50.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: H1 Secure Microcontroller with Cr50 Firmware on SPI Bus
> +
> +description:
> +  H1 Secure Microcontroller running Cr50 firmware provides several functions,
> +  including TPM-like functionality. It communicates over SPI using the FIFO
> +  protocol described in the PTP Spec, section 6.
> +
> +maintainers:
> +  - Andrey Pronin <apronin@chromium.org>

Does Andrey agree to be the maintainer here?


I'd like to see if we can delete most of what you've written here.
Specifically in "spi/spi-controller.yaml" you can see a really nice
description of what SPI devices ought to look like.  Can we just
reference that?  To do that I _think_ we actually need to break that
description into a separate YAML file and then include it from there
and here.  Maybe someone on the list can confirm or we can just post
some patches for that?


> +properties:
> +  compatible:
> +    const: google,cr50
> +
> +  reg:
> +    maxItems: 1

I'm curious if you need a minItems here.  ...and if we don't somehow
include it, should we follow 'spi-controller.yaml' and treat this like
an int?


> +  spi-max-frequency:
> +    maxItems: 1

This is not an array type.  Why do you need maxItems?  Should treat
like an int?  Do we have any ranges of sane values we can put here?
I'm sure that there is a maximum that Cr50 can talk at.


> +  interrupts:
> +    maxItems: 1

I'm curious if you need a minItems here.

...also: should we be trying to validate the flags at all?  AKA that
Cr50 expects a rising edge interrupt?


> +required:
> +  - compatible
> +  - reg
> +  - spi-max-frequency

Technically spi-max-frequency might not be required (the SPI binding
doesn't list it as such), but I guess it was before...


> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi {
> +      #address-cells = <0x1>;
> +      #size-cells = <0x0>;
> +      tpm@0 {
> +          compatible = "google,cr50";
> +          reg = <0>;
> +          spi-max-frequency = <800000>;
> +          interrupts = <50 IRQ_TYPE_EDGE_RISING>;

I would tend to prefer seeing the interrupt parent in the example
since it's pretty likely that the GPIO controller isn't the overall
parent and likely that our interrupt is a GPIO.  I'm not sure the
convention, though.


> +      };
> +    };
> +
> +...

Is the "..." important here?  I guess this is only if you're trying to
jam two bindings into the same file, but I could be wrong.  I guess a
bunch of arm ones owned by Rob have it at the end (though the example
doesn't?), so maybe it's right?
