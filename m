Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6334AB0FF
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 18:39:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344596AbiBFRjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 12:39:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235297AbiBFRjp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 12:39:45 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D50C06173B
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 09:39:44 -0800 (PST)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6DFD03F324
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 17:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644169183;
        bh=TeCoJpL2gatn+bwxsrgd/Z8tOsdzbjXD8EGKfCYuAUI=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
         In-Reply-To:Content-Type;
        b=KuxWJAFrIq6MkXD1ka4Ds2NnVQ15lEsDuNHYGSbF0BkjAde8whxrdlBvpPFrCnN6b
         Ri7erN+ir3Iq1QdybZ+L9EnOCwPYY8+ePOsHK3JmmxCsXuO+PZRkduoDIhZjknA61D
         Nr4jnFn9tVNqU8yXbu/Mt261Ex684pzWg/qUB8vDZekym/Y6sC7kYqUGnGOn1dvOQm
         pBChbksQvMXireq2GweQyj5VKO0egarHWd/t8AE2H4EbA+mlggTHpBtEyRzMC9efsH
         f+TXInaVigGr3nAYWR16HrnZ7CKudGJso4UEHNE9wgb/zq82w6Q2Dv3964gar9WugH
         NbfoE1iPFvTkA==
Received: by mail-wm1-f70.google.com with SMTP id bg16-20020a05600c3c9000b0034bea12c043so10835904wmb.7
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 09:39:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=TeCoJpL2gatn+bwxsrgd/Z8tOsdzbjXD8EGKfCYuAUI=;
        b=DzmOHhdTwJi7WNYOOXpyF36c2hAqmj2apNdKSvXwjWF9zlWIqx5TTReO6UBD6M/5S+
         K+FTICSeqY9On65oWBmMm+Zr6T51nn/EtjzTBRjvRZaiXQQsZU9/u+ZPYDxHAhtFqIPX
         R4y29/rzh0NO/kyDFh7e5880avOyVReF6Xc6zRv5vLx7G27DIN09TUjpxY8XCHTIxYmG
         o6SMwXzawnmMA8LDRvYupEmZJ5c2KygkqDlOCi1FcN7AGVLeWRLZtUvHKeUTTjoU5e9a
         MJNILMasCkuQDJfok3RsJkT5O40C3hhruif6Lynkr2NRGL0G5nwT4o3ljUhOR0eqCeBC
         WhZw==
X-Gm-Message-State: AOAM532LRdiOSS0IqrxajOAFz+wyJiTgdMeFms0wM/G8x9dEYjRoIxDF
        eixl3MFfNyJNUmlPEPxo9Yv9oYV+A+g1wuPdj8hhTUhxJBviq/VUAWjMf9iN4/cNua6LReHA4T6
        1CLlS5xSAI2KJ06HCMQxQz8LT8IUIXlXJBa606Uk=
X-Received: by 2002:a05:600c:3d10:: with SMTP id bh16mr7970818wmb.127.1644169183171;
        Sun, 06 Feb 2022 09:39:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNGyI316biye7/WOlhhfjgOL6hxWvuVVlOz2JoSM+EAOV5h0PkLe5T3HK/z9BHSLc2pvUaoA==
X-Received: by 2002:a05:600c:3d10:: with SMTP id bh16mr7970800wmb.127.1644169182958;
        Sun, 06 Feb 2022 09:39:42 -0800 (PST)
Received: from [192.168.0.86] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i6sm7814875wry.33.2022.02.06.09.39.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 09:39:42 -0800 (PST)
Message-ID: <73bad620-97eb-a734-cbc8-6f001d04c18a@canonical.com>
Date:   Sun, 6 Feb 2022 18:39:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 0/4] mfd/power/regulators: dt-bindings: max14577:
 convert to dtschema
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>
References: <20220111174337.223320-1-krzysztof.kozlowski@canonical.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chanwoo Choi <cw00.choi@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111174337.223320-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2022 18:43, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v1
> ================
> 1. MFD: Use absolute path to schemas
> 2. Regulator: mention all allowed properties,
>    additionalProperties=false, add min/max values for voltages and
>    current, don't use patternProperties when not needed.
> 
> Dependencies
> ============
> 1. DTS patch 1/4: nothing depends on it, sending here so Rob's automatic
>    checker won't complain about DTS.
>    I will take it via Samsung SoC tree.
> 
> 2. Final MFD patch (4/4) depends on regulator and power, so the last
>    patches (2+3+4) should go via same tree.
> 
Dear Lee,

This patchset was reviewed and there are no outstanding issues. Could
you pick up patches 2-4 (skipping DTS patch) via MFD tree?

Best regards,
Krzysztof
