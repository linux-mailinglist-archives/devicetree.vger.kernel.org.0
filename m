Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D91CE4CC044
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 15:48:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234173AbiCCOsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 09:48:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234164AbiCCOsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 09:48:52 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6BD64FC42
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 06:48:05 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4977C3F4C2
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 14:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646318882;
        bh=LAs/6LRRxzJHgIKQxtRjIVV9shF4X2KxxwHj1qUD7Ok=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=v+lQoDiG+GuCj9XPsy1vbovde9UMixCBbVY7T+h1HUV9TA8JlFGIbrEx/kTpR4Wk1
         4yyEBbJX8qY/Kv6n6g7Z7LmvO7st6kuMvxbqGIcriVZZ/kdZ1QxolpUAYATui3eQ2D
         B6Ip/vUJ8a+66T8zAbfnLFgPr4teNOHKEkPFxCXfEYu1hiLORFCNVbAVJhwJJp1F/C
         Gv+P4/i+JzJ1y15COOzl1Kh++huQ++acWXSFNT8yRECEEGZPiFaUwrXNJb0uCmSlJC
         lMt2Fv4xmRC7YKVCT1p5QiJVNmEBfwhVmLY+vBs7e9rpo20ZmXilGTOqr7SPsONIe0
         7G3mBM+XWHNpQ==
Received: by mail-ed1-f69.google.com with SMTP id i17-20020aa7c711000000b00415ecaefd07so593482edq.21
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 06:48:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LAs/6LRRxzJHgIKQxtRjIVV9shF4X2KxxwHj1qUD7Ok=;
        b=LZARRXA0kg26GDRzsyIyl0VBr7hTHoq9dIZHKaFI/GpseILiuBkiE3ZWMmGMnO8jBG
         4W2IH5dwZOGwQ6uDzH7VaUesVZnriZklt8gTkJ8C1UfvWQYe3DJKyYL1fM12KyQYCNk+
         RzVLm87zgYwggj9YwBlOsTB9POMZrD2m8Wd/Ps3Ngf3x5hQN172YjwYQztC9UpYTGysy
         4j220W2PcezscNFOinFGIjErxEIMN00ArvGexGZtbSybTsokKOk3oLqOJld2TUNrHCuV
         pFX/31a/NS42IxDgJEQ/0Dbxyt9HZVGNvpRo3FuUS192wd6v90kNwF1lMOZ8JfUHtHmc
         QzYA==
X-Gm-Message-State: AOAM531zaXe/5lE7tSgMcAudXzaBjLL8RZ78d3ZkUBUaDu0SyzNj+2ql
        ygZn3bFt5NrByMZEhptMYwo0oIwu7FG2co9Gn+E3oXD23ku+dbes1c8CG4AqXz9WqMPZHbJC0lh
        OUiO+d1ZCVqHNDRgY6u0LsbRfOgTN+gCJFpVh7Pk=
X-Received: by 2002:a17:906:32d8:b0:6ce:d850:f79 with SMTP id k24-20020a17090632d800b006ced8500f79mr26432627ejk.414.1646318882043;
        Thu, 03 Mar 2022 06:48:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwytkSR6dilP11S7DvOKJ5JW0P4codQZvsoymdmrg/Gth5TjrMaHSqxiOJpzo0DrsZkMEGHIA==
X-Received: by 2002:a17:906:32d8:b0:6ce:d850:f79 with SMTP id k24-20020a17090632d800b006ced8500f79mr26432613ejk.414.1646318881892;
        Thu, 03 Mar 2022 06:48:01 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id pg27-20020a170907205b00b006d6e5102ca2sm778506ejb.97.2022.03.03.06.48.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 06:48:01 -0800 (PST)
Message-ID: <7a71f580-28dc-def2-c693-70c4b0e9aee2@canonical.com>
Date:   Thu, 3 Mar 2022 15:48:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 5/5] dt-bindings: rtc: at91: Add SAMA7G5 compatible
 strings list
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220303140626.38129-1-sergiu.moga@microchip.com>
 <20220303140626.38129-6-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303140626.38129-6-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 15:06, Sergiu Moga wrote:
> Add compatible strings list for SAMA7G5.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/d


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
