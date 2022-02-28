Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBE384C65FD
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233898AbiB1JsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:48:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234452AbiB1JsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:48:23 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E7C5AE4D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:47:45 -0800 (PST)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 266113FCA9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646041664;
        bh=0JbmlSAA0fNwnIooIgqlcG+0ARF2DXlxIL3bhnCTrKE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=PrrGRHzBMfHObCvYQqig8k+EJydyl3OkKyYtFAxhlxp9U0Ywv4gmoKSdGAZQwJswA
         wUoPeIkulNudVxJUL6emfzWAAXHXW/W2EHmFI0onycKcqEsnDr1GSKSF23DysKAOIk
         TpgGQDE/1FjTkf4pJpICekHkCezxYXnk86omqTpvhokiRMREGDdzBT9VK26IsYfMOe
         bS7Oz3CDtRGNcAtaYUpxsNGJ5ishWXmIHTUVjdp9CzkfOLy49k7nC/CfsB2cmWIlwx
         dikjMDTtgTPLpMEacOi62Rr5BXItt6eYBbzJJd6Z3aMAZAbbhpRnoU5nnm0Rd6qmNT
         T5IQNnv/Ga7Yw==
Received: by mail-wr1-f72.google.com with SMTP id f11-20020a5d664b000000b001ef8a2c2e1fso649433wrw.15
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:47:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0JbmlSAA0fNwnIooIgqlcG+0ARF2DXlxIL3bhnCTrKE=;
        b=x6mU9djkEKCmyoc+BzU7HWHfvikkeuV2HTfi++dxWRaeyq8yt21GxnbRtwbx5do1YG
         kmlxuvo6SoeiGFlP2EmDNAu52GPpAbqOAGptscIL1saLDfFjFuFy82lldt0dQGOPB0OJ
         M6UsTVGd3SrrAxHNvr9b+m5I0Fa8K7lE6Ien3+TvexvEwsOaDLzEO0RAuBpCNhHsRpt8
         GY5NH8+dP0EFqgTwlpN/OrWjC//s4gziRGj8mwY2UttjEp5X399fxnjaXfydngvtEm6x
         gIJNKgahu5N9rXU08KJIVYXJY1larHAsmG9xvZUjucMtzBUM6PH+aw6uZ6OFp539xlkQ
         T63g==
X-Gm-Message-State: AOAM531NA1+d1X+QH5gRsdFDLDJJbERYyd2dp1gzow6rSo3UTDOtd0Kv
        IhDZigxf/sn+mZ7xNwFm5gNHHBRclkzM3ObzcQHOA1d1Bp6317U4xvE3aN38AaXDpXm5Eo8M+Cq
        dC3biI20H/O2fhMy0slVMtyYICduyE++qdG7xnqw=
X-Received: by 2002:a05:600c:4615:b0:381:c68:e8f8 with SMTP id m21-20020a05600c461500b003810c68e8f8mr12570748wmo.117.1646041663882;
        Mon, 28 Feb 2022 01:47:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyYFWnSTQN2LNmgpLVDrQRcbyyaUOEPgYrj2AvMI2hTg1YmU0CB7RgwzVxUe1zibUvQepHT0w==
X-Received: by 2002:a05:600c:4615:b0:381:c68:e8f8 with SMTP id m21-20020a05600c461500b003810c68e8f8mr12570736wmo.117.1646041663731;
        Mon, 28 Feb 2022 01:47:43 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id i6-20020adfaac6000000b001e7f9a9498asm10267833wrc.50.2022.02.28.01.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 01:47:43 -0800 (PST)
Message-ID: <b584b58f-a17a-e866-3054-64366dc7fec4@canonical.com>
Date:   Mon, 28 Feb 2022 10:47:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Document Renesas
 RZ/V2L OSTM
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Chris Brandt <chris.brandt@renesas.com>
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20220227224845.27348-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227224845.27348-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

On 27/02/2022 23:48, Lad Prabhakar wrote:
> Document the General Timer Module(a.k.a OSTM) found on the RZ/V2L SoC.
> OSTM module is identical to one found RZ/G2L SoC. No driver changes are
> required as generic compatible string "renesas,ostm" will be used as a
> fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> DTSI changes have been posted as part of series [0]
> 
> [0] https://patchwork.kernel.org/project/linux-renesas-soc/patch/
> 20220227203744.18355-8-prabhakar.mahadev-lad.rj@bp.renesas.com/
> ---
>  Documentation/devicetree/bindings/timer/renesas,ostm.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
