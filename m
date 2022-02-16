Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFC34B85B7
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232827AbiBPKZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:25:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbiBPKZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:25:29 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81CB42B8ADE
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:25:18 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BB5004060C
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 10:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645007116;
        bh=Ey6VaxN3+TtjS0CeJz8Z++b9aDBgnfhzVZhYIOYqsgA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=HKaxITjw/61ZbCcTUrvoVZgNXISZTurIPV8pONtgveQDFoUGkDPPOXDWskkMGYHfE
         QlWBlgxDp3UHrRG+RMPuHF1EvCAcevafrfMW/yVYgbDs6ECL0GaGERgKT4eZbjFWqy
         wT6gTeodY/hpFqDxi9cGjMB8cM+ntFSSEE8C22z+1YF0ozEgcYLVE/zNdvzbJGkDam
         HZ+vhdIXquSeTU9jcUlEZfe2KiQWAUjlFi1e89Viwk/aNAAgqaJpMXNSp4ecwPGa2q
         G8VQXw5LmP782TKbabxGUP2dNAnsLNm5gqyv4z+8Gdzv5C9HGf3+M2KVxp83d2jFqI
         ig3lp2lagL/zA==
Received: by mail-ej1-f72.google.com with SMTP id hc39-20020a17090716a700b006ce88cf89dfso622380ejc.10
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:25:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ey6VaxN3+TtjS0CeJz8Z++b9aDBgnfhzVZhYIOYqsgA=;
        b=FHv8iPUhcMpDtIiXj1uxeZUk0NRM7TcDGxdvFIjhxkkfyAGGgNg7fj2YYkhSYqWMZP
         gFiKqHh/hIkXVh0PHYdkBFTOEiPr2lcK/StfnK9If5ybtizkWyneCz0fCs4mvehK2edk
         v3WvW898663lK/aYXlv2yxfapX3cdnjG8vKzc1O0eKufOi2hqkrMDUGvdIjBBOiISPAP
         YjlU8rmTObnEkxwXFFWyqBfWYHVO4/MNWThS8p7TJ1KnQ5CZcWBKud2tdDLFiQG6NrAU
         TMr0aIsf4TnpOQ91FhExojLWrBEPOEGK3NVtGNq6B0VsnvFcUkZYJotmzREXkI92Zsag
         SWHA==
X-Gm-Message-State: AOAM532Ee8SYzld2l7TaaL2N9AYJEDxzWBj+yISdvo/+fPMkxh9XYWOU
        Vaz50IMn5clQsygeVQHn7SS1hvC8Nsp+/buIGjLvdtqa9eoxdhqijUHL4ijZjHyPOxZ62Z5i2lP
        sI25pOyuKi9H4MI1iYcxSV6T6toicHMXMIcOuG0A=
X-Received: by 2002:a05:6402:42c9:b0:407:f86c:44e7 with SMTP id i9-20020a05640242c900b00407f86c44e7mr2210527edc.230.1645007116236;
        Wed, 16 Feb 2022 02:25:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwXhI1GOJN+xMaYOEWFkB2LIcPlHVPuUI2OPv5j58HHAMwCjf2s+lIVP1mT/MDotPjYhLQjTQ==
X-Received: by 2002:a05:6402:42c9:b0:407:f86c:44e7 with SMTP id i9-20020a05640242c900b00407f86c44e7mr2210501edc.230.1645007116026;
        Wed, 16 Feb 2022 02:25:16 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id d25sm12653033ejz.4.2022.02.16.02.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 02:25:15 -0800 (PST)
Message-ID: <db4de0b0-1f27-d3f8-c75a-8dfa6f8eaca1@canonical.com>
Date:   Wed, 16 Feb 2022 11:25:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [v2,4/4] dt-bindings: pwm: Add compatible for MediaTek MT8186
Content-Language: en-US
To:     xinlei.lee@mediatek.com, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        robh+dt@kernel.org, matthias.bgg@gmail.com, jitao.shi@mediatek.com
Cc:     allen-kh.cheng@mediatek.com, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
References: <1645003971-16908-1-git-send-email-xinlei.lee@mediatek.com>
 <1645003971-16908-5-git-send-email-xinlei.lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1645003971-16908-5-git-send-email-xinlei.lee@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 10:32, xinlei.lee@mediatek.com wrote:
> From: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
> 
> Add dt-binding documentation of pwm for MediaTek MT8186 SoC.
> 
> Signed-off-by: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
