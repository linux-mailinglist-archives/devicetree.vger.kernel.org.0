Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A74994B0E65
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 14:28:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242168AbiBJN2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 08:28:10 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242170AbiBJN2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 08:28:10 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6EAEB61
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:28:10 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 56ED13F203
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 13:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644499689;
        bh=hoj1LiEc6jqkJABneWxZcsyuXFCY/MGmRmVWsHl1GN4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=izKIrfsbuwZ2dlkemCOZpK/xr7qAYFN4GyP60W7EY3HtIQACLd8stFqL8jHyUTsFE
         a0VTSrxjhusi+47KAjPLmFoUyg6zMj+Rw1lycuNikUamSEJUcPTmkptH0XU9o/0soD
         T1SSP+YxQQPPuCzAAFpw4QXfXur/7i+CLScTDEJoRWbmGQNyFl/JZMjOv7sYi+/Jyz
         wqbYNiS6N4vuZ1pDjjZZjjzZWCdH+ZVmVszHrba19txIvxi+ld4F4Jxi9MzvGvnDgR
         qCcB0yyFuytz6FYqoTStgevs1pjgWAXj7RCn18I+/DtH8ETnoJXcYZJ4sIcHoskvbO
         /ybwJD5JdLQsQ==
Received: by mail-ed1-f70.google.com with SMTP id n7-20020a05640205c700b0040b7be76147so3340032edx.10
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:28:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hoj1LiEc6jqkJABneWxZcsyuXFCY/MGmRmVWsHl1GN4=;
        b=zK3YGbFbN6O48s6B3NIu7FZQshshXxRa01fP8SWuAc+qdBZxk53Bs3JLsGzg4a7Ieo
         41dlQzpgAPb8CffX4h9GrFJ/e+CsT/AcKV3KWF3f+B2FJEemqhZbrm6FPkLxM+riu/3H
         HkyjyxqzO22BTxZdvk/YSbiadl75grUW2X0E+C7xkM4CP7cdAIET+TsMk6MY22uF3Pjw
         YlJLTJB5phJWhKNRQzun+Zzt9CwfsX8prRUs4mYK5sHQ5PZtHu439VxpMpdlqxGC0os7
         1hiOMEJ8/DhQ6qVpEofIAv2kEhLsIrXIiljORjftNDwlgtF0Uck9i26cfIpzZ3MPsVOZ
         qDdg==
X-Gm-Message-State: AOAM533SG9KSNeq0jmCQFYvWfxNfFq7MBgMjBlbEEBCeOhb5F88Rg6Qq
        4FhXuxIliqfKWzzVhnpXtDBOO1kv+oI9A1vey1K7EDr8KvBDYszLIXD6LmLlEaZbveKWLHKzUbB
        VF8RSAnfFhx2VefZmPyceFCpyhX7f1KcY5X40ls4=
X-Received: by 2002:a17:906:6a20:: with SMTP id qw32mr6367113ejc.40.1644499689088;
        Thu, 10 Feb 2022 05:28:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyCQV8EJ7XNaxTb9IXdvPksWQ9XKbp++XnotRDcOuYvkwb5Pd/g1hTFObll+y4Ehx/w4+70Xw==
X-Received: by 2002:a17:906:6a20:: with SMTP id qw32mr6367099ejc.40.1644499688944;
        Thu, 10 Feb 2022 05:28:08 -0800 (PST)
Received: from [192.168.0.98] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bp16sm5412484ejb.70.2022.02.10.05.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 05:28:08 -0800 (PST)
Message-ID: <153767e8-e064-a47b-5153-ab0a2eb5a0c6@canonical.com>
Date:   Thu, 10 Feb 2022 14:28:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: arm: at91: add Kontron's new KSwitches
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
References: <20220210131817.484922-1-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210131817.484922-1-michael@walle.cc>
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

On 10/02/2022 14:18, Michael Walle wrote:
> The Kontron KSwitch D10 MMT series ethernet switches features a LAN9668
> SoC with either 8 copper ports or 6 copper port and two SFP cages.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> changes since v1:
>  - just use one entry with an enum, thanks Krzysztof
> 
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
