Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8E584C6611
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:49:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234514AbiB1Jtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:49:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233932AbiB1Jtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:49:49 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3190623BC1
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:49:11 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id ED1793F170
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646041749;
        bh=K8UVf48N+Jv0xX6sCbZYY6ItX765Q2FeYJ8hE11hC+Y=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=DoPrfOHmIFOtmcb+LqSxWVZkr98Mn+V9XvGMdiMXaYFpfeXqfbTUpAJXZLdYdQShc
         k2mGEu6OicvKxak/d38NROAw1US/Sm8yzp0VHedCoOo1iT/UyUGDzPgzyYdeI/k0xq
         tAmtu1gLyebdQHqpj1OIQsE+yCUIS3TQfKz2L5ZcQEWmDl2gAhXCkQIYev6SId8XM1
         haYI+YGNfhCbuyOx2UIPasOAs1a1w+H5Mq9C9CWUc52bGlIYm9MvytnWCt3M1CG6lA
         7RgPXg04ts8DBzm83q1fG6poKXxY65WE3DaZQWSh4eO6lqCUts6iQKEEPvTJDXoit6
         V9vTrd+TVU0BQ==
Received: by mail-ed1-f71.google.com with SMTP id dy17-20020a05640231f100b00412897682b4so5542909edb.18
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:49:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=K8UVf48N+Jv0xX6sCbZYY6ItX765Q2FeYJ8hE11hC+Y=;
        b=kBbz+fiam8IzqzloJBxJGOv+KmTbt5dA8g3lmSqI0+BXEn1eGAiustFKwLC3dob0RB
         9/vinM6zqKCx0g/aEmw/8ZZ5uEfVxQKAwWFk9e2yGH8sRcYZrvAn26HtzyaA1f1Ang+S
         0ekX88AUYEuLYrwT9htEacZxhT6On7htEUDaovtsE3QaPvR8MuYhHG3ZN78RIHFoSEuc
         0OM7WCAdPJbJDa4KFCjd0s5WsGfQ76LzkgLEYHubvLXUD4J6Cob1QxZAvfGc0KzTdIsg
         R+w6jtzrQxdTtfP3ZUZNLOFHakEA9imO2Gmkw/+SgrwR4jl0cESk24HeULtDxajCMXRM
         1C2w==
X-Gm-Message-State: AOAM532ydzGaYgf6P5tPh/KqnAvCLMRKMMpS5XdcthkWRYeRQHgjNI5a
        fMQcw50nqMQxiE3gcCu8JDSVpBNNRbxXh2+sGppL8gXxn/DYUL62n1UI3zwxqm5GRD82IfvbOpa
        rwQmq5EibOutk4thY0aWcvopvkB92poYfcRp7eGw=
X-Received: by 2002:a17:906:5a6e:b0:6d0:afaa:6ce9 with SMTP id my46-20020a1709065a6e00b006d0afaa6ce9mr14525313ejc.72.1646041749713;
        Mon, 28 Feb 2022 01:49:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxiPlkY9rsiYiTnm/CU3aQEVQ1j+U9P0OWAKpk1KLMObh0w4NoWTo25mdmg/4GZXBmyUWBHrQ==
X-Received: by 2002:a17:906:5a6e:b0:6d0:afaa:6ce9 with SMTP id my46-20020a1709065a6e00b006d0afaa6ce9mr14525304ejc.72.1646041749549;
        Mon, 28 Feb 2022 01:49:09 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id f5-20020a17090624c500b006cee6661b6esm4241494ejb.10.2022.02.28.01.49.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 01:49:08 -0800 (PST)
Message-ID: <99a91e37-87fc-c0a3-8dec-20ebbba84f4d@canonical.com>
Date:   Mon, 28 Feb 2022 10:49:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document
 RZ/V2L USBPHY Control bindings
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>
References: <20220227230302.30388-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227230302.30388-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

On 28/02/2022 00:03, Lad Prabhakar wrote:
> Add device tree binding document for RZ/V2L USBPHY Control Device.
> RZ/V2L USBPHY Control Device is identical to one found on the RZ/G2L SoC.
> No driver changes are required as generic compatible string
> "renesas,rzg2l-usbphy-ctrl" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> DTSi changes have been posted as part of series [0].
> 
> [0] https://patchwork.kernel.org/project/linux-renesas-soc/
> cover/20220227203744.18355-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
> ---
>  .../devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
