Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44EAF59FA6D
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 14:50:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235919AbiHXMul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 08:50:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235620AbiHXMuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 08:50:40 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF2095AD4
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:50:39 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id v10so16318381ljh.9
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=0O7Y3wJVPgnkwy4P2rEemJaId32uZhPl7XRxR+A9aIE=;
        b=Yam95mWyIq0L0MGw6weU1DlJz4RMqiQEoSPqdYdcFy81HXgQk97ePlQVxKanlngc+K
         HPCgJ6gROEYSRn95DexG04ODFwjr+N7Vov8Vr2319AMy3HTwssnYvlvI8S8ckOSaR9kp
         uFRFJX9mvjDuNMkDBCYKiXmY316JHSzxe4vmilL/mRC+n5oIkUkCEVVF0vAT5OGhMcvh
         RORPoEGTw2uHQV/6Xr8/cWXvH5txQJ/4+SdXqP5BuQb+Gip2Euj4geU9z56JJcTPko2k
         txxzU7CB4NUVazI7dVgVoyYBcWNFP82sY6KhI7URrk0ZIkj/EvEMdoGFuXERGWMD6GR5
         2LgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=0O7Y3wJVPgnkwy4P2rEemJaId32uZhPl7XRxR+A9aIE=;
        b=moLjbG0+gfa81edJMLUrtalOZfPUK5xT9y6aRfIklDk9j+JnB9Z4JiEU9mPxnbVygc
         0jegu/K9zjMSZkf2HIJarZbYdFv4ZaLHnhP/aOLwUh4/fs7wuvIHnLCot3oJGwYgpGiL
         fLJV48ZTHDKKEZ4toLc9+DDnZYzyJPc/Tn6iqc8Fz78znoZos3B91fkXbHQk8yE23gVB
         wnl/RejM6dJC3ZbAdDATOkAXEGwLzZN5QXzjgoM0cgGPrABvxj99aMkmDEaOI/hQ+zWE
         0JXZ6y0vklD5uaDLrzZgOeUTkKUZBHtsEcCv/JTWMdm8thLyUuQdwv+//CRVizaXWHWn
         w4cQ==
X-Gm-Message-State: ACgBeo1u0aBW6VxlkXDppTfDfq1LEd4AbmfhcXudkw0d/fSrPwwiun/3
        H9Nh5DtTADkgmJc0mSIuC/nflw==
X-Google-Smtp-Source: AA6agR65hBbDRBSJCxuxnnZFSQvwtE6BrqpyaIPRWhBHpgpzD629PE3LDaZFuYdEe3dkvWfNHYdAyg==
X-Received: by 2002:a2e:9cd0:0:b0:261:e257:dfe9 with SMTP id g16-20020a2e9cd0000000b00261e257dfe9mr898830ljj.209.1661345437595;
        Wed, 24 Aug 2022 05:50:37 -0700 (PDT)
Received: from [10.243.4.185] ([194.157.23.230])
        by smtp.gmail.com with ESMTPSA id n8-20020a05651203e800b0048b13d0b896sm1312261lfq.141.2022.08.24.05.50.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:50:37 -0700 (PDT)
Message-ID: <fa3aae29-3445-328c-e400-5b91cb2da4c4@linaro.org>
Date:   Wed, 24 Aug 2022 15:50:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/2] ASoC: mediatek: dt-bindings: modify machine
 bindings for SOF
Content-Language: en-US
To:     Chunxu Li <chunxu.li@mediatek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org
Cc:     lgirdwood@gmail.com, matthias.bgg@gmail.com,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        project_global_chrome_upstream_group@mediatek.com
References: <20220824122319.23918-1-chunxu.li@mediatek.com>
 <20220824122319.23918-2-chunxu.li@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824122319.23918-2-chunxu.li@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 15:23, Chunxu Li wrote:
> From: "chunxu.li" <chunxu.li@mediatek.com>
> 
> Add SOF related field.
> 1. Add a property "mediatek,adsp", Only when adsp phandle could be
> retrieved, from DTS, the SOF related part of machine driver is executed.
> 2. Add a property "mediatek,dai-link" to support dai-links could be
> specified from DTS
> 
> Signed-off-by: chunxu.li <chunxu.li@mediatek.com>

Usually first name(s) is separated from family name(s) with a space, not
dot. Looks like you need to configure your system.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
