Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA01A518C72
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 20:33:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233768AbiECShY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 14:37:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241518AbiECShX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 14:37:23 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C253F8A6
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 11:33:43 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-e656032735so18084707fac.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 11:33:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JD995VbXr1R+3XcKhoh2SmymKHzONLstnrCva28itOI=;
        b=6N2IYenupqOhHoSCH+0C8Uwl2DdRFkQkSa536QVk1abvjv7Ax8sFnSD3g2fkLNXfd6
         R3Cetec6wmPznM/XLFFki0aDo8Nm/ky8BbMCk9ttfeTIEA8Dypfcxn349IL0kk8ijXRZ
         Wntw7nU4WXR0poF8Wuihz3w3LngeROO4MktsY+R3quQRkI2dlwGwBae/QCVasNAk3gVH
         XHHuULZTZHMGL9GvG27uOG/UOhn+Q9m/uAe5fP45YO9bfXHW5AvtgaaXHHYBdfoM4nx0
         JJVUpRCducn8MlVvYe5uu+KTlGLJyXXwEs4ascD2ZeRuI0Zc6t3FylsOY1pDAzqHC1d6
         i/ng==
X-Gm-Message-State: AOAM530q9An9J4h6FwjrI7eG3AIm+svDwsEWP0FxouoQXyvAJSYOwb2y
        d3BCisxwd4t2BR/2mpk034V/rm4J9A==
X-Google-Smtp-Source: ABdhPJxdLisMK7ntzYydEgULiZRYr/HCY5hCKYuOOWevIs2jkYangRQ/UUvLBeAa3/c5/hXVkcOfHw==
X-Received: by 2002:a05:6870:e9a0:b0:e6:9d2:ff42 with SMTP id r32-20020a056870e9a000b000e609d2ff42mr2404393oao.7.1651602822225;
        Tue, 03 May 2022 11:33:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id dt48-20020a0568705ab000b000e686d13875sm7178556oab.15.2022.05.03.11.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 11:33:41 -0700 (PDT)
Received: (nullmailer pid 4011087 invoked by uid 1000);
        Tue, 03 May 2022 18:33:41 -0000
Date:   Tue, 3 May 2022 13:33:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: sound: Add generic serial MIDI device
Message-ID: <YnF1hYpYvXrDtRyV@robh.at.kernel.org>
References: <20220502150404.20295-1-kaehndan@gmail.com>
 <20220502150404.20295-2-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220502150404.20295-2-kaehndan@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 02, 2022 at 10:04:03AM -0500, Daniel Kaehn wrote:
> Adds dt-binding for a Generic MIDI Interface using a serial device.
> 
> Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> ---
>  .../devicetree/bindings/sound/serialmidi.yaml | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/serialmidi.yaml b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> new file mode 100644
> index 000000000000..06a894e1b91d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/serialmidi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Serial MIDI Interface
> +
> +maintainers:
> +  - Daniel Kaehn <kaehndan@gmail.com>
> +
> +description: 
> +  Generic MIDI interface using a serial device. This denotes that a serial device is
> +  dedicated to MIDI communication, either to an external MIDI device through a DIN5
> +  or other connector, or to a known hardwired MIDI controller. This device must be a
> +  child node of a serial node.
> +
> +  Can only be set to use standard baud rates corresponding to supported rates of the
> +  parent serial device. If the standard MIDI baud of 31.25 kBaud is needed 
> +  (as would be the case if interfacing with arbitrary external MIDI devices),
> +  configure the clocks of the parent serial device so that a requested baud of 38.4 kBaud
> +  resuts in the standard MIDI baud rate, and set the 'current-speed' property to 38400.

s/resuts/results/

> +
> +properties:
> +  compatible:
> +    const: serialmidi

serial-midi would be a bit more readable. (And then align the filename 
with that.)

> +
> +  current-speed:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Already has a type applied by serial.yaml, so you can drop.

> +    description: Baudrate to set the serial port to when this MIDI device is opened.
> +      If not specified, the parent serial device is allowed to use its default baud.
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serial {
> +        midi {
> +            compatible = "serialmidi";
> +            current-speed = <38400>;
> +        };
> +    };
> -- 
> 2.33.0
> 
> 
