Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75D2F6B38FA
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:41:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbjCJIlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:41:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbjCJIki (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:40:38 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A3A101126
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:38:28 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id cy23so17287857edb.12
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437507;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t4tm25fNnIaWemUx2VahelluE6ctKtlhrepqAnkCCss=;
        b=nmxtg+WHsmkV971tCViPa6+CimQStML5lIgnFi5wEyq3kb6St6+KLSZ/wsAY0gRoeC
         dgr9I2aXQx/Xna6OWEu0t99p0Xi9yA88yqa9G08FetK/cx5sWLyAA8orpezlPTMBPjE/
         qQiF6fj2hRGEkC7mvsU8frgcv3ND1XCksO+7nqpcZ/KHmutRWnoT1u8NndkTcUnZ3xPU
         hhIrSbS+5ftmrK5B7BJNrMIUH8lyrJOzJSOZQrPq9qLp1EDEEQQkhd5myR4hUUcbsyeI
         dwXElMqmT83g6OAj6Y6KXvo3DgXaXRoW7KG7kJjjZggAKANTLBKot24E1Hc4jGinAOas
         +NxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437507;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t4tm25fNnIaWemUx2VahelluE6ctKtlhrepqAnkCCss=;
        b=Dnt23OUWKSJI5873OuMAhcaCqw8bY8p04jDNzlBRPiti0b0EplQ10i4Rnlh6ldcjVw
         6i7hr74tmA1WqtoFX/yksq29Hgf1S1ceY2o6OnmnSV+mODXuCSuyw+ofIyjJjjLTjhuY
         7RsbRKcJ369m1sIfO4odlbAyeamZxDsPIYcIid+O922Mktm6n4s2m9bzzoxQeKJxE9W6
         rUf3+TSPdlQDM15GmLeA7g/pFiqFbu2fYqWTwQxqD+w7vjbOfm0aZcgDVZW/fuMdorRn
         UmbwWZnUIqt+S8yuGNN3tcEqAvfck8QjLO5SzsBiFTTnnHZ9Gh45pbPDgMTf1kPtUgjD
         WlQg==
X-Gm-Message-State: AO0yUKUkoFfhc8IwHTYmbq4t/gZF3PKTJUofuKUxThmidPGvzzeqJRIl
        VvDg19ClpRvkDt6nfMTIGRMCiA==
X-Google-Smtp-Source: AK7set/ljQXMn96k9aYajnipD3ShYXrnZo/eORj2bw7NOnFHEK9rIgYt7AS2Vqef+Ys9xbd2oOv3vA==
X-Received: by 2002:a17:906:fe07:b0:879:ab3:93d1 with SMTP id wy7-20020a170906fe0700b008790ab393d1mr35150385ejb.4.1678437507151;
        Fri, 10 Mar 2023 00:38:27 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id dt22-20020a170906b79600b008d47cd2edfbsm682617ejb.60.2023.03.10.00.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:38:26 -0800 (PST)
Message-ID: <72543074-02e9-23f3-7963-62e23eae1e1a@linaro.org>
Date:   Fri, 10 Mar 2023 09:38:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 09/21] dt-bindings: display: mediatek: ovl: add binding
 for MT8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao Shi <jitao.shi@mediatek.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Xinlei Lee <xinlei.lee@mediatek.com>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Fabien Parent <fparent@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230220-display-v1-0-45cbc68e188b@baylibre.com>
 <20230220-display-v1-9-45cbc68e188b@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220-display-v1-9-45cbc68e188b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 15:22, Alexandre Mergnat wrote:
> Display Overlay for MT8365 is compatible with another SoC.
> Then, add MT8365 binding along with MT8192 SoC.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

