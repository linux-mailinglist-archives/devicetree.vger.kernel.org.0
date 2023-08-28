Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F12878AE8A
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 13:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbjH1LN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 07:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjH1LN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 07:13:28 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E5A0CA
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:13:25 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b703a0453fso44965661fa.3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693221204; x=1693826004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CE4FJ6vozQonXv84v8YaWCO1mV/2bqcBxJ5WJOyxvYc=;
        b=Sxri8AUTYAXoQ6hR20GNftPrrCKHOAHi51S+zQ4znzDyqcLuzyNR3NeedjztgNDPMx
         8HPGjYNmoQUXqa8Wpsh0/0+PYNiTPI6Lrbl8ycM5OKT9KIrmj4jabM8dULTDhxwf1ax9
         886dnsxq6y1BUfh+jpKJnmHlgBATXHnmt/UXbYqvSHDFMRofxqm8jKx1g3JAlhKp9TLq
         hfl6+UoUJphdEmEEukOniT5LWts4upBWC6ImI2toydIiKuflA+RQzDYfa5gVWpVwplCA
         TvQvKpjVv3YRlmFsJcFArcv7bsN8w2QDtrQT/IxXgHJc9mjXaeLF/mkrL3T28rZOEGJ3
         CoOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693221204; x=1693826004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CE4FJ6vozQonXv84v8YaWCO1mV/2bqcBxJ5WJOyxvYc=;
        b=k9WiSBkx+CUBl9T6xI2OzLj454Gvor96yL+VXPhqvWwz22DonOmcuHuKIA/XItIiqs
         Sx/fYd6Jgn5fWc4MQ9EdDhcWZ+zhI85JEryGOmWA8jMQp9mpE+Hp1lmbDiionoW6D8pc
         1E/cihD7rFurlmYHXkLSg/rRNibx32oQR7qunyLYhH/xARepWcamv0BlrRQRtoQ2377v
         73GU/fuNkMjMvyBS7Bpdp1m7GE19s7H0oEiSwDAzH06Q+72+IbjocbtHodJTo40HJX3X
         vkNVnIAC/tnHrYsjz1bqsyU1au/GSuI1PqMd6G2g5irTd66DhWGKYquCAcCOCGtGXn8M
         SLWw==
X-Gm-Message-State: AOJu0Yz5g47OwV5BkKFlG+whZ9J1EpuxJhLEtq5PpKUEbloXAq00YITX
        jWMgUwqZda1NSwGNqeidBhiraw==
X-Google-Smtp-Source: AGHT+IGOIAc3n6EulGGyqxa5VBJTfbSOuG9fBQNwyflcdyG9hyHoZ3zg5biteTv5RCr4HFSN3w3JTw==
X-Received: by 2002:a2e:9b14:0:b0:2bc:e2bc:81ff with SMTP id u20-20020a2e9b14000000b002bce2bc81ffmr8954203lji.51.1693221203750;
        Mon, 28 Aug 2023 04:13:23 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id rl11-20020a170907216b00b0099bca8b9a31sm4518877ejb.100.2023.08.28.04.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 04:13:23 -0700 (PDT)
Message-ID: <6baf7e40-22dc-80c3-12e9-6f251f826bcf@linaro.org>
Date:   Mon, 28 Aug 2023 13:13:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: display/panel: Add AUO G156HAN04.0 LVDS
 display
Content-Language: en-US
To:     Elmar Albert <eal.git@mailbox.org>, dri-devel@lists.freedesktop.org
Cc:     Elmar Albert <ealbert@data-modul.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
References: <20230828094943.123676-1-eal.git@mailbox.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828094943.123676-1-eal.git@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 11:49, Elmar Albert wrote:
> From: Elmar Albert <ealbert@data-modul.com>
> 
> Document support for the AUO G156HAN04.0 LVDS display.
> 
> G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
> a TFT LCD panel, a driver circuit, and LED backlight system. The screen
> format is intended to supportthe 16:9 FHD, 1920(H) x 1080(V) screen
> and 16.7M colors (RGB 8-bits ) with LED backlight driving circuit.
> All input signals are LVDS interface compatible.
> 
> G156HAN04.0 is designed for a display unit of notebook style
> personal computer and industrial machine.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

