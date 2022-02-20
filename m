Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 387284BCE67
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 13:16:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234710AbiBTMRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 07:17:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237555AbiBTMRH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 07:17:07 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C41DAAE4A
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 04:16:44 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7D8C63F339
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 12:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645359403;
        bh=wQTHSR0uateHCvdtn+TIYEU3YpwrEc+BhJaQXGCxr7g=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Qb/vxb+fZ8WoK/lG4iFOCIiThWU/IhkmS5B+EqRSNUIunmqCRz23R49zXPaIgyjoq
         M2Md5yK5ZVPCs2AUfyOxn3NKkV+LqAOA2+lvKUkkQ9wsZqbMuP1vaublVRvhXH8QsC
         aimkydsT0Ls4EpS1gFrcQV92P9Mkz0BTO6gQr7qXB+bpAvcm20hbP6Eczn+r3N1daD
         o+jgJsJd22qbxGpKH1wozxTMezUVCJzV928Z9xczlgBk9xwtBpJ4aCMXbHtD/3mBaI
         6floceQPFElVfqASe4CygEfZh1K104C1ooc7WNbB02A/DK3sqmhJ7uxwsHHa6fhS0e
         /bCZrHPVNB4dA==
Received: by mail-wm1-f72.google.com with SMTP id 22-20020a05600c229600b0037be079ebf6so1587177wmf.9
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 04:16:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wQTHSR0uateHCvdtn+TIYEU3YpwrEc+BhJaQXGCxr7g=;
        b=c7Ehatd5ioNS54y3+PPJg27TqpK9TLF4FFJjuyjUp1Qng6v27iWd31hFB/U3KIqP6r
         3WepgZpDnyRqxJT3R3M3KJJ+JZRfICyZtMQ7X/Y2kk+858iqbQTTLvSC9uq4YVLhFSpW
         tTM10sE/GYXXtNX02BkAE5ia/QKttA1Y2Bc6VXP+O1Sp4eAOy+4gCE8Ib9EZn/UbrX+z
         Zcw0emGTng1YPsTdfPowFQjwZ9C9addIixjzAmpF2HMmlKcDWAN5lUgAk6I1KoNJNJIE
         V+svD5csSIeOoJRqY0CN1n2l+jh6fM3Pr3Xq5zdxHJ+qFZyL7fHXXLC4lFlFFu6l1Ia1
         dFtw==
X-Gm-Message-State: AOAM5301408hdG+KcbxBultSP2KcpG5i0HayAFC2Qoz9jfys1Fozzes3
        6UKfazAs23EeJTuht9QSkex1L1/Ffl/J9yy8QdD7WotjTfpbhLWNYrBr8ssSiirtdNDt70XrSlP
        E3QrcgiXEcPO8bZMDuQgYlqrK9j5+exI8HTESoHI=
X-Received: by 2002:a05:600c:1908:b0:37c:70f:3dd1 with SMTP id j8-20020a05600c190800b0037c070f3dd1mr17786027wmq.134.1645359403140;
        Sun, 20 Feb 2022 04:16:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/anjXzLIgwxPYmg5RERwU2PHMiEdpS8UtYqMRd6DeP3lWED3IukimGmQeX+fnq/nNvYKeBg==
X-Received: by 2002:a05:600c:1908:b0:37c:70f:3dd1 with SMTP id j8-20020a05600c190800b0037c070f3dd1mr17786009wmq.134.1645359402912;
        Sun, 20 Feb 2022 04:16:42 -0800 (PST)
Received: from [192.168.0.117] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id a1sm30724881wri.36.2022.02.20.04.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 04:16:42 -0800 (PST)
Message-ID: <c7e39902-c85a-c601-8b9c-b2292ffeb46d@canonical.com>
Date:   Sun, 20 Feb 2022 13:16:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v8 2/4] dt-bindings:iio:frequency: add admv1014 binding
Content-Language: en-US
To:     Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
        robh+dt@kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
References: <20220215081216.67706-1-antoniu.miclaus@analog.com>
 <20220215081216.67706-2-antoniu.miclaus@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220215081216.67706-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2022 09:12, Antoniu Miclaus wrote:
> Add device tree bindings for the ADMV1014 Upconverter.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Your subject seems still wrongly formatted.
> ---
> changes in v8:
>  - remove `clock-cells`
>  - rename device node to be more generic
>  - set 'maxItems' for clocks property
>  .../bindings/iio/frequency/adi,admv1014.yaml  | 134 ++++++++++++++++++
>  1 file changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/frequency/adi,admv1014.yaml
> 
> diff --git a/Documentation/d

(...)

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      converter@0{

Missing space after address... I thought you will correct it while
changing node name.


> +        compatible = "adi,admv1014";
> +        reg = <0>;
> +        spi-max-frequency = <1000000>;
> +        clocks = <&admv1014_lo>;
> +        clock-names = "lo_in";
> +        vcm-supply = <&vcm>;
> +        vcc-if-bb-supply = <&vcc_if_bb>;
> +        vcc-vga-supply = <&vcc_vga>;
> +        vcc-vva-supply = <&vcc_vva>;
> +        vcc-lna-3p3-supply = <&vcc_lna_3p3>;
> +        vcc-lna-1p5-supply = <&vcc_lna_1p5>;
> +        vcc-bg-supply = <&vcc_bg>;
> +        vcc-quad-supply = <&vcc_quad>;
> +        vcc-mixer-supply = <&vcc_mixer>;
> +        adi,quad-se-mode = "diff";
> +        adi,detector-enable;
> +        adi,p1db-compensation-enable;
> +      };
> +    };
> +...


Best regards,
Krzysztof
