Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E07DF6460CD
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 18:57:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbiLGR5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 12:57:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiLGR5p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 12:57:45 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9ADEF0A
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 09:57:40 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id x6so21771517lji.10
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 09:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AF1O5/EVK+C+aW3v0W6bqwYPGmpIyoxTslLZPgMEYDs=;
        b=SjvPOxV85zKqCW/waOj5GKaDR4pTsAjzxpAxakG3QVZbxhRWK2333PcCmE5ltejXEz
         AHpU6vWWw4vfh91F+goytSaQzLpLEOdGjbtCDCZf8LGHAQXbHCKvNPkLN6w7GZHPjDIN
         7b60eo62EYV7Do1pLZYJ0KyDIsiDylZ49tdxoWfBqfHEvAJLf82W24skR94/lWQs6BYI
         KazA4SyFN/ACT8zQYsfu2LfuLpueKoHkcBvVnVGFq9+RRypsj2HNQPc3mFPeMslrRbs+
         ZfTGegIZQmPu6dWlwMjNTDnWCVCsFG4XYLqUiikhh5U/xDSHqppnyCBFxhyxQuxWHxXq
         FH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AF1O5/EVK+C+aW3v0W6bqwYPGmpIyoxTslLZPgMEYDs=;
        b=R5e6bLhzZ4ZPgdK0keYFN8vlwju6NUAK/t3zcfRI9TChP1wsywgdhEt4c6ET1ZzBZq
         oVG57rvcdOZX5ax6bSk6AZMjbtCweT+LXj1Gn8WDz+Fm8CiPpnbhDf8T0m7zqzN6ghQt
         y349XK3vWJ76jl5TDVnKR+wn//E9D0lkWdka6ogtcXkFiVI+E5a6ad0VXvkqBctUMweM
         5pHvf4aDhBWydKhZOeKx6auwBblDAUKfU7Xad8c/sIAopMd48aSPzDalxXfpMVXGn5eB
         MX+H9Qo3VQmSOW62MITAN7y8hiIOvI4/KtAmfksRxE/udTRP0A6+XMht6UDdZdri9MUo
         kFfA==
X-Gm-Message-State: ANoB5plrBV46oC6elQlaUpVo6knEusy6LXn54mw2zpPS2n1MVXRAER3r
        68pHXACjY4YM7BYb3ME5yWn4XQ==
X-Google-Smtp-Source: AA0mqf4DLjUdcCsEq44xXCZgbsAj6PjXPpF02zKV0ELS6OooLrky7XGCVpi39WLGW0DB4NNiG5ElQQ==
X-Received: by 2002:a2e:894b:0:b0:27a:1aa4:f24 with SMTP id b11-20020a2e894b000000b0027a1aa40f24mr1094514ljk.301.1670435858807;
        Wed, 07 Dec 2022 09:57:38 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o22-20020a05651205d600b00497aa190523sm2938489lfo.248.2022.12.07.09.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 09:57:38 -0800 (PST)
Message-ID: <185a83f7-d575-245c-8d11-1de7c8064a7f@linaro.org>
Date:   Wed, 7 Dec 2022 18:57:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 2/3] dt-bindings: mfd: Add compatible string for UART
 support
Content-Language: en-US
To:     Mark Hasemeyer <markhas@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Raul Rangel <rrangel@chromium.org>,
        Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
References: <20221207104005.v10.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
 <20221207104005.v10.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221207104005.v10.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2022 18:40, Mark Hasemeyer wrote:
> From: Bhanu Prakash Maiya <bhanumaiya@chromium.org>
> 
> Add a compatible string to support the UART implementation of the cros
> ec interface. The driver does not support the reg and interrupt
> properties, so exempt them from being required for UART compatible nodes.
> 
> Signed-off-by: Bhanu Prakash Maiya <bhanumaiya@chromium.org>
> Co-developed-by: Mark Hasemeyer <markhas@chromium.org>
> Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Use subject prefixes matching the subsystem (git log --oneline -- ...)
and device. Currently it looks like you change ENTIRE MFD subsystem.

> ---
> 
> Changes in v10:
> - No change
> 

Best regards,
Krzysztof

