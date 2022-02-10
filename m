Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B580B4B0E11
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 14:04:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237741AbiBJNDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 08:03:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237311AbiBJNDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 08:03:53 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7D0FFC7
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:03:54 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6EFA13F1B4
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644498233;
        bh=5FfJ2NtvqLFsepwzi4IPAGWZFIoEV7aP4U9Za7zH4ds=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=hng/UWWD6fHRIMvwQ/oIyUjz1VTNxO7Bkftyk6V9RaixwKG9p9TlX6XOeg09yOI8B
         bxSCNe7LMVT4o81LdUnaEuRUDjIqrixro6xARTVUZFt7OBmtH126+TOYLDBIdzYyyx
         Kn4+j6+8nEVcaCWRn1wQwx0ZtbJ2HwRIvcxntzjlSe7aM29J8ICil6QJrF8kiJ2GZ8
         dNVMUFkb2FIThBP31AHgNSTlem96toxm1ghneCamucU6oLrlB0z4J48M4wTwKO9lQI
         GwWH/ScwZxQN6rxiBUmqQGiCaxMSbud/X46zjRAxcCPemlqDBs3QEB4bk4Mkfe7Ope
         bHnxKW2GkFiSA==
Received: by mail-ej1-f70.google.com with SMTP id hq19-20020a1709073f1300b006cdd7712c2cso31769ejc.11
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:03:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5FfJ2NtvqLFsepwzi4IPAGWZFIoEV7aP4U9Za7zH4ds=;
        b=UgT55Z4vlBTTeZdKwHd/IAeFDGOrDLo3zjm8I5iV1rz86ljSPY4CBDu/u84Q8U/k+G
         0/bvdxho2W0RWX15fNWz2mwPPuRKFYkxBKqxwJVva5AcYDb8Ree1QJHAeSJMscX9wp7v
         Jfcc+Ec7VXVTm66qOBkGEXq/a++BxoGRE0uWBnXGCLi7xLT7vXWYNN2Dc7Ujn1X0kyYH
         61Qy8iDXHMDQ17UCFhBykbjdWaqOB0VhjfHTkWnrJ/2CCdctUUDGc2R+1hn7FKe9z5Xw
         zpF8+7YhlBCFrHoPGS1x45VNwMCQ05ruNhmsgsn6BJpJK0ezGpiKcSnq4CiDfqfeXmpE
         bvRQ==
X-Gm-Message-State: AOAM531DanGTzSPDxWGDzkyYEb+am9pfMJ+FFhoHqONRA6iuavjuBNlC
        OxsTgX4VwqKogoiyw8b7r3Tl/j0hl7FFpx8rQWUIxzrbgk6N2AAXiPopi+8LOfbnfwwT7xrYdUu
        KZRW5Gs3B3JI2nkePGLPFm0zw7RCcrF/Ka6/i5QU=
X-Received: by 2002:a17:907:7f1b:: with SMTP id qf27mr6127674ejc.114.1644498233009;
        Thu, 10 Feb 2022 05:03:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzPoHOC7c7l+Xjj9Z8ku0QSW+tnUeMaYcZnl3p668SMScBa+pDLQfVvjpUPGWllIwp7YUoTLQ==
X-Received: by 2002:a17:907:7f1b:: with SMTP id qf27mr6127656ejc.114.1644498232798;
        Thu, 10 Feb 2022 05:03:52 -0800 (PST)
Received: from [192.168.0.98] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id n14sm3322025eja.219.2022.02.10.05.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 05:03:52 -0800 (PST)
Message-ID: <e3cebd32-689d-f74e-f53a-b24e1bf71f6f@canonical.com>
Date:   Thu, 10 Feb 2022 14:03:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: arm: at91: add Kontron's new KSwitches
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
References: <20220210125705.481612-1-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210125705.481612-1-michael@walle.cc>
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

On 10/02/2022 13:57, Michael Walle wrote:
> The Kontron KSwitch D10 MMT series ethernet switches features a LAN9668
> SoC with either 8 copper ports or 6 copper port and two SFP cages.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../devicetree/bindings/arm/atmel-at91.yaml        | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index c612e1f48dba..e019e79f9551 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -174,6 +174,20 @@ properties:
>            - const: microchip,lan9668
>            - const: microchip,lan966
>  
> +      - description: Kontron KSwitch D10 MMT 8G industrial ethernet switch
> +        items:
> +          - const: kontron,kswitch-d10-mmt-8g
> +          - const: kontron,s1921
> +          - const: microchip,lan9668
> +          - const: microchip,lan966
> +
> +      - description: Kontron KSwitch D10 MMT 6G-2GS industrial ethernet switch
> +        items:
> +          - const: kontron,kswitch-d10-mmt-6g-2gs
> +          - const: kontron,s1921
> +          - const: microchip,lan9668
> +          - const: microchip,lan966
> +

This should be just one entry with an enum.

>        - items:
>            - enum:
>                - atmel,sams70j19


Best regards,
Krzysztof
