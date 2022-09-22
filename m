Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6FA55E667D
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 17:09:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231733AbiIVPJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 11:09:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231775AbiIVPI5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 11:08:57 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6AC5DF39F
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 08:08:55 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id z20so11392842ljq.3
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 08:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XMagaWj+qsBFjnLrI8sBIja14veXFKrlDQYG7XtfNWE=;
        b=DzHeHLFn//JTk6UMm4OPpr3veynEUt1p2tLF3kaAVSP7dhi51cuhKTE8BKS/jNHgju
         G77Ldz5TYdPY4501O0mvoOWrjRKHaDvf79vQr9UAcGAnaVmYZe1+c4oze5GJnMLO3sdb
         0ocnadIuQIcTB6XmIkT0xruxTHb/LUYjvXN248PkKjx2QUKIIT6yrM2t26YxVV+MVr0S
         J5BHjtdYX935OrxlaGMSJbHRcy4SdJgoZfAoyv3rkJ/QLqHXVz0WiNtLts7slfYBfsRk
         YTJALdwyX/ACqmJUvQiUoJZ/FgKzGR/9V3WMDAH7rxTR5RsMc0SQRrobCJ4bTrlcHdSL
         NkXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XMagaWj+qsBFjnLrI8sBIja14veXFKrlDQYG7XtfNWE=;
        b=dm4gChDOfSbNvHAid1zotfseDIrUqyyjzraipPKH6GbDsEBtg1CF+NFvP1F7k4dD0+
         xZ82DrGBrmOfU7esruDf93f1IaUi6RQI+sPL636Jwph/+AGgMkPOb5rFLx8ubLtiuFNU
         VoF9HLt08vJwY5vNkX2qpzTvELiXhw8lSaS7Y+CxvEf1dqJaXlH5aNPDgfN8qQ8TI6jt
         iWBjvSibg4LuhcePu3w3e3BXiD5/2H30HXDv2ER533JAbde4ilt45PRuIRwD+jMIDpxz
         ynRDbVOocSoOfGW+ZNqkdUMc8PT3CEVo8EuFdG7ZX1sI8HBn8AD5WzCm1S3e2BEm7ikD
         PQgg==
X-Gm-Message-State: ACrzQf2FHcS5M9LavMuMJuh7apIvlSwfGV8i6Y27b0sprtXYo07JMaqf
        itpKnhWRxafhV8mHiKr5kF24tA==
X-Google-Smtp-Source: AMsMyM6Edu7WLfsqQrPewr8KMaHpm8Q9cLMq8zru4YXuHBvZo74OAhVg37Deu8WkRBA+V2L3rckbCA==
X-Received: by 2002:a2e:a7c7:0:b0:26c:4fa4:47f6 with SMTP id x7-20020a2ea7c7000000b0026c4fa447f6mr1266324ljp.171.1663859334226;
        Thu, 22 Sep 2022 08:08:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b22-20020a05651c033600b00268bfa6ffacsm919565ljp.108.2022.09.22.08.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 08:08:53 -0700 (PDT)
Message-ID: <29d54940-997a-865a-b9d0-c043a8c9ce99@linaro.org>
Date:   Thu, 22 Sep 2022 17:08:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 1/2] dt-bindings: rng: nuvoton,npcm-rng: Add npcm845
 compatible string
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, olivia@selenic.com,
        herbert@gondor.apana.org.au, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     openbmc@lists.ozlabs.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220922142216.17581-1-tmaimon77@gmail.com>
 <20220922142216.17581-2-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922142216.17581-2-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 16:22, Tomer Maimon wrote:
> Add a compatible string for Nuvoton BMC NPCM845 RNG.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.yaml | 4 +++-


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

