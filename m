Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99E806BC6A3
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbjCPHMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbjCPHMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:12:38 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 470C0AA27C
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:12:05 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id o12so3662680edb.9
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678950714;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZtxU95nYVEk8sStgeSy9yEeBrcfk6N255DU39MC/aKk=;
        b=CpJmtjGd2kG3fVOdpLjW7fo/V2ebgT1rdVO3EDUqUmW3Ca2/6E2++mJseCWq1oEVV5
         6gnIFvsXA0t8j2Bsij1L1SDoTavZAHOpQgoLt6Zd7HcAAveswsy8vNn2NKAcNv4NM/Yn
         2J3eFaMiMWdD1XgBQBZK1J+L50F16JE8STG76lEx3in4zStZBkKH+38FzCIZt1fjZHlI
         5c1AfO/HMAVKqLKDxW+iZnwjgE4CYAg6wftaP22WIvSWcPovgpFh0RALnsZz0m6fj5gj
         DhQJh6QpFXUP2yBp8iZB2gKevZgvvfGX7DME/01FR0X7X8CaMBW1l7Yf3FkuVau/zqNa
         kwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678950714;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtxU95nYVEk8sStgeSy9yEeBrcfk6N255DU39MC/aKk=;
        b=urUk9RonAqzCAxDLW0xOxYJfRoTVqNK9ITFbUtH0vdrlU891SIdAkIYq2/7PUhD8AQ
         aATNMOfCoctTnt2tnPjYGOpm7SCOc2S+ao6xyipRti7OsvhYrO1Ug1m8D+ock+t6dbuF
         HC2lvA6Pc98fhlog8jfQ6KJ6uY4AubqCn9okwDmS9TlI6ok1t7CAmTtvbORa1Yk8p+BE
         6239DrUwREzX0HZ7u/P7OuGJ9e1di8wWqsLfKr3XNAyMhEYWmO69yIl3wrTgAoUp7fwI
         eySXukk+sOYvOhLuGC4rjF9KBBuVOY0uz67p5YlC7mHzqBX4nOsPXwRRMD2PEaoBvc5v
         ZGzQ==
X-Gm-Message-State: AO0yUKXxwA3G3CyJDj5u+ZaGgT2HYiem0GPnmCDfJv2Byw338d54H1mK
        ZBYMpJIwFotqYvzIussQUzOToQ==
X-Google-Smtp-Source: AK7set+WHCuFDbBDlUR6eewnX+XJFX1b8nXPTgB6+ePDTKeO9clFt4yxKIHQOtegAeIaNmdCS1H9pQ==
X-Received: by 2002:a17:906:131a:b0:8b1:7eb7:d53d with SMTP id w26-20020a170906131a00b008b17eb7d53dmr8847022ejb.49.1678950714554;
        Thu, 16 Mar 2023 00:11:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id s4-20020a1709067b8400b008b1b86bf668sm3432450ejo.4.2023.03.16.00.11.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:11:54 -0700 (PDT)
Message-ID: <12eed431-a907-0432-90a7-e5d289496218@linaro.org>
Date:   Thu, 16 Mar 2023 08:11:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 1/2] dt-bindings: leds: add binding for aw200xx
Content-Language: en-US
To:     Martin Kurbanov <mmkurbanov@sberdevices.ru>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru, devicetree@vger.kernel.org
References: <20230314120252.48263-1-mmkurbanov@sberdevices.ru>
 <20230314120252.48263-2-mmkurbanov@sberdevices.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314120252.48263-2-mmkurbanov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 13:02, Martin Kurbanov wrote:
> Add YAML devicetree binding for AWINIC AW20036/AW20052/AW20074
> led driver.
> 
> Signed-off-by: Martin Kurbanov <mmkurbanov@sberdevices.ru>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

