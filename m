Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E869D59E5EE
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233628AbiHWPXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244835AbiHWPQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:16:26 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A0BB1D3365
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:34:55 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id l23so2044642lji.1
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=mubN9uvQYvqaelFvUGOLV/uSSqf/r8cU2dBz7KX7Wps=;
        b=qFWY6NjWAV4o1T6Z/bUOiafOxEuFlqlAGXySAToBX9Mbxmug4DHCSs6f8pPo1YwUhb
         MoNPByYuW156Ep3vctvZSpFDsu9WD+QLm1N93ALxqCj5Yjzp63bzUVUIXiOzJcC84mB6
         4jEJHDZ8hYbHIIuPWzsEGKkyAK/PAD8D3c4A1aZ/eyzzwDxrtIyW+ghmZLD2RUu+oD4t
         18TZ9J6KuRs0Xkv/mjFArnK/ChQOTiElidjXtyJq6m5plbIWx95S0RjeXGoWspnGt39R
         PWntb1oLjpgkbrxoOIiGOPlqc8v7bcYckU0za5HedCvk3oO0LTPB16jrKd5yykDxbj37
         kZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=mubN9uvQYvqaelFvUGOLV/uSSqf/r8cU2dBz7KX7Wps=;
        b=nop/iooA1oU5n5bSgzee/JqYcoYRGFz1iweCw80hbbqyHL+U2byWNMP40n5q2f5/E2
         cNJ/hu2HT7cBa6hEt1iwabX8PzpOaQffMZCKJcJbD+RdsgoiFYwg1/0zKLv4ov3qUwEM
         bwgpmtPIyPvvAsTTMZYWtZqh+BkWHFkJPSNXEnA9Bhgy1B1GTpHrUyf5JzgsFidvjm7p
         OkvO9gfPp44oxTT/O3rl2yMH0YwEZe+12lxFe9cTp7tCMEbLVo15eiNxkC2QfWHKIA6i
         qWHHGln8bYF5YLpx1ePt7HNe97J6qBBxBEdGtN1LvZJ7dVImHgXC0ieegTVQO7CTKAOy
         S8ag==
X-Gm-Message-State: ACgBeo1OnPkHcBSMDSodA+aZFYoDDu1Wlzfa2GhO5MHnMpsG/+//RpXJ
        Gn5Tbqq24ADFoxFEBZUwxPI7tQ==
X-Google-Smtp-Source: AA6agR48VHsnB0Zwbx/ckxFpRxJam2Py1a7/AX9eB8O2ot2NL9+QtniRGSAw498OpIqHMw/Tim8aGQ==
X-Received: by 2002:a2e:5cd:0:b0:261:a774:36d0 with SMTP id 196-20020a2e05cd000000b00261a77436d0mr7050422ljf.312.1661250811356;
        Tue, 23 Aug 2022 03:33:31 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id n26-20020a05651203fa00b00492e6642937sm900014lfq.200.2022.08.23.03.33.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 03:33:30 -0700 (PDT)
Message-ID: <145e872c-e7fc-a1f9-edb2-fad507d84018@linaro.org>
Date:   Tue, 23 Aug 2022 13:33:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCHv2 resend] dt-bindings: leds: Expand LED_COLOR_ID
 definitions
Content-Language: en-US
To:     Olliver Schinagl <oliver@schinagl.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Daniel Mack <daniel@zonque.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Oleh Kravchenko <oleg@kaa.org.ua>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Simon Shields <simon@lineageos.org>,
        Olliver Schinagl <oliver+list@schinagl.nl>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220819152904.433514-1-oliver@schinagl.nl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819152904.433514-1-oliver@schinagl.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2022 18:29, Olliver Schinagl wrote:
> In commit 853a78a7d6c7 (dt-bindings: leds: Add LED_COLOR_ID definitions,
> Sun Jun 9 20:19:04 2019 +0200) the most basic color definitions where
> added. However, there's a little more very common LED colors.
> 
> While the documentation states 'add what is missing', engineers tend to
> be lazy and will just use what currently exists. So this patch will take
> (a) list from online retailers [0], [1], [2] and use the common LED colors
> from there, this being reasonable as this is what is currently available to
> purchase.
> 
> Note, that LIME seems to be the modern take to 'Yellow-green' or
> 'Yellowish-green' from some older datasheets.
> 
> [0]: https://www.digikey.com/en/products/filter/led-lighting-color/125
> [1]: https://eu.mouser.com/c/optoelectronics/led-lighting/led-emitters/standard-leds-smd
> [2]: https://nl.farnell.com/en-NL/c/optoelectronics-displays/led-products/standard-single-colour-leds-under-75ma
> 
> Signed-off-by: Olliver Schinagl <oliver@schinagl.nl>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
