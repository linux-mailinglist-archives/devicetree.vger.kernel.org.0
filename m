Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C37A2629498
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:42:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237837AbiKOJmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:42:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237850AbiKOJmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:42:20 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7887322B06
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:42:15 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id c25so16778469ljr.8
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pMzKXjGsVMugCAytOxa8extRrpSkEtM+HWq+Z7rl8oI=;
        b=v1k/Tib4SpE9+bH8z1OIQgCuvoTL/7XEAPTxAepEpzFyJIWwCbMtulyGu2NI3ngMW7
         r8bQxXW30XsDuxK9Zr5xqqSHyAFUQmLn26SngozDdBfBWVmNghj7lEf1XJCipGfNqLCb
         xwtst9LgS997HnGpNEwdvpHJb9d9bPpseRQEwB5LuEywjMQDbpRSxa0KDFh6Snsp/5/f
         ofhingFVVlUqzk9wkfVrDMYqakKyJ01NgDfiJ/sqXunc7Znya8RBuix1WH6fbu/EEoXG
         9s4cMXeXp0owyE1a9v/h7c8uNosMRtqmGPoB4ArgsmutJAVyFU9VKQus2fmkfAwdY/+5
         U3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pMzKXjGsVMugCAytOxa8extRrpSkEtM+HWq+Z7rl8oI=;
        b=p5N4DnX9LQjJNdDaWQyNxwlVBnGJK000isUumO5+OSd/Fu5MwIBJUpeVITqb7HD2ej
         hf3KPNekzXpW8LTQZd9FNuA13TPpF0KE5I/g55fqp52srqFraTCxeSuiaO0YJNvn0pJi
         5HzDiQRLgGHoa1LS2k/yqmO2sMzDWso60qhU792Lm/zU2jBTNRARfM9SdZ2Mv/QPWOI6
         s3Q2VUQErNRyC1j/uID5ZHRGLQ979SUTjywZOV1Fitlm8FOE9fSKehDd+YMNWGJZxpc+
         3CKOTOZlK9dDCtvQes8uPc4aqTNiTGj3ZoCiq2AXhi/8kKXgmR40ledPVqnSlj2fJ6US
         WexA==
X-Gm-Message-State: ANoB5pm4qqs1Bxi/B0eTKsEvqYJAFMcoZkXpwtwnMpL3O2Qlq2aAtVOU
        dPGtJTCCuYhP7boI+WiqIcwvyQ==
X-Google-Smtp-Source: AA0mqf42bPJe4yOYo4MLR41ZxVfwGTa0roWNela7uuCIY8LNKB6Bovwl4shixK+gcLYgDzk/m43Fdw==
X-Received: by 2002:a2e:9048:0:b0:278:a696:2781 with SMTP id n8-20020a2e9048000000b00278a6962781mr5291013ljg.401.1668505334238;
        Tue, 15 Nov 2022 01:42:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l10-20020a056512110a00b004979e231fafsm2141669lfg.38.2022.11.15.01.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:42:13 -0800 (PST)
Message-ID: <37cd1ee9-7633-09c4-8229-4c8ba7b0d056@linaro.org>
Date:   Tue, 15 Nov 2022 10:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 02/15] dt-bindings: watchdog: mtk-wdt: Add MT8365 SoC
 bindings
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-3-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-3-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> Add binding documentation for the MT8365 SoC.

Drop second, redundant "bindings" from subject.

With that:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>



Best regards,
Krzysztof

