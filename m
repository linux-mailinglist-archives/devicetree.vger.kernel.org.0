Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1A1F4C6619
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:50:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234528AbiB1Juo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:50:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234426AbiB1Juo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:50:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54AA36A06B
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:50:05 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 95DC53F1D9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646041801;
        bh=ectxMCPGM0jarbOBkCu9KZ4bvDNGZx3m+YCA9hoUnz8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=MHg3mxK1zxIt6eHxdmZbdxvpmg/OY9q3mUjQ7k5sScXb2c9PUnU/1S4IUYkfQ2Jev
         vRi+6Ny631TbsctqBVJEF6+HrjyPOZz78G8OyEIOo6xhH72fURzjr7CSG97z08bz4R
         qJV9354k3mje9dbTSFYXMAKV0Bb1e7FEjfC75ZZhRWbt8BjDpQbL7rVSYcCsP5Oid1
         GsrwgxgRqIfv0De/iu6s6bFommCIN/CIdQ9AsXJRv5uD/7V+FDA1GHOqEjQ5JxbTo/
         rU2RsGr+5pP4t17EKDWPvuXwMt0e+FrkoGfACw/Sikc69Prhma5Noegj/CEBFwd4Bj
         JPWI5whe0KNqw==
Received: by mail-ed1-f70.google.com with SMTP id j10-20020a05640211ca00b004090fd8a936so5531883edw.23
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:50:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ectxMCPGM0jarbOBkCu9KZ4bvDNGZx3m+YCA9hoUnz8=;
        b=0fTIgjmRvdHr2+9WXMeKhFhJ/v8Du6s2T/F5KH0L07TeBaRKlvFx2Ye5Pzdh72eITM
         zYnZ+J+XXzyMvi0i7d7McOUeRCLjZSnv+8veVuj72Z94oZfms/T7N7spFjWaZq16mTtY
         DPzm7AOyUaGJicYA6Alj0FDSqeLhUk9THuSMsMn8d/PJqykSSleFI13wbjw18VjqQ7ae
         Rm6LtJ37KG/31GsDSqAtOa0qpljN6SrOeWZXAgUBu8vamFgjHbShwi81CSxktZjROLIA
         1EKOumyFb3TizsEsc2z/p9g6KbIxgVg6UVGSVWWa6VBUDY8Npp6oYwZ11uPdC3XqOcpy
         DMNQ==
X-Gm-Message-State: AOAM532bYrBjWM8CzhPF87mpPaboBCemYU11dkmZ8LAEQdjpv+ZUibHP
        fX0zrJhrg9sK3S9c5/ONlN8ZEfb3fqDLiTUp3dwxt96sTaypXNJCGkiEFj0AbaF1d10Gw/k5Ej8
        mBM8fF6g82fLJLdeEAyj9Cw21ovCIIXlbejK3MMg=
X-Received: by 2002:a17:906:9947:b0:6cf:e903:fb75 with SMTP id zm7-20020a170906994700b006cfe903fb75mr14136912ejb.400.1646041800868;
        Mon, 28 Feb 2022 01:50:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwoSz/yW/2BamQye2ioyaZE2tA+1fxGPPHeFOaN4uciiznvM0Ldgztis+ElZDaSR3ouoVVosQ==
X-Received: by 2002:a17:906:9947:b0:6cf:e903:fb75 with SMTP id zm7-20020a170906994700b006cfe903fb75mr14136893ejb.400.1646041800659;
        Mon, 28 Feb 2022 01:50:00 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id h21-20020a170906829500b006cef3dcd067sm4217812ejx.174.2022.02.28.01.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 01:49:59 -0800 (PST)
Message-ID: <7a7c1f00-65e0-add5-0cbc-373c58e160d1@canonical.com>
Date:   Mon, 28 Feb 2022 10:49:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: usb: renesas,usbhs: Document RZ/V2L bindings
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        linux-usb@vger.kernel.org
References: <20220227231531.32279-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227231531.32279-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

On 28/02/2022 00:15, Lad Prabhakar wrote:
> Document RZ/V2L (R9A07G054) SoC bindings. USBHS block is identical to one
> found on RZ/A2 SoC. No driver changes are required as generic compatible
> string "renesas,rza2-usbhs" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> DTSi changes have been posted as part of series [0].
> 
> [0] https://patchwork.kernel.org/project/linux-renesas-soc/
> cover/20220227203744.18355-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
> ---
>  Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
