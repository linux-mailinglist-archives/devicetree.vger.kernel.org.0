Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED8F6679F43
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 17:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233638AbjAXQ4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 11:56:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232991AbjAXQ4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 11:56:20 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D6622015
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 08:56:17 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so13301142wmb.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 08:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LSf9EDZbCk9ILTR8VX45RnJZiyt2oS/z0sFs3inXgHo=;
        b=ic5anKfbZlTHVJvTprKR69JrIKaGO9+bAEoTHZQtwfHzBVUJgDs18Ubfg33NMigsdt
         UV+m75pcKtNFKf2ZazEYxHzHjBoLgyZ9CmhgPMvLo2lA/mxL/kGx176cV/8dCW50w+Lb
         DSbyI0w4/1yXbD/XvV/FyywO1m1TFPPEPQ7cUFWnOxnLJceeQMBWlfkE10z3jzRqBiU3
         P8gUwo0rq1RmQi5MEmuwrxpUOssHdYnpJimOAD+IBYe9SiNdMn9OoQoAmhpUgJJkAEQy
         eUU4IM7OnaGsv+AORzOAwgK4lQS4dXf3xQooFwfD0YY0Rs22P02vf83hNEkBicWPZ1eB
         WhEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LSf9EDZbCk9ILTR8VX45RnJZiyt2oS/z0sFs3inXgHo=;
        b=veVxVAjZBPP/k7d+oI8XQcnOBGkCJIAvlGJAVxmllyZn2ehiXR36QUpvYTtmbta0h8
         CivntczOQ+y4BAED5pAlQKEKCAwZfQ1QrGyjXpSIAJGhXBUH2eHplg89W5mEJFoWTem7
         CfBLA5a/av0leFj3RSjsyalnmfHiSN9nNGMT9iY+hVgrWmK4jNDXaq07O1IYX6g+NCyx
         li6eohqe4c6deXwvQJJSu3M1yvULTD20i2oWpXTVLD3f6537AJqMbXNkuWk4T7K84uIR
         1uFWIokcc89rEAfFYwvb8fXyU55Zybx1R/BhrdjpwL2bX2hUmm5DOZfr86M3Atz9e8jT
         V03Q==
X-Gm-Message-State: AFqh2korPTd7MbDweHTSM6ysXnIDF9RLoko1QVNskbV83ITDBaE6HFzj
        MRx5CJJq9DwxkQtMEFCARykQYg==
X-Google-Smtp-Source: AMrXdXsgji39wGRQLP97ZZxCisKBfhuTXsSUWSzlQpQyc7a9xrC512LRIzndKfV4HjGtaUphsxfi5Q==
X-Received: by 2002:a05:600c:202:b0:3da:f80d:7230 with SMTP id 2-20020a05600c020200b003daf80d7230mr28444666wmi.8.1674579375802;
        Tue, 24 Jan 2023 08:56:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l7-20020a05600c1d0700b003d990372dd5sm15695314wms.20.2023.01.24.08.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 08:56:15 -0800 (PST)
Message-ID: <3f62e91b-b132-aaf0-a6f4-87191a49448d@linaro.org>
Date:   Tue, 24 Jan 2023 17:56:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 0/5 v7] input: pwm-beeper: add feature to set volume
Content-Language: en-US
To:     Manuel Traut <manuel.traut@mt.com>, linux-kernel@vger.kernel.org
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        krzk@kernel.org
References: <Y9AIq3cSNzI9T/dU@mt.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y9AIq3cSNzI9T/dU@mt.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 17:34, Manuel Traut wrote:
> This series implements volume control for the pwm-beeper via sysfs.
> 
> The first patch changes the devicetree documentation from txt to yaml.

Your emails are:
1. Not properly threaded which messes inboxes.
2. Not cc-ed proper people (just use get_maintainers.pl).


Best regards,
Krzysztof

