Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 263725B6A81
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 11:17:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231143AbiIMJRs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 05:17:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231435AbiIMJRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 05:17:45 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 720B963AF
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:17:44 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id z14-20020a05600c0a0e00b003b486df42a3so3954558wmp.2
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ptSq3Svo4+b1TidsJn6ZUIUmysoM5J9grskyUr7sykc=;
        b=GVxo614YVRjtNRdN1Z5AIMPDoc41sG+XHVm2ohsWehhhlH9B6kZTrr54Zx+oyZTXAn
         kh5cpA449d5kCYebink/7iv03k82x5Z9e2QVNKNzPh826A7kdH4cetXLRDIazzuO3xRC
         CVAUUofEv/QDc5C4k/SsZwg6Imt35rSKiLp4YOQfORGCGsnJiecPxuDydqv9SaMYtrdp
         YrYwI9yGI8/JaVSfLYUxs5J7/XLKzZPv4SjkrghBp4z7ZsNigyedwy9Y5VAo+Okhoc/1
         6ieFTg9xjLfAPxmAawThozlh9d/B3CPBvVU7R61Qu5pdjdujfHd96q1KGc2b17S/XBhv
         UNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ptSq3Svo4+b1TidsJn6ZUIUmysoM5J9grskyUr7sykc=;
        b=mcH3OYA8auBRtYhYDK450lLyx8yGDihNLDKNtTapjz+jGmpZ/KfdTAsIqtoFMmUX87
         cPELuXlp/wY8o2l/5Lieksg8+N+r9f4Lp7nJdtJIOsfOrVP0RyrANNq2WTPxO/owzdC4
         WFvHJkoHWjEsst/u+XBTtJYiEXu3Dl9ZAPYlVN5Sb6KMxU9NtgnsCXsXEbc5iqBI9rSt
         x2tVbTdJOVU2n8OhcxKRnMS9xjVrFzPJNbuO335P8lUk45b/nJHb4kA6JU4VYwIQzVf+
         o/7nGPSsYd+wL2vN0puCETLghFHoAuAJOBqKOBVk8EyB5cRVxbxekJNqOI8JKyuTPvYc
         YqFg==
X-Gm-Message-State: ACgBeo3mK0UOHPAjp++9jozlACwWXbJaF9x9izffDAiUbW70BKwTVoKR
        IbUWrGAWV1DQtRL9zgPxbYrSDMVn+NmrIso+
X-Google-Smtp-Source: AA6agR4c8Xn/5MYNeO9EkH/19VCi9VcV6o/f975UuiiJoTdV184nE0y3Ae6RMZwogomDh2xyW8xXqQ==
X-Received: by 2002:a05:600c:35cc:b0:3a6:f08:9b1 with SMTP id r12-20020a05600c35cc00b003a60f0809b1mr1613421wmq.22.1663060663115;
        Tue, 13 Sep 2022 02:17:43 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id l2-20020a05600c4f0200b003b4924493bfsm5764638wmq.9.2022.09.13.02.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:17:42 -0700 (PDT)
Message-ID: <fe13c70b-8712-eef2-0342-782802027edc@linaro.org>
Date:   Tue, 13 Sep 2022 11:17:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 0/3] omap-gpmc wait pin additions
Content-Language: en-US
To:     "B. Niedermayr" <benedikt.niedermayr@siemens.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org
Cc:     rogerq@kernel.org, tony@atomide.com, robh+dt@kernel.org
References: <20220906124747.1767318-1-benedikt.niedermayr@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906124747.1767318-1-benedikt.niedermayr@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 14:47, B. Niedermayr wrote:
> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> 
> Currently it is not possible to configure the WAIT0PINPOLARITY and 
> WAIT1PINPOLARITY bits of the GPMC_CONFIG register directly via 
> device tree properties.
> 

Just a disclaimer:
This waits in my inbox for a week, it's not ignored. Unfortunately it
will need to wait a bit more, due to traveling / ELCE. I see some
discussion going, though.

Best regards,
Krzysztof
