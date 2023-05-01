Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFF476F2F12
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 09:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231755AbjEAHSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 03:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232186AbjEAHSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 03:18:24 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A8B51B9
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 00:18:22 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-94eff00bcdaso447752566b.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 00:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682925501; x=1685517501;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PF63v+2Tp0raGO3D/Pdo+3NZYK4zubU/qMJRCsXcpRw=;
        b=bT2nxhGBwWg62eErztF4jrVqm07T4DHRMvxHFu+V53gbHMvPzmSEAEyDbW/KPz1bKC
         2qGJ+ZhEK5Jj5j35SM53QPWbXsJFxylE8oGZpmydsAzy0/Y7tJj/ReQzcM4seMn1Shku
         X+Jg33Fbmq+HZiumtZGDYxLK4aTHKOAjPYThwpSCmjZ+OvMYbai80aWNssTrfNZNk8nl
         akLvqagNYaIx1o4idhLwW1pBUreiIqY1CoKpWgdYLdDqMcHILsYx9yV9JDCUtp5qEsLt
         ka/P6RGPNaSJuctFkJa5waJ7Zgrn6kHKIHYn6k18VLl3CO1R4rjjgjMBGeenqhtNuiF/
         /yig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682925501; x=1685517501;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PF63v+2Tp0raGO3D/Pdo+3NZYK4zubU/qMJRCsXcpRw=;
        b=eLHekj2sDMXJn/goYFN0qzmNh3ruIU024ogF/psXyqyqSyFKkUbFzc1qjcPIUtlTUF
         t+bb4RshYuA3C4ixUeFaG5ihTc8q+sXXwpC3/0Nseh68Nxi5Y/nABE2fCAXaynjEC7o/
         PU6CNwuS/FTjeHtf4RpjALnMJexN3VwHSZlYsRqolgIc2oVa0UcumH110H3cALe90cZu
         p4VqKCitSu+cmFiLQrBbIZXTHVxSqD4QwWCbmJEjEZRAR8Rh913CWmi1cpoey4STjY1U
         vK1QWVPF+EEhN2bXbZBoMbzCISb9MXT8+8AwRMwfXjd4kS2oScpkb9ZAR7IvhtMMgex0
         BSWA==
X-Gm-Message-State: AC+VfDwGS0io+xeaSULl0Y2wTASmZSVXKjz1juFC3UNTfXCD0kJhxgng
        10l5gnqCe0F0fRXrpFA8VH9auw==
X-Google-Smtp-Source: ACHHUZ77aR8qnFMP9Wlo++yTpYLJKfzCmm+3/O8K2BffTv0b9/d2ok/0HaO+1ntu2hR4APdaoIoTNQ==
X-Received: by 2002:a17:906:fe47:b0:94f:396d:dd32 with SMTP id wz7-20020a170906fe4700b0094f396ddd32mr10587304ejb.21.1682925500965;
        Mon, 01 May 2023 00:18:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:637a:fd0c:58fd:9f00? ([2a02:810d:15c0:828:637a:fd0c:58fd:9f00])
        by smtp.gmail.com with ESMTPSA id va2-20020a17090711c200b0093a0e5977e2sm14702213ejb.225.2023.05.01.00.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 00:18:20 -0700 (PDT)
Message-ID: <e8a20f96-4a4c-e696-6a27-d7c4b48792e6@linaro.org>
Date:   Mon, 1 May 2023 09:18:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] dt-bindings: leds: backlight: ktz8866: Add reg property
 and update example
Content-Language: en-US
To:     Jianhua Lu <lujianhua000@gmail.com>, Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230428160246.16982-1-lujianhua000@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428160246.16982-1-lujianhua000@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2023 18:02, Jianhua Lu wrote:
> The kinetic,ktz8866 is a I2C driver, so add the missing reg property.
> And update example to make it clear.
> 
> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

