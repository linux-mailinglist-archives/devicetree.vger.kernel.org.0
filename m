Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B0058DF99
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 21:02:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245278AbiHITCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 15:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348299AbiHITBc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 15:01:32 -0400
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE5392AE32
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 11:34:15 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id x2so873047ilp.10
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 11:34:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=8ogzPNWERYDaKhNvvgajn1anoN29b7H+hifJpwoGmHM=;
        b=ng9yJBK3MTV/2az8H9hy0vSAeNWETpIr4xGU8hj5+FTnrsXa/HjAjG4p3iH1sV0jrE
         wxLJ72ZD4VC2w6MLqFmrf4JUwXcrYIRy8QBJktnlgwspMIIG6e9pyJBsyiXdWPs7yE6C
         dy2TNo1Mo5R4urBl9KUUaXYxxpNORGayY0fWGfo6nK1TXYdrDxydSA+XR3cQmy+PmfOW
         WJTS4acZm0bub2G47fSq2Isdekr3wWaaQ73mwOOB+/yxtMOvO8uTSeTCnnY5hlpjGGp1
         oCx8vyecVJ121LgwFWmkv5MovPlPlOxx3k0Qur4RCwLIyqEfFibQRncxM+7mdH/dGhxr
         2POA==
X-Gm-Message-State: ACgBeo0YJzcJJ4eyDtsxIWLT81AUtusCkT52LrP8B/Qqsk736cIPpcki
        9KwxGRI1/jb2oDK/mINiqA==
X-Google-Smtp-Source: AA6agR4PJWlLwUSgKHl9yVe2aHvPKGPlQc+9w37Y+GpjWSGItjiB5WV6pAjqzQQreJ8yjLm/o937fQ==
X-Received: by 2002:a05:6e02:1a6f:b0:2de:b54a:1ce4 with SMTP id w15-20020a056e021a6f00b002deb54a1ce4mr10551590ilv.284.1660070054833;
        Tue, 09 Aug 2022 11:34:14 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n16-20020a056602341000b00684f4b808ffsm1394696ioz.39.2022.08.09.11.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 11:34:14 -0700 (PDT)
Received: (nullmailer pid 2158221 invoked by uid 1000);
        Tue, 09 Aug 2022 18:34:12 -0000
Date:   Tue, 9 Aug 2022 12:34:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v5 1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Message-ID: <20220809183412.GA2152771-robh@kernel.org>
References: <20220804091800.744316-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220804091800.744316-1-zhuning0077@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 04, 2022 at 05:17:59PM +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> ----
> v5 tested by dtschema
> ---
>  .../bindings/sound/everest,es8326.yaml        | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
> new file mode 100755
> index 000000000000..07781408e788
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
> @@ -0,0 +1,116 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/everest,es8326.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Everest ES8326 audio CODEC
> +
> +maintainers:
> +  - David Yang <yangxiaohua@everest-semi.com>
> +
> +properties:
> +  compatible:
> +    const: everest,es8326
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for master clock (MCLK)
> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  everest,jack-pol:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: |
> +      just the value of reg 57. Bit(3) decides whether the jack polarity is inverted.
> +      Bit(2) decides whether the button on the headset is inverted.
> +      Bit(1)/(0) decides the mic properity to be OMTP/CTIA or auto.
> +    minimum: 0x00
> +    maximum: 0x0f
> +    default: 0x0f
> +
> +  everest,mic1-src:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description:
> +      the value of reg 2A when headset plugged.
> +    minimum: 0x00
> +    maximum: 0x77
> +    default: 0x22
> +
> +  everest,mic2-src:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description:
> +      the value of reg 2A when headset unplugged.
> +    minimum: 0x00
> +    maximum: 0x77
> +    default: 0x44
> +
> +  everest,jack-detect-inverted:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Defined to invert the jack detection.

No response to my questions on v3?

Rob
