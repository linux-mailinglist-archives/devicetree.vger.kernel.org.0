Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D5504CE722
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 22:09:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbiCEVKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 16:10:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbiCEVKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 16:10:03 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5870254F95
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 13:09:13 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A53973F5F7
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 21:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646514551;
        bh=WAQKhYMo57N8as5lEM8TfNIA75uLIrH1Mak0qxJFf+E=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=K9PYHdGmOms9YAQW9dzC2dxZET+pErICNwRKhTOYz0s4Sz+67HbtnHT9XPAPg4Wyh
         p/EhQW3N187LMeTLVfnYSrQqcThMVSgZE1mdPCrd0W2TSHmVRX4yhOeA1tkdspx0SP
         uhxqqskUZv848pULCvNFzy7Q/w6vvd3g45mag5kEATyydsJRSneQY/roKAd9KkHZOZ
         mFgURPxYidH04QwMLvq2LJVjCG6UcIKyYyNvOlBS6WnvMrFpAxhR8GD1FO/4OjuuFh
         vn3ObyQM/U0/0pgyRJwLKM0d6mqWOH7YVO4vBSSTDk64G3YhEyn/19b8EsNewBQK4l
         WTv91gJwNg8Dg==
Received: by mail-ej1-f69.google.com with SMTP id og24-20020a1709071dd800b006dab87bec4fso2532469ejc.0
        for <devicetree@vger.kernel.org>; Sat, 05 Mar 2022 13:09:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WAQKhYMo57N8as5lEM8TfNIA75uLIrH1Mak0qxJFf+E=;
        b=ri854uhsQMX7HlPvsxrbEB5gpi6gga2/EpC6FZSH4uGfsnmDPn0I7cCMZxgBrfYmxM
         9XgBuVIFg5Ci8gS1cvvZeA3WPLqjxAJGPg2vDlDQILrIobrqghGjBhNQow7vgVsu+usx
         9XlY7T04MBda/4Cvx8lDeDWr+bFypUrpEr07KvrMvuyxlS0PmxNLgD5FQgRrCvBhXQpF
         /MV1cI58AC6bNRsBpFfFBEtDmgbsQMSJRYaK569aZAV+8rrAH3Ph3RDQylKOvMWdl8cQ
         wemtemt3DEi24uz2IHieHCIW7m9owu2xeODl0rGRDGYg2r/KTnIgFF8Gn0UsFSlaJo2e
         sDrw==
X-Gm-Message-State: AOAM530h5O4TQxoV3WODZeZoFcyKGNOQW2Vz8VkhVLn0HT8y2SKywW0n
        dS62lap6E+d3k+Pu1+i3sTeqg9AwW7Z6Fq0l4rR4XhfMBMWaNeHlwERkIvI1N3Zr5B8+V95ndjx
        2UiIzarXO7/ysI5u51jl3aCMV8GqyqnSuX6VefEg=
X-Received: by 2002:a17:907:a0c9:b0:6da:9614:2626 with SMTP id hw9-20020a170907a0c900b006da96142626mr3849158ejc.100.1646514551252;
        Sat, 05 Mar 2022 13:09:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzH7XB367R4/kjja1V8vqLgC03VVcgl4o0Hpo/HnAQb3z1YSU8ztZqR+PCDQe6ctX9cwcHg3Q==
X-Received: by 2002:a17:907:a0c9:b0:6da:9614:2626 with SMTP id hw9-20020a170907a0c900b006da96142626mr3849136ejc.100.1646514551027;
        Sat, 05 Mar 2022 13:09:11 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id dm11-20020a170907948b00b006cf488e72e3sm3196513ejc.25.2022.03.05.13.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Mar 2022 13:09:10 -0800 (PST)
Message-ID: <41a4ee47-9dc4-a79f-97be-5d50e1b1c29c@canonical.com>
Date:   Sat, 5 Mar 2022 22:09:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 3/4] dt-bindings: rtc: convert at91sam9 bindings to
 json-schema
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220304161159.147784-1-sergiu.moga@microchip.com>
 <20220304161159.147784-4-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220304161159.147784-4-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2022 17:11, Sergiu Moga wrote:
> Convert RTC binding for Atmel/Microchip SoCs to Device Tree Schema
> format.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  .../bindings/rtc/atmel,at91sam9-rtc.txt       | 25 -------
>  .../bindings/rtc/atmel,at91sam9-rtc.yaml      | 65 +++++++++++++++++++
>  2 files changed, 65 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
