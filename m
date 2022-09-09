Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65CAC5B33B5
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbiIIJX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232249AbiIIJXj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:23:39 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D0B136CCB
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:22:42 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a8so1632503lff.13
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KGUotyk0+3mB90b6qE0KMVHCCytV9D9kNWTKQrpG1k8=;
        b=LqIZ0l30YbyTsjxMZ8GGEWCMlOFYD0gzwDwqsaxrCH44HUvuznp/BNnP3DGoqNrsQq
         o/Dyxu+B01yLZJblkL3jVEutYom8BWB9vlyWttCJ6yGZmbzet8ozB9F7976ZhQES9osq
         FMR0z5z97WPEsZiv9wZ8qUvRiCyo+060FJQNcZrj9Z2oS+IbNc86i0BHA6lDNfGKbHo5
         /Aq+TDqMXrfIqPmxWTMlRkChxoYTkWhwVKT5SsREnmW1Imx94v8P72P7MWTUTx79T3bl
         lLkcf608A3bR20kiS2OB48B1oOBIVq2ihiIKdI0svhpxEdsGT9l4o9mtgkKMC8PonNoW
         qkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KGUotyk0+3mB90b6qE0KMVHCCytV9D9kNWTKQrpG1k8=;
        b=kLmwbqXw68Eo3X/pB454q4w9lDTgXAB9z7uzsGbG0T7H8eA1UrCiYpprzuz+b2rfPe
         YLIcVkR7135jJzVXFUbUVq/na32Qyn+K0GonLqviZyHFwaH0AjB+uUjT2KT0K1OAAF3E
         I3Q0P0QlKDwcCNUZ0rCvIHH/AzOufkLZEp+3QIBH4fVMZ3rsZcki/ZxsME4udF1l5W1u
         jJEI4CSWkit0nbJqPdbboqeR7/qf+1VwT1IYbkmozeNOOQULdSIR3uRALV6J3SajwEgS
         m4g83xcNhOc0lCs2jQi9pUnb55cC3ZcW0mFGHgGm2h+oEwTup5ybfOtTqwMNxecRpaIe
         kNJA==
X-Gm-Message-State: ACgBeo0NSKBQOeU19bz7PkCWKxskkES0GRzR3uIrvvPlr2iDVwgJQzwK
        8URcL2wHSL3FBxe0qydFqRhGWQ==
X-Google-Smtp-Source: AA6agR6PtvePLlFa8morK6nEKwrtTUgq18iH8IUuZvZrP2tC5bDa9yjdx9DuJOlxYOZaFY5oQSBgcA==
X-Received: by 2002:a19:491e:0:b0:498:f63a:26a8 with SMTP id w30-20020a19491e000000b00498f63a26a8mr1047944lfa.400.1662715330295;
        Fri, 09 Sep 2022 02:22:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t10-20020a05651c204a00b00261eb75fa5dsm3929ljo.41.2022.09.09.02.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:22:09 -0700 (PDT)
Message-ID: <5621190b-3a1f-b32f-b742-e95b8922bc05@linaro.org>
Date:   Fri, 9 Sep 2022 11:22:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: watchdog: renesas-wdt: Add r8a779g0 support
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc:     linux-watchdog@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, Thanh Quan <thanh.quan.xn@renesas.com>
References: <e3a246be066d5e9c2231285bc1488fc12866cf5d.1662714387.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e3a246be066d5e9c2231285bc1488fc12866cf5d.1662714387.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 11:08, Geert Uytterhoeven wrote:
> From: Thanh Quan <thanh.quan.xn@renesas.com>
> 
> Document support for the Watchdog Timer (WDT) Controller in the Renesas
> R-Car V4H (R8A779G0) SoC.
> 
> Signed-off-by: Thanh Quan <thanh.quan.xn@renesas.com>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
