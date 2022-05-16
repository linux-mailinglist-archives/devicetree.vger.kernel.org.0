Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB5E528795
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 16:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244771AbiEPOvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 10:51:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244766AbiEPOvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 10:51:49 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C18552F021
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 07:51:43 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ks9so29193213ejb.2
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 07:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uOxNWh7yabHDrbMrM0Z54oCYMU6X2Tmhhr4bpaZlq8s=;
        b=fRNJSoxj7giRSyQy0TVYlxEPinl12dnHdkFzDvk1D/dHyFl1VZXFh4KWjRwx8lB8lr
         m4jpauyK4bAZcNzAWg+/V4WUux4FUyrEQka080XO4bipiNeA9kzXpEvqqC2dTINgx3oa
         RuWuz1NvyuJ/arOWE63/iU3+BpG8Z96CoPVntmaPbEO/7+3/jiChIGPDuKds61vUTwM0
         +NPNeOCoqvtwV4qQAX+ZwplH+WT/0o1tRCeufiOslW7dlU5GwY/cSPM1nPWVtxF8IfGs
         E8ub98BW4pYJ7a9i+4Dh25pMUsT8SQ+Bt1NbE4VUhd3MJTC3TvWaeLRfnBU4Sj3mqnPO
         6SmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uOxNWh7yabHDrbMrM0Z54oCYMU6X2Tmhhr4bpaZlq8s=;
        b=uHJJixPEfSK4XQhpwv4p7vSsQTu4DWZVIXqOtcWDDySbmIjxKV7/ldj+CQ1YdNCMKK
         gOpbcaZ+HQln+ty0jkG1uqu+IfdvLXpJePAemD1H5ppfGODZB5i+7O29KBSCkcjOCJGR
         QOGp527T/iv+/l6qtF0KA0vhp9jgaAluPDCQKt9O28O7u4T+E+xpCgUNKOH3Oz7qFCsY
         +bftdlTq6qnIx617uQQ5X4xuXVjBh+ucVfAaEdhB9AkDST70CWA7fUqnthBmwf0tvfdh
         zBqOYR5+5nll+PPIwDx6EnwSBmtrkPRFWiFiJc+fXWR5I/v/qyFoDxgn6fT5jU0WtQ6n
         BNpg==
X-Gm-Message-State: AOAM531h8rRBRRZOuSGqfkhO/1YcvYn/cbtSGRIUGfvMJPLB99Hhrxdu
        2Psax8lCibsjz5OXwmYpFbeFYA==
X-Google-Smtp-Source: ABdhPJxaAJZbuIA8SR9ZufnKLS++8KuZsJE84jXP4tu+xwDtfpKQXu3jisHIZIVRufznRUYH6G6c4A==
X-Received: by 2002:a17:906:4cd8:b0:6db:372:c4ba with SMTP id q24-20020a1709064cd800b006db0372c4bamr15448039ejt.57.1652712702161;
        Mon, 16 May 2022 07:51:42 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 3-20020a170906100300b006f3ef214e40sm3733974ejm.166.2022.05.16.07.51.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 07:51:41 -0700 (PDT)
Message-ID: <d78e1936-a0ab-663d-1381-b537bfd7f07d@linaro.org>
Date:   Mon, 16 May 2022 16:51:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 5/7] arm64: dts: mediatek: mt6795: Add fixed clocks for
 32kHz and 26MHz XOs
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, paul.bouchara@somainline.org,
        kernel@collabora.com
References: <20220513171617.504430-1-angelogioacchino.delregno@collabora.com>
 <20220513171617.504430-6-angelogioacchino.delregno@collabora.com>
 <03e99a02-1233-3882-e1e5-24ab1bbaf257@linaro.org>
 <0f303425-3b12-7573-b201-030d4d044db8@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0f303425-3b12-7573-b201-030d4d044db8@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2022 10:51, AngeloGioacchino Del Regno wrote:

>>
>>
> 
> I should reword the commit description to be clearer, sorry about that: I
> went with "exactly what I've done", but looking at the actual diff, it is
> just a rename. What my brain was ticking on here was about removing clocks
> that didn't really exist (uart_clk is not a fixed clock, etc), and adding
> the ones that do exist.... but then again, the result, casually, is a rename.

Yes, some better explanation would help.

> 
> In any case... no, these clocks are not board-specific for two reasons:
> 1. AFAIK, these fixed clock outputs are from the SoC itself, not from
>     external components placed on the board, and

This would be fine.

> 2. Even if these were from external components, the SoC *needs* these
>     ones to work and any board that doesn't have these fixed XOs simply
>     wouldn't be able to work.

This is common pattern and Mediatek is not different here. In all cases
these are needed by SoC and in (almost?) all cases these should be
provided by board DTS. The DTS describes here the hardware, the board
has the clock thus the board DTS should define it.


Best regards,
Krzysztof
