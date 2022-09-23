Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F70E5E7AA3
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 14:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230325AbiIWMZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 08:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231341AbiIWMWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 08:22:25 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9185139BD8
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 05:18:30 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id f9so1015lfr.3
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 05:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/Tpr6P+g+Al9tWTkrQh1Kx8ODsLWgLjiAZNnWEU4SKM=;
        b=vi/HPTEiMT64lQHb/l+LssK+oBUAx0mDf4Ombbrf/9W/UQPskRMpYHBVM1OYcGKFwd
         7vvDm+z3BThFrzwnrY94NdHYRCc1vf2BUHvObfWNGleEAITF9UX8ic/SUOATP6gVQHMg
         nlBOrQDRWGysJomXlfJvm6MrM8OL7Aw8J4+cC0GMkxcXrna3cXDLFYttnGf+UrjqOQtr
         4VhrqeYx4g/0HeCcaCNAOrMYelY7/gxq1xMRDrYrWpW/cezNyXAf+HbVfPbVa8/3eWti
         uAZAcy3gI9hn8RbNMkMzZ5oXjmEOgTS0RsPWIDLtH5586UUahdUD1ogbjx26wqcyb3+p
         HDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/Tpr6P+g+Al9tWTkrQh1Kx8ODsLWgLjiAZNnWEU4SKM=;
        b=Iu3zglPV7aqYwCyMai1ZFbBa8MLy/QiFrLkRaATdOhXvjGEddg1Vs1wTLwfyrr2Yt3
         WXC4OWr0f8KFsGUcOgK72/sZd3H3RZM+GLNUpb/w+H8SVqGAqcmvlGQsER+UhyNHbRA+
         juONfv7TaANgRX0PwJk+WbdhWgUQJnUI1Jx7vcSFw5xaYk6cCsjEklA+zFTw9zz/jOgg
         ywezOnHXEpFqLxwYmoJJt9NdU2m8mWiPkc6rxIOHcsh8+rh6GfETLC3KorskXfNAlDcX
         NH0QWRsn1NdYNTSrnjAKvgumfsLICbFqNwEprQdojgMmMAqnsaUAZMKvXTGEqD39Gq7n
         t20Q==
X-Gm-Message-State: ACrzQf2hpbRNAp3WUecyv+9TLlfV0YFX4Ez3DKoKWg1+c0CJ+W8PmIjA
        QfhZTigJVe9FjTLX4Jy9mMc1Vg==
X-Google-Smtp-Source: AMsMyM5f7Oa8QOXzzSkrmPnHwFjLMxSM418zYjYW4kjBQiEhAaJrQR1KNtWsIcPXRViH535iDR3DzQ==
X-Received: by 2002:a05:6512:1055:b0:49a:de51:5458 with SMTP id c21-20020a056512105500b0049ade515458mr3009874lfb.585.1663935509037;
        Fri, 23 Sep 2022 05:18:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c1-20020ac25f61000000b00494a27500c1sm1424504lfc.163.2022.09.23.05.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 05:18:28 -0700 (PDT)
Message-ID: <ea97d5a5-e4c5-86c4-2d9e-5c01721823be@linaro.org>
Date:   Fri, 23 Sep 2022 14:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v5 2/3] dt-bindings: input: touchscreen: elants_i2c: Add
 eth3915n touchscreen chip
Content-Language: en-US
To:     Yunlong Jia <ecs.beijing2022@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Bob Moragues <moragues@chromium.org>,
        David Heidelberg <david@ixit.cz>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
References: <20220923083657.v5.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
 <20220923083657.v5.2.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923083657.v5.2.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 10:47, Yunlong Jia wrote:
> Add an elan touch screen chip eth3915n.
> 
> Signed-off-by: Yunlong Jia <ecs.beijing2022@gmail.com>
> Suggested-by: Douglas Anderson <dianders@chromium.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

