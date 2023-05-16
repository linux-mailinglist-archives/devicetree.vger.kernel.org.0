Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 401F07053ED
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231175AbjEPQd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbjEPQdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:33:08 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6C486EA2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:32:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9659e9bbff5so2657057066b.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684254740; x=1686846740;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ymmKCWyi4BuUhQeC0+Pd2BCRko+BuLsOvz6+yinnp+0=;
        b=TNH6T1E3C/BE0kajA/rxS9mxqz9/Np/ON/NQmMlQq8J5tGVFPKvz5lZWDXBc4csd16
         DnsEc+NHc4S3y9ZJwqGGFRLRJPeHA2yR0elocYlsQrGAL+1aqB47VLR/aovARXtgge2M
         rHl+9C8Wp6tCZlD/qE4KT8qPnAcaezMIxk8zBpr+8N0crlex0fme2+L8GVNcM+nnEG/9
         NyObCSOi/9H4X95Dzb1FNGWU47GNhj+O3erYEFwD+Qo7DyFaVmBQthPR9XWRN7xRyQr2
         rO39QCjL2UbJJLaOR+bxVd9XwGlj2X5BIISl9kIp/BHmPOjNt/OBnbQne3iIbyX0XGhn
         B+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254740; x=1686846740;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ymmKCWyi4BuUhQeC0+Pd2BCRko+BuLsOvz6+yinnp+0=;
        b=ljcZYPnJXK6Q+PnuDmrcERla5lZI59FTRovNjc07KbdLu1wF8vWScAs6dIgbAeAHbS
         Qj1UqwCc9kum3vIc4UUiTwrG/zu9bkEu5KqGi8bMKT/OCEt9Djmt6cuo99Q9HdaRiDWl
         qM3mK5eOMe3axcJW62dVb+y8OUGfQTHYnv7on8jmKkbHxy2hu2LJXa6zyv9v/y8sJ5B8
         w07ZI0pSvBgZ9y5iT7tRSWhKahP8RW7Sy7ZhYInITkliCEDEBosTt4ixN2Rv+R/VvbQ2
         sqnfPfdjSoFY2ustOGmAUlb+AHI6nA9stGRCIeo6olkLv9uEu8jhap6INA7wVhcxS8V/
         Bpdg==
X-Gm-Message-State: AC+VfDyMT9g21oh1GlwvNcv0XRCNWyxDaKTNJRlg5XEIgBXL3/QtENId
        QPjTwhOXdz0Kq88QeufPiBZamQ==
X-Google-Smtp-Source: ACHHUZ7OjQMs+ye3zleeYS5ifjOgQA3g+9sxbKgWz6PmgW476anHiMRBNPSEhk91J88fAafiJ3Z5ZQ==
X-Received: by 2002:a17:907:1c14:b0:95e:d74d:c4e6 with SMTP id nc20-20020a1709071c1400b0095ed74dc4e6mr46064634ejc.25.1684254740121;
        Tue, 16 May 2023 09:32:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id jx6-20020a170907760600b00958434d4ecesm11419565ejc.13.2023.05.16.09.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:32:19 -0700 (PDT)
Message-ID: <5590f51a-16b6-93ae-d8a0-ab6b4e2e1016@linaro.org>
Date:   Tue, 16 May 2023 18:32:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: mediatek: add missing cache properties
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230421223157.115367-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421223157.115367-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2023 00:31, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified properties to fix warnings like:
> 
>   mt7622-rfb1.dtb: l2-cache: 'cache-unified' is a required property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Hi Matthias,

Could you grab this one?

Best regards,
Krzysztof

