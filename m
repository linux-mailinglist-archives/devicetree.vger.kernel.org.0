Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B4BE4D5F58
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 11:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347805AbiCKKXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 05:23:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347796AbiCKKXa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 05:23:30 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 144BE1BFDCC
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 02:22:25 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E772D3F19E
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 10:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646994143;
        bh=DAVriWfMGPTsL+sa6ojmwlvAcyFDQFDnBsePZn4gJvo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Cm+pKngf2fuWJMYP6j8t3CY4VWz4TWkC1R9cnQZc2o48Ij0ywLi0skdpIWe8VpEXv
         XrDKS4q+1c41MQHfzSJJ3Lo4m6QOjLuKYw8tiC5hUxukZV2+rJpuiW5ABWaA3IL8ot
         cZYg4viBJxxvww2nz3BWtqidIma7t2+KrX34ATVSl/J9/4cZ6wV4XIyI1snJK1Jk4F
         JfYN1jR+zJHM9fxwHut6aQKMpP3taYYsTvMRT7iDq7ae/t3KNnJ1SFTlhn6vHUFala
         ciTYAwQ47067MRoqBAJ6Ld1qzJGIi3L9Hyr7iiXPKDPNUtyVxa9Pk9kz7liCf5V5LB
         1zqk9zjx3VJXA==
Received: by mail-ej1-f72.google.com with SMTP id hr26-20020a1709073f9a00b006d6d1ee8cf8so4644453ejc.19
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 02:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DAVriWfMGPTsL+sa6ojmwlvAcyFDQFDnBsePZn4gJvo=;
        b=5BXySgZEPvnreIWvegoUZoLsUYwx1WGuF/yE0uiL+uKuBCqsle2bVp2vW0WyRlht96
         +a4l8U90Ug2MaKoCsmr5vTBP7Pbc4J+CQLOFPjRyfsp3ujMmT2uk0JSvJavJ77v6OwAp
         J/GTE/e4redRUmXjmbxMSlqkGvkFaHup+yRKYM+8w+Rj8kTY23miJRXbfKaHTkGVYi4D
         HQaIrJRXYqIDiRonkX73j2iK8HAmFCz4w+kQETEb0QaJWrt5BdWeD9BLE0faREP7mNpz
         1S5BKIcUlPFoD1YdkkJVN/EJ/gY0IVCJXHDmahOckf/DCY5Ne2d2N63/JP4T1BW7mHbc
         LlPA==
X-Gm-Message-State: AOAM5303VyHQENkxyOG2ZK7mjRwJvd01LMC/Ien02a5fXVs456x69Aes
        S6NTHAbxOZJhbeqkLCzupGAq3iPWH6LO18V/8JUdESfHiTFgUk6JUWnFAYYXieJ3Sy3pHCguGax
        EZye4v6wW/MSIc47s8drOoZ6mrdAQGOSjQmpuhdg=
X-Received: by 2002:a17:906:c114:b0:6d7:1065:a8b0 with SMTP id do20-20020a170906c11400b006d71065a8b0mr7821351ejc.181.1646994143558;
        Fri, 11 Mar 2022 02:22:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw3HrnS+Vr6tGo6Ytf/3Yw1utrhk17vjWI3t9FZffF20NXSb6KlReOoQp/QOKavg1BVh9Mrtw==
X-Received: by 2002:a17:906:c114:b0:6d7:1065:a8b0 with SMTP id do20-20020a170906c11400b006d71065a8b0mr7821333ejc.181.1646994143309;
        Fri, 11 Mar 2022 02:22:23 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id l9-20020a056402254900b00416b0ec98b5sm1792227edb.45.2022.03.11.02.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 02:22:22 -0800 (PST)
Message-ID: <679cb1a3-28fb-7031-ecc7-5f60266bcf7c@canonical.com>
Date:   Fri, 11 Mar 2022 11:22:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 08/10] dt-bindings: arm: Add HPE GXP CPU Init
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220310195229.109477-1-nick.hawkins@hpe.com>
 <20220310195229.109477-8-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310195229.109477-8-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 20:52, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> This adds support for the hpe,gxp-cpu-init binding.
> With the HPE GXP initialization it is necessary to have access to this
> register for it to boot.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../cpu-enable-method/hpe,gxp-cpu-init.yaml   | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/cpu-enable-method/hpe,gxp-cpu-init.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/cpu-enable-method/hpe,gxp-cpu-init.yaml b/Documentation/devicetree/bindings/arm/cpu-enable-method/hpe,gxp-cpu-init.yaml
> new file mode 100644
> index 000000000000..a17c3fcc5421
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/cpu-enable-method/hpe,gxp-cpu-init.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/cpu-enable-method/hpe,gxp-cpu-init.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Initialize GXP CPU

Please explain what's this. The bindings describe the hardware and I
cannot get what is this here about. Is it a CPU enable method (like in
cpus.yaml)? Is it some power management block?


Best regards,
Krzysztof
