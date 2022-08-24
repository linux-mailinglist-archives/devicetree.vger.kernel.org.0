Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06FAE59FB6D
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 15:32:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237523AbiHXNc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 09:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237166AbiHXNc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 09:32:26 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2E874CEF
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:32:24 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id l8so6488431lfc.12
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=IeN3t5MN61x1tMgBpKVtQeJUWpZTemmViHvANrFvLq0=;
        b=hxACKwBHRoGmn5mdghZgJS2VvpDhRTyEs9raC6ncd2mYQAxSOx7uP3sZPWcDs9/c/b
         giNhqxT1G4YBeS2LZS1yh4WjyfZTGR0xJsiAq0LrP1xfY6O9xTqf9IW2yOM+ikIzB54j
         kRNkVOrXWBD9QsfFgod//gGhCmcrb+f+cMd6AYHJs4wXPwVPa03MqzJ1NK7ZWillT9Gj
         wvlZlzXprHT5hhuqC/1t3xNjRcdmSnW8BO9wcoyM1XaFQvSQXJ0GSpI7prd3sEOhH2e4
         ee/Ihd2jtDWqwbiRdUPQxW8Mz+xgJfAjNZIcv3Upa7jFlRnDOtoP2cjfvLqZ+rKcS8vY
         m9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=IeN3t5MN61x1tMgBpKVtQeJUWpZTemmViHvANrFvLq0=;
        b=XH3JgZaXsyKbM+diIqnVd9ukAqrXTfjyLDlc3Ax+8V5npoHLujFDVWtifjbJUFbLks
         EEsAkT3e1UUGg9oF7QYGmd747/BmbENR3zRSYBu+VR+A0ByhtgqcvUs7pFfos/rV+5s7
         T8QooovcxSkXJFORS0vSprwmx3EX3qJWKlCzodsiOlwuN556rIykAXx7iHiGUreQRIIW
         JJMITf5W5iozVu5ICK/6i7Q+w0E073nhPY6OQZiWsUboQQMJqKQy4rn3TJ5wgkGU66/a
         RU2RJ0+syX9g4Xy1s0dFYEU0V99mII/VSBHU+bYH59ymF0vcWfPsfT2xZw/HIGYQWsax
         Md6Q==
X-Gm-Message-State: ACgBeo0pHIUlYqHXjQDGpOouIjNsfvskm5ZTKIB4kCqCThPtyZZCPmN0
        R03s9BWInPjO3IrQukJ0TfP/aQ==
X-Google-Smtp-Source: AA6agR4OVoxt0XeiCWSMqiauS9Q2+s3634AiAakRGtl2E+frgZcTTteja3pcOyoQj43MeNC5TZKZDA==
X-Received: by 2002:a05:6512:1324:b0:490:c79b:7418 with SMTP id x36-20020a056512132400b00490c79b7418mr9838858lfu.404.1661347941594;
        Wed, 24 Aug 2022 06:32:21 -0700 (PDT)
Received: from [10.243.4.185] (107-129-159-217.sta.estpak.ee. [217.159.129.107])
        by smtp.gmail.com with ESMTPSA id 15-20020ac25f4f000000b0048b0ef93248sm3030966lfz.62.2022.08.24.06.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 06:32:21 -0700 (PDT)
Message-ID: <f492ded6-16a8-6c15-2826-6ce2f784dffe@linaro.org>
Date:   Wed, 24 Aug 2022 16:32:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/4] dt-bindings: display: Document Jadard JD9365DA-H3 DSI
 panel
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20220823184242.3554472-1-jagan@edgeble.ai>
 <20220823184242.3554472-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823184242.3554472-3-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 21:42, Jagan Teki wrote:
> Jadard JD9365DA-H3 is WUXGA MIPI DSI panel and it support TFT
> dot matrix LCD with 800RGBx1280 dots at maximum.
> 
> Document it.
> 
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(but please wait a bit for Robs check to run, although recently there
were some Patchwork hickups)


Best regards,
Krzysztof
