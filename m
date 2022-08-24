Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8712459FA6F
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 14:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237270AbiHXMvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 08:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237421AbiHXMu5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 08:50:57 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34A5F95E5F
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:50:55 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id s1so21051583lfp.6
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=VIvn4cn38mqmq8WvF2X7y/SBiSVMfGMJeaVNH0qHe9o=;
        b=myWHpRkE0JHF+tTboHvgSdeq4hDDIDzW3o2/kG40uIP8wBe5Qtf8c4eWWvLeA3qGB+
         5+VAi70dRsuwNRjXlXFZRRi5152W7yHHCTd9A1cYQ07kRzRQCkkDDqdLcsSal9TXUimu
         WHNESwCDBoMe2T4PirwFphqC7jnVY6GXoosXkLj1Qhspt+curOhozmhJWQHIYWA49J0H
         j9ZakInDkVu8bPFMvSuVGx6I5kzlN789kKmwoGcwachUCYbC6KVA8KcaDUH/UksnAdj1
         mtX81dBWvW68wBRbsLgyobXiZ2di4NmNtBQkRko+eStRHi6/WYVFVLyJhlURXaOmSLrE
         IFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=VIvn4cn38mqmq8WvF2X7y/SBiSVMfGMJeaVNH0qHe9o=;
        b=7Qit0B0uyc/zDg4X7TpHGOOZyttiZZ0TEb+SgrUGUWNd5L7r/m6TVRIMf7qYwF+f//
         ukGREW+es9R8+9vI62GwooxFXM9d7SqT713IHiUFK/I3oVZYPR0WqXnGiXL0XTNNtb9f
         7k9OqvFz/SS6UbzVmnJVT3MT+CS+tox8LUerml1vcjRXmxbCmHHfa7pYNfrnMRgiR2Z8
         /zti4bddmeFJYdI7KVDx2HaUK+RhP8pMzICgpKRBqJvJuh33VyV4V89kPh4rw4xirKLj
         JUr46yEjmCCoosvsvdN1C2GvA5wRZtd2B2OeRnJ68S4aViaH+DkAVxxqHY4/A6VwZxPV
         NmJA==
X-Gm-Message-State: ACgBeo3alsOzIpZfeemAKYsC9dg2+x1G6JWJt/MyiE2HkVynRjge8KhY
        oei0wB+4fyOOxzIvCywfArVVgA==
X-Google-Smtp-Source: AA6agR7Z/1jGW7Q8B9kfMwTIdCYPqqO+/2YBvt8cNU59/7t5/M6VcYqdYuJNjpfmZf8K+b4Uz38cuw==
X-Received: by 2002:a05:6512:3084:b0:492:f04c:8a3 with SMTP id z4-20020a056512308400b00492f04c08a3mr3618630lfd.199.1661345453600;
        Wed, 24 Aug 2022 05:50:53 -0700 (PDT)
Received: from [10.243.4.185] ([194.157.23.230])
        by smtp.gmail.com with ESMTPSA id v23-20020a05651203b700b00492f294f06bsm1028184lfp.110.2022.08.24.05.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:50:53 -0700 (PDT)
Message-ID: <58a694df-fb33-dac9-0dfd-eb2efb9abde9@linaro.org>
Date:   Wed, 24 Aug 2022 15:50:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 2/2] ASoC: mediatek: dt-bindings: modify machine
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
 <20220824122319.23918-3-chunxu.li@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824122319.23918-3-chunxu.li@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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
