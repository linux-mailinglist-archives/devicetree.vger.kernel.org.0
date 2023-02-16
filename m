Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5464B6995A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 14:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbjBPNYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 08:24:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbjBPNYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 08:24:43 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C45223C78A
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:24:41 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id eq11so2755193edb.6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=inYR9LenWiRC7ZL1osRQ5uLvoSronXeC63OQQGZ6mXw=;
        b=eQpemlgx8bXiW0mPZg5zRz/re/AHDpEf1PvdeJeQvA6VHp7SmNP0LXupT6oltlG/mB
         TNdiZkKjYl2a7mPaGeQUGsuvyiCW9uM0kYPPrAB6heVynEtrbBDNzV8vUUGy9UJHNTHd
         EECSyny2+P5QjFqtEyu4/gG9OMXcqLKDrXH/xjxFZpgtznxlXUYWoIxPjcfORzeFpchJ
         srpEAaS8sxS/e+Wj1Ni7AEBFjK1fA6gQqjRHj/++CM2ddBMmaA4WfsQpkntt6Zhcad5/
         YoU86nqmG34+pgn5ph04un39SE+AcRr8cWy9DL0ZjVzzpfPmmAjO2BARm78LNpEyxA4o
         A0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=inYR9LenWiRC7ZL1osRQ5uLvoSronXeC63OQQGZ6mXw=;
        b=zsW6e20MSprFE6AUKmAgI1/BE1HBgkHBj0zibQF68wOPJAjuBO0WfFsBTLJrw22rSd
         GNP1fpf87R2+zrG9rpb4/HP7MTN/PMCVrxpG5HqvwK7wZByNoE+ZVAcXx8D4jvfCZ4Jh
         Z10ofsBKpYqxbEjA/7ae0iO4JB6tMK7HR1OfzQZDefwuZXRiOI6NdP8Doqtwo/8nrVQu
         DQaB/zuZNfQTqPB749ukfzm3qw5SngtRltduW9P3twrdzCmHitlauyDi8eoS/h/OBYJP
         tni94kxods0yoyihGNBimQ0FHJRi81v8+xrMjM2iSYjHOaIolk+xGYJFlgJInz9HmTUM
         W3Sg==
X-Gm-Message-State: AO0yUKV6YRCDMVrRetc4/1QX+ceyyKEL6SukKyrSsuKo/ONLFMwJjZOx
        3GmWMK/6jEhbmt+EVOuEdIa/UQ==
X-Google-Smtp-Source: AK7set9UdfmMefmjjDttGDFMMjgpoeHzKrI6HY++OKGZBr6ubR3SO+RsJl+6PB7WJ36NuNdjWrj2yQ==
X-Received: by 2002:a05:6402:180f:b0:4ac:be53:1789 with SMTP id g15-20020a056402180f00b004acbe531789mr5637904edy.40.1676553880285;
        Thu, 16 Feb 2023 05:24:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k2-20020a50ce42000000b004acbecf091esm866491edj.17.2023.02.16.05.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 05:24:39 -0800 (PST)
Message-ID: <b6f55c9d-89b4-5b26-1042-c4a047e32cc1@linaro.org>
Date:   Thu, 16 Feb 2023 14:24:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2][next] dt-bindings: power: supply: Revise Richtek
 RT9467 compatible name
To:     ChiaEn Wu <chiaen_wu@richtek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sre@kernel.org
Cc:     cy_huang@richtek.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        peterwu.pub@gmail.com
References: <b72052c0bdfb209d5583ce0741686e8a2a9e8dd2.1676573862.git.chiaen_wu@richtek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b72052c0bdfb209d5583ce0741686e8a2a9e8dd2.1676573862.git.chiaen_wu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 12:17, ChiaEn Wu wrote:
> Revise RT9467 compatible name from "richtek,rt9467-charger" to
> "richtek,rt9467" because it has to match the "compatible name" in
> the source code.
> 
> Fixes: e1b4620fb503 ("dt-bindings: power: supply: Add Richtek RT9467 battery charger")
> Signed-off-by: ChiaEn Wu <chiaen_wu@richtek.com>
> ---
> v2:
> - Add more description about this change in the commit message.
> - Rename "richtek,rt9467-charger.yaml" to "richtek,rt9467.yaml".
> - Rename "$id" as above.

Thanks for the change, but the patch was not created correctly - there
is no indication of rename thus it's very difficult to review. Please
use correct patch-generation arguments. For git, "git format-patch"
should be enough. If it is not enough, then play with -M argument. If it
is still wrong, play with -M and -B.

If you use other tools - investigate your tools to create proper rename
diff.

Best regards,
Krzysztof

