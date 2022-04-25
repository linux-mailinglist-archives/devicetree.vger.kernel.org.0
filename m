Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACEAE50EBA8
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 00:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235612AbiDYWYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 18:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343728AbiDYWTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 18:19:36 -0400
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFBFB48397
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 15:16:30 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id w23-20020a056830111700b00603c6d1ce73so11804529otq.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 15:16:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pAnndawtmkUnKaymvAUKIHFVUO7wxjO7614Lrfui7b0=;
        b=iaRHl7nbZKzp+T9iL0Jtx0KPlg3X6AEcD5U6IEcp011vRdl40ZDQb8AMDaxfeZWch9
         JPfLHH5cBiqEwmoMnZrOeR2PaPkgq1S1pPxLZtOohzW0tIadPR1isCjsdwHJkwL8D5pB
         WMy0Bg9tfgqcH3PluVLTYLJBcW8jUfIHUs1taZyOnwaJabnL2FqiHWf++7FaFv/xN9Jd
         kjfTxXYbaQ5joLDBYpHs4jxn2MMBSpTpPPpJMcrW00TYLJ3nN8mL/b0e/XlkVc/qmozM
         C/26yHUqJbItuzH0Gjfdh2gN57nw+Id5RXJxYXXyKZwBtIEUhk6731US7+pYLL1qVuQG
         +R4w==
X-Gm-Message-State: AOAM531QCfVfv3m3ZIhChgpSbrIM6HvyxnsV3fHyuzVQ7yOgJvSk0Npw
        SyxdbEDCs+18sEAip4wJvQ==
X-Google-Smtp-Source: ABdhPJyQC2EAtFQwZlhXb35X7/Amyr5Weeamh1E8SL8vFCDlnn2KP1B26/VAhdtzlqdwSbMI9hGkHQ==
X-Received: by 2002:a9d:6503:0:b0:5e6:d8b6:f684 with SMTP id i3-20020a9d6503000000b005e6d8b6f684mr7263746otl.289.1650924990039;
        Mon, 25 Apr 2022 15:16:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t22-20020a056870e75600b000e915a9121csm168977oak.52.2022.04.25.15.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 15:16:29 -0700 (PDT)
Received: (nullmailer pid 396470 invoked by uid 1000);
        Mon, 25 Apr 2022 22:16:29 -0000
Date:   Mon, 25 Apr 2022 17:16:29 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
Message-ID: <YmcdvcyeJJBB1pqW@robh.at.kernel.org>
References: <20220425191602.770932-1-kaehndan@gmail.com>
 <20220425191602.770932-2-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220425191602.770932-2-kaehndan@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 25, 2022 at 02:16:02PM -0500, Daniel Kaehn wrote:
> Adds dt-binding for snd-serial-generic serial MIDI driver

Bindings are for h/w and there's no such thing as generic h/w. There are 
some exceptions but you'll have to justify why this is special.


> Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> ---
>  .../devicetree/bindings/sound/serialmidi.yaml | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/serialmidi.yaml b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> new file mode 100644
> index 000000000000..38ef49a0c2f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/serialmidi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Serial MIDI Device
> +
> +maintainers:
> +  - Daniel Kaehn <kaehndan@gmail.com>
> +
> +description: |

Don't need '|' unless there is formatting to preserve.

> +  Generic MIDI interface using a serial device. Can only be set to use standard speeds
> +  corresponding to supported baud rates of the underlying serial device. If standard MIDI
> +  speed of 31.25 kBaud is needed, configure the clocks of the underlying serial device
> +  so that a requested speed of 38.4 kBaud resuts in the standard MIDI baud rate.
> +
> +properties:
> +  compatible:
> +    const: serialmidi
> +
> +  speed:

Not a standard property and we already have 2 of them concerning baud 
rate.

> +    maxItems: 1
> +    description: |
> +      Speed to set the serial port to when the MIDI device is opened.
> +      If not specified, the underlying serial device is allowed to use its configured default speed.
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
> +            speed = <38400>;
> +        };
> +    };
> -- 
> 2.33.0
> 
> 
