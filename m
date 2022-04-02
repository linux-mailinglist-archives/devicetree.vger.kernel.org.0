Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4334F04F7
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 18:36:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351982AbiDBQir (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 12:38:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241484AbiDBQio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 12:38:44 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E8B10CF3C
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 09:36:52 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n35so3405752wms.5
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 09:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CARJkn5wKOWrZv/mPTcgHW2EmIayozeUoeOWlZiKi5s=;
        b=pIbWXjtzwBjCAQ6NBAtdnzaVEG/oy9F1v6EQK3L2Yj2y3hFrdg4MdcznpqSFhC+4Wv
         OoPjzZDsoR1DtCkAmrR8vxgahlLGJmsCapzPx/EWq+gWnEORv5JZnUlIp3TQgKxFTbmX
         wohRPjDIxV4fuBXpNipTpNrQE8im+FH9vqPzpxJLFLnbrx+Ux1DpTXZjoNx+5Y2U/lLE
         jwDIGeBQvxIIJBupTvwU8w4NzAewcq6VmYDlopy2YaKkxB5yEEKaMTTXvIDPPXdBLEki
         MLn6sSjEQ6arb90+cqA6n78PoEhgQVb0g/18tXCE9EB3/q50Lnnrclcut+VJOsIaBCZJ
         R0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CARJkn5wKOWrZv/mPTcgHW2EmIayozeUoeOWlZiKi5s=;
        b=oBOZVTDx4LD8kt9fSnBk3rNsFIp4Er2juIkaTpFu7LyypfhfSp4DJSen49W76yqBB6
         xO2dU9/8cNJVm+I6AxNyI85xVUAlVIY8RqHb5fNqEBRk/lE1mynmFFnjnkjwHPnQfcIL
         Ie9uOSFGk+Sn8QVBniuwRazewMrdNctDIgbdhw5/u6XND/mUupxx0v1qVglCPfdSTPH5
         4rXH2mp4fIHCOu4sVzZqRm14jjnAh5wxx3uyaYP4NJi5BS8E/cHFoTpTOTBpbrws1c/f
         kEVr/KTg6keJU2jhp4znjeYwS4kN3Tfj4yJGVYlu8CNzXdlyX9ocqk8JUJl/O2Al2zPi
         bGNw==
X-Gm-Message-State: AOAM532bVCr9h9pm46BcF7rAuhg0E5DwtBel387RCJRQ5iWar1Gt3O8Y
        qxiKJ80pIygjlskyXbcwjrmOGg==
X-Google-Smtp-Source: ABdhPJzoSre4Yp2KMYQsikKv3MIMCTPC1oxEBUdOBkgNURdlk7UoJtcLIaODvCBex4amkdpzXF1Pcg==
X-Received: by 2002:a05:600c:5023:b0:38d:1261:aac6 with SMTP id n35-20020a05600c502300b0038d1261aac6mr12986937wmr.180.1648917410921;
        Sat, 02 Apr 2022 09:36:50 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id m63-20020a1c2642000000b0038e5fa06b50sm2456518wmm.31.2022.04.02.09.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 09:36:50 -0700 (PDT)
Message-ID: <cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org>
Date:   Sat, 2 Apr 2022 18:36:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: renesas: Document Renesas
 RZ/G2UL SMARC EVK
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220402073234.24625-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402073234.24625-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/04/2022 09:32, Biju Das wrote:
> Document the Renesas SMARC EVK board which is based on the Renesas
> RZ/G2UL Type-1 (R9A07G043U11) SoC.  The SMARC EVK consists of an
> RZ/G2UL Type-1 SoM module and a SMARC carrier board.  The SoM module
> sits on top of the carrier board.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> V4:
> * new patch
> ---
>  Documentation/devicetree/bindings/arm/renesas.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml b/Documentation/devicetree/bindings/arm/renesas.yaml
> index fa435d6fda77..f61807103867 100644
> --- a/Documentation/devicetree/bindings/arm/renesas.yaml
> +++ b/Documentation/devicetree/bindings/arm/renesas.yaml
> @@ -405,6 +405,8 @@ properties:
>  
>        - description: RZ/G2UL (R9A07G043)
>          items:
> +          - enum:
> +              - renesas,smarc-evk # SMARC EVK

I see you are using same compatible for different configurations. I
think it should be rather a specific compatible (e.g.
renesas,smarc-evk-r9a07g043). It's the most detailed compatible, so the
user is expected to check it and have the answer about specific board.
Here it won't work - you have three different configurations with the
same, most specific compatible.

Best regards,
Krzysztof
