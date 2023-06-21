Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AAC3737D0A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 10:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbjFUIHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 04:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbjFUIG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 04:06:59 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EDE910F8
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 01:06:45 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9891c73e0fbso328452666b.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 01:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687334804; x=1689926804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tUYpAe3/BhIXsJ7SCvf+lazECqtgTTqVOxYrUgT+rmk=;
        b=b/IM1bOYZdO1qLaO5wacoULq1wOdHfg05Y5vNjDLicFchEiHx08FgeYK5EEDEmxndu
         fZ9w96h1JvhUNM46NocWKsof2/MpAzdUda8pX5RcIA9CiZVl2tR3IC4H78jhXyFTLWar
         JLH50qmBZkuKkrkBHvAa4dZMnGL6myfPtcbGY/M8CXTDKofDKliMvlhr6bEojEHMqrGy
         e4U5VYziDBIW3hGHbXChReQGZzJwGXe+XWSV96VB9o2dXWLAfG71qtyHIsVAmZ/x4YHJ
         Ahga7/IRlbPBLl3Ze9byCXQbdWBKP5adaOJIXd/QRtQ+ZqMljGZ8iQ3St2Ro2+FI9FTs
         nyow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687334804; x=1689926804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tUYpAe3/BhIXsJ7SCvf+lazECqtgTTqVOxYrUgT+rmk=;
        b=chvKtLIhIE8tMFdZ/3C66/zHU4wJHERrED7AZc8rA30OGmdCMH1w/7uYpgG1LvtiKK
         N27pzxlEyGdGU5LmoJviOV7H670Zl1kmjV9z3kBsySIMgJpPqlda8IDL1vFlMVkjHWPa
         Wd7WHc675u/5IBwk5rbRH6fS+qKZA2Wkam5acW3+eAOM939XyUU3gSxzd1uWalPaosa2
         bMZjBQqLx30zFfbQt4X3VSGvpoLGMVKKLvDUIjhSzq7HcXfBqKJSzZ2Twc9SNuUYixbS
         KcY68nSE6tvwA32xIlI26X1BEK9aw+OGD0T00naQFG/3XBBT4OAy8gDzyUyzqmgAaux5
         7UNA==
X-Gm-Message-State: AC+VfDxL08RxNOkqJA8UPqo4mTfUxzK2BSZIskOakbHacj8ZItsMW1bO
        0MskLm9zwz650xjPmb3iXK9oFA==
X-Google-Smtp-Source: ACHHUZ4Rj4hL3d22YdOCy+NwHSszJHxDwCU8BunhCwJffLs7i4MitWYEuGrtdTklZGeILsy/FuO7wQ==
X-Received: by 2002:a17:906:dc94:b0:982:87fd:7760 with SMTP id cs20-20020a170906dc9400b0098287fd7760mr14507233ejc.18.1687334803900;
        Wed, 21 Jun 2023 01:06:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id j6-20020a170906410600b0098877b10de7sm2680871ejk.193.2023.06.21.01.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 01:06:43 -0700 (PDT)
Message-ID: <7d229fb0-b8f6-e629-cbad-0a3501bd9bfe@linaro.org>
Date:   Wed, 21 Jun 2023 10:06:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/2] arm64: dts: meson-t7-a311d2-khadas-vim4: add
 initial device-tree
To:     tanure@linux.com
Cc:     Yixun Lan <dlan@gentoo.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>, Nick <nick@khadas.com>,
        Artem <art@khadas.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20230620134857.238941-1-tanure@linux.com>
 <20230620134857.238941-3-tanure@linux.com> <ZJIjtphyKdC48JrN@ofant>
 <76a7f819-f3d2-d39d-1bc9-f1e7f837fd22@linaro.org>
 <CAJX_Q+3im20qphOXzn-=58Kx4--ajbaF4P8BVvRcDcPXn1Qheg@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAJX_Q+3im20qphOXzn-=58Kx4--ajbaF4P8BVvRcDcPXn1Qheg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 09:37, Lucas Tanure wrote:
>>
>> https://elixir.bootlin.com/linux/v6.1-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42
>>
>> Best regards,
>> Krzysztof
>>
> Hi, I did not understand the recommendation here.
> Can I add "amlogic,meson-t7-uart" without Documentation changes?

No, you cannot and checkpatch will ensure that.

Best regards,
Krzysztof

