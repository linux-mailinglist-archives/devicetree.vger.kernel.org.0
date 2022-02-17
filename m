Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8AC4B9C89
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 10:55:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238896AbiBQJz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 04:55:27 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbiBQJz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 04:55:26 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8180BD4CB6
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 01:55:12 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 370744060C
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 09:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645091711;
        bh=xqg/Xc9CYuc87DkKuqIherW4tETRFmrI7ZElb+EIvLo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=aGQGJCV4rU/ugbPiH9FO/0KBbt0m06Cc47MjTkI5IIs12usfbHugIxQzdZfKym5Xf
         2qqAs7iq3wDn3AEsSacABKfYD2FAtiqceR+B+C91RocYk/IugDvlyS4YCfFZLDBO5/
         9oV/HYdTmIFYjjKdfRwUVWCzTFQCbP9xx86xrDZg5YVx8aifiKUrmJHMwvt9JaC5K+
         Pk7ga+bFb+FScJCzj/X/SZ8yz42fhKaAbm+uXOUlsu+1QBgWahghNwwzgX7N8g+ZAp
         X4zBgIl47jocJ4sGh1HpKKo1cWmpNFm01vDGtrdhefZnHLUUZdB5sX4J7XJFf2Lbw+
         FII5rbTDTwRNA==
Received: by mail-ej1-f71.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso1254734ejk.17
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 01:55:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xqg/Xc9CYuc87DkKuqIherW4tETRFmrI7ZElb+EIvLo=;
        b=zLMRCJLBQxIXsbXko7rpKyUOzko0IvsTOGqn0pnjq0jZT1bf8KCcI/li0xO7tLlmU8
         LaMYQje1H7SF3UDXPkSkM8EZy1b/VM8m3Ea0MvmMBtlwKwmmaQcQzfNTt/pRdRMUGrXQ
         bgfbhElmsWR7VQ5GeJLg9wtLjGVlqEL4GKNA+vhTW6cY4CdH5IhqtZUgZJCuMpAWu1Zi
         UyXw9wbQyeH0TiquotUleJY0i9B3hCHRUqtVhXxuMVBaGNpm1TpTbwdddJfDvfYlD3QQ
         0yNo709ZpAok1QJSABz1edtZ2rmCoIUp7fUStvgFOhZdMBue+7zat9oy/ne/RcoIgTsl
         6brw==
X-Gm-Message-State: AOAM531gN3iUUkOLh+aEt8oWoHcsaA6y55oIci52fV1Jy5BhMWZ1OBw4
        TdKdK5pliqfN9wKH4QbutacKmL0y6bg+dSmno4v3EJiqq9HQcWrJ4qp6WAWnWzZcPq8NTRpj25c
        Mvuyt3kpDdsEutjr5QLvsiR0aEyAgcci1BY7B1Tw=
X-Received: by 2002:a05:6402:1d51:b0:412:86c3:7580 with SMTP id dz17-20020a0564021d5100b0041286c37580mr1702417edb.353.1645091709890;
        Thu, 17 Feb 2022 01:55:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyVqiLRT5dbOU5Ly6LY4l8kChFX+8DIMSGvlA48+vjFgCFmMOBcgpltkyZQ5jhMw4Nm2YxMLw==
X-Received: by 2002:a05:6402:1d51:b0:412:86c3:7580 with SMTP id dz17-20020a0564021d5100b0041286c37580mr1702390edb.353.1645091709625;
        Thu, 17 Feb 2022 01:55:09 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 1sm964379ejm.186.2022.02.17.01.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 01:55:08 -0800 (PST)
Message-ID: <535d7d37-c2c5-d0e9-85af-ae91cbccd0d2@canonical.com>
Date:   Thu, 17 Feb 2022 10:55:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: dma: Convert mtk-uart-apdma to DT schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, vkoul@kernel.org
Cc:     robh+dt@kernel.org, sean.wang@mediatek.com, matthias.bgg@gmail.com,
        long.cheng@mediatek.com, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220217095242.13761-1-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220217095242.13761-1-angelogioacchino.delregno@collabora.com>
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

On 17/02/2022 10:52, AngeloGioacchino Del Regno wrote:
> Convert the MediaTek UART APDMA Controller binding to DT schema.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
> v3: Removed anyOf condition
> v2: Fixed interrupt maxItems to 16, added interrupts/reg maxItems constraint
>     to 8 when the dma-requests property is not present
> 

Awesome, thanks!

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
