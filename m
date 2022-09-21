Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B17A05BFA95
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 11:17:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231501AbiIUJRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 05:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231564AbiIUJQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 05:16:41 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4CF8F95D
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:16:13 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id s10so6200316ljp.5
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IT6JEcqJI3DFzEaVJ8dSJBsLw90K5SbYBxlXjJR590E=;
        b=kMnkMAlTVSRXaxa1CyAz/HMUDwRyD9U4BpEaaKikw6N4NJ1iFTDxrhjw7uboupkrL0
         zLAqxDJlYkGjgglZI03IiCsv0IyUxo7phFVT84BzvEn7iKOn074+lxXiUkazAat0oow/
         EONLl5dEsYjdj60KoZc/QV9RxDwW3/iLExNf5b8hecUY6iubCGG2mnYeTSZXSs0uastY
         cR37koVvUkLR0gya6DMODh5PiGYFox50OEWzy+cmdeK2jmK6kBewt2aOucXg21o+NfBR
         VFKoLyZvhZH9dqwmMF6jAT3sdXE2rBpN3iz0dl+WvfECQmYyjw98SGdzyPedHFawH7Xk
         C/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IT6JEcqJI3DFzEaVJ8dSJBsLw90K5SbYBxlXjJR590E=;
        b=LHOxZsxQoHSSGaB+I203cKXAa/xeyB4xgboUdBT418yhfmiegvGYfGaNtnm8aNsRP0
         y1IssqDl8VbiX+y5ShJjZBkNb+M1WgzGkQNuDhtwpXYSO5HAIytQV/dfirW+EvkQKxQk
         fjQ8l1595BFhfC9xjwKWBe+6/ZWvtjtM9AxPa7AhzXDy9NOUIfaIIU/noP183CRqzYuS
         +WQxt583ZXw84PNdxYbJoXrlskAN85+byIxDll1uGFBNff14DOqcnFHhA1jeoc7zkJlj
         H5AuYe4VjkzW73sdvixAk3uFMy3GkxaEhPvQu7uxbepg953C83JQ4u3GFktAI0AJo1GL
         iG3w==
X-Gm-Message-State: ACrzQf2WggMtbs0msrLcixIBvLOkWAFeZRzXdouBjPnD2UOyCgjaI4Mo
        kSWme2VBvhPdCLba+4QzYJ7rVw==
X-Google-Smtp-Source: AMsMyM6fQd5NKg7ykrHov7EGyXfZT0dNc0fXfDekipf+Hm9POrmEODvkwmJcIv4qRiu8KBlM0SsfVQ==
X-Received: by 2002:a2e:bd12:0:b0:264:7373:3668 with SMTP id n18-20020a2ebd12000000b0026473733668mr7903000ljq.18.1663751766971;
        Wed, 21 Sep 2022 02:16:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i26-20020a056512007a00b00498f570aef2sm344276lfo.209.2022.09.21.02.16.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 02:16:06 -0700 (PDT)
Message-ID: <c5f1b3dc-e407-a7b9-f55b-0683b0e63a62@linaro.org>
Date:   Wed, 21 Sep 2022 11:16:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 0/1] arm64: dts: mediatek: mt8183: disable thermal
 zones without trips.
Content-Language: en-US
To:     Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        daniel.lezcano@linaro.org
References: <20220921-mt8183-disables-thermal-zones-up-v2-0-4a31a0b19e1e@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921-mt8183-disables-thermal-zones-up-v2-0-4a31a0b19e1e@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 11:05, Amjad Ouled-Ameur wrote:
> Thermal zones without trip point are not registered by thermal core.
> 
> tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose

No need for cover letter for single patch.

Best regards,
Krzysztof

