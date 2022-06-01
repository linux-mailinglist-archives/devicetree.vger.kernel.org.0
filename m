Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD1B7539F83
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 10:30:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242867AbiFAIaL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 04:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350810AbiFAI35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 04:29:57 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C084BFE4
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 01:29:55 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id f9so2286225ejc.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 01:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tE+HUVUrHikVji7UM5tJAdcQHFX328uHVV2QzrrXjtA=;
        b=VemYYxf0S7hescYJHrg9tYxr/KIPygy9wx/KpJESDjoPj0azEdQHUa3XBsjxIgPQKq
         vGmJ+o5wXyLmR//u1EQ/7r8lPD/2VIDbDx9z5/ktwbma6A10QiTZLmAbGILYvi+Ga6Gn
         Zyi3PugYSbuEB/PQx3lpmoEhOcDCafT1109npdiC45JmWypdOIxMV002oFgnrjiaTc4A
         Blt7ZsyIXgbKg6Z3y+C0TyCebSXtjmtFnN2iQXB1MhuLtSArjBTgx2u+H1GxnERoXEHl
         /ro1h+6X4gUWKTSM81elWl8trhePloOFmBHNFL/ZtU0f29tc70zcChRob3H2C2KaycId
         TQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tE+HUVUrHikVji7UM5tJAdcQHFX328uHVV2QzrrXjtA=;
        b=l/WIqxcqAnLvc/UZg1snxsTx3vbzWOtVA/mEDgg4CML+1bXoxSDUkqSKGPf7r9rEWR
         fixsQVHc/bbqmyg1qwQDZm3sawDK0TN0Orzrq8dsZv4bVjhrh9PfrSJovzwUsOjQENdm
         9mgB1+KMLQuEaVNZZ7t+iFZjumB7bypRBUKgalpS2i54fxpJzk7CvQSKV8rMiaylLdzW
         m2WoEdv4FI/XXy10aHtG6o1lHuhtMpUXyXz8FrcDc3BRgXAiivzwN1NdolTygzq0Ftqq
         +jOe4gbVQuroNM6dyxZvIQqolkxTYYd/Q+PQsNQAfP/S5dNm+/kk+fi1t7f2/8m+G48d
         2lUw==
X-Gm-Message-State: AOAM533ibbr2C5cPXcEbht/uLDfblrY7jofoff+TZIa8dOyy8Uqe2+7Y
        T82X8+s79PR4Yvwn2b7FDWNYuA==
X-Google-Smtp-Source: ABdhPJyi4Z3RZzaBOS7ZnglUpKpLJgK5BnLa+QWibqgsr0wLo+mZsbF/byEfhXpXRBC1g3i7pXmhqg==
X-Received: by 2002:a17:906:7313:b0:6fe:ed0b:9964 with SMTP id di19-20020a170906731300b006feed0b9964mr40660647ejc.95.1654072194206;
        Wed, 01 Jun 2022 01:29:54 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jo13-20020a170906f6cd00b006febc86b8besm421340ejb.117.2022.06.01.01.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 01:29:53 -0700 (PDT)
Message-ID: <98e508e5-50cf-e8ae-e251-f2f1fc90fb92@linaro.org>
Date:   Wed, 1 Jun 2022 10:29:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/3] ARM: dts: aspeed: Adding Jabil Rubypass BMC
Content-Language: en-US
To:     David Wang <David_Wang6097@jabil.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     edward_chen@jabil.com, ben_pai@jabil.com
References: <20220601080856.1548851-1-David_Wang6097@jabil.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601080856.1548851-1-David_Wang6097@jabil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 10:08, David Wang wrote:
> The initial introduction of the jabil server with AST2600 BMC SoC.
> 
> ---
> 
> v6
> - Delete unneeded blank line at the end.
> 

Thanks. This is v6 however, not even v5 like mentioned in dt-bindings
patch, so please name entire patchset correctly.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
