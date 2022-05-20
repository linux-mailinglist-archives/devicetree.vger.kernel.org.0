Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0C9152EE31
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 16:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350292AbiETOcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 10:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350288AbiETOcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 10:32:03 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E0495DA36
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 07:32:02 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id u30so14626936lfm.9
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 07:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1e7jPwf06MLjtjAbeVKFlQLZUr5i8ZHbG6ieKA2ys74=;
        b=XEhgzB6MEKIt6YkGR1w9vLtnIuqx+E9V2ESEiuifE78bW1YsyqxYb8t/xME8Z7oU6P
         7GiXbUGcbPvRqylUmYF0Zx+rMKFzG6q9TkyhOrq/M/ccSr8oHrWjrx9ag9eCAhFTulsY
         nAC8BaCXq1SPB4KxZr917mZ6UkkcokMFZW41ndV46sBYQkmW8UzVgorVzyVOY6XCKzpQ
         PvF3xCxRqo5XsdPsBdkzvdSWMBVLSyqRb0h24sOnKI15Q1j7jdVjJTIzDt1gM7uwqvTB
         6jJx76Ef7vuP2gqgUyFtkf+2CyWQsKe5tdLvip6EkZqjrWb1DFBGbkQnxHrO+S40TSJ4
         w6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1e7jPwf06MLjtjAbeVKFlQLZUr5i8ZHbG6ieKA2ys74=;
        b=iE1ZHhZgcCNZDako9W5iot1jRtbTuDnIVMIJKv+AIXYyYYOIwThEm7BOZNGoSO03JK
         ZWAfK0IxaxDFTk9qxCTPlWMlBr0GnKkYQHmUU1sbGm9Yk/LeWz/JMsD6vZaVoOZeJlWQ
         lzXUP8i1Q5dkKdBAonxJM/asYFisfo6nDY7ZLidn0JDiGe/jUaNsVRPeTVDU/pAm/R8m
         Jd2jIsuOzyUZLOM9aSRhR1VI6BSddBzVExJZ2ClHrJyhBdRTTxfxfwCwxSmsGBEFyODE
         FhE1/fLrcyVPSj4IHWeCb3MSVoLV0jdfGpBZzpzyG3KdRZtoND2aLTsH/5ZwWG9//SRS
         Sh5w==
X-Gm-Message-State: AOAM532GC80PdaI6wMFHvwX2wqpHvavuwZy8lN/pmfKgVFbrg/rA8erA
        s8cz8tWzMWGUtiBYEgmYTfchsQ==
X-Google-Smtp-Source: ABdhPJz2AkXMPrdhC1usxVcp2s2G46txCDMyED1xk9dOv7Bzy2Rf5n4syvkdiHMeIcrdONGwL6ovSw==
X-Received: by 2002:a05:6512:6c2:b0:46b:9578:7c63 with SMTP id u2-20020a05651206c200b0046b95787c63mr7549195lff.204.1653057120425;
        Fri, 20 May 2022 07:32:00 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o5-20020a2e9445000000b00253da399907sm333712ljh.114.2022.05.20.07.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 07:31:59 -0700 (PDT)
Message-ID: <cbdf5ce8-13ff-e80c-34bc-2c68d3e3d4f8@linaro.org>
Date:   Fri, 20 May 2022 16:31:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2] ARM: dts: aspeed: Adding Jabil Rubypass BMC
Content-Language: en-US
To:     David Wang <David_Wang6097@jabil.com>,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Cc:     edward_chen@jabil.com
References: <20220520115148.3589628-1-David_Wang6097@jabil.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520115148.3589628-1-David_Wang6097@jabil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 13:51, David Wang wrote:
> The initial introduction of the jabil server with AST2600 BMC SoC.
> 
> Signed-off-by: David Wang <David_Wang6097@jabil.com>

Why do you send a v2 second time?

Please include always changelogs under '---'.

Best regards,
Krzysztof
