Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 176B75A68D0
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 18:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230398AbiH3Qwk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 12:52:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230502AbiH3QwS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 12:52:18 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B6581B14
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:51:42 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id p7so5216504lfu.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=1sF5nJ7Q7XHUasvWbOvS1pvPx5Dhfb6J9h8JpcSJRUc=;
        b=KaxalF3yRrdhxRMA4b5osurOYGklnWpN2vDzlaXLO1pww4FGE6sijGBRQPSCzOpB5N
         ryQhYLGjhUeVh42UNxXItzKjAo676Ko/rOUNiVDLwDZz7MTSNrpc6PSY9zIb9VYe5/YG
         pTDFHJKGIP+CAjBIjzx3KXw0A/uvfKvVvKaSSE4LSrz7n9A3lCznwNKeIyDqRrb1Zz8k
         TzuU2+4G+AJnbduQm+e5EMNn/akm3IMHTebYVa6joxFFcWqpWZxLPJ/GzKVY/amgyOeR
         6LbROrKXEl+a24tlCizB/N/2CP0/8XVfp3eVsjoHlajOA+kRoetzpblBeaYhvXyMj8ak
         h7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=1sF5nJ7Q7XHUasvWbOvS1pvPx5Dhfb6J9h8JpcSJRUc=;
        b=CPtQtXybNxAojesNEevYfKIAsOohM7ZEnIbIAfr1PK8QUBuFH3AevYDFsPPgllwxpb
         FLkEjhZ11GPOZTrH7sJixTc+6a+Hugn43FwvEup5vAG7OliS8uM1OEpm3xMK3snKhRlT
         lOdjb8qRHasfDe7LNwDl8cbXeeTxzsws819EGihL3/1oxcbnutNPaIFozTjUPXhSQoVY
         eU38wJSjYYDnb/3KRGZaJ0u57xR+W/ZPi3HxYPjKvX2wb4WS4hrKSu5pkwmjP0oATi4Y
         fk/EOuX82jrZJB6QlvJ3N28gPykY23BZUZoLAPucp5vFzVCcVpuWNYiBsgqYmoLBeLhP
         YqAA==
X-Gm-Message-State: ACgBeo2nx6XGC38WxauibFBuZZVAFVgT+jmoDsfyBOQX0GcQN82lv61g
        Ki/BtLefskVEYl7KvUsCD//c6w==
X-Google-Smtp-Source: AA6agR5MDApTH7E8g6nPTJZs6HqrmqTIBYeQXRE5JLhYEU6vDcF5TVNjWcoW6N3LpKH+Mx2KDyRwbg==
X-Received: by 2002:a05:6512:33c3:b0:48d:2703:7ba2 with SMTP id d3-20020a05651233c300b0048d27037ba2mr8710501lfg.510.1661878299342;
        Tue, 30 Aug 2022 09:51:39 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id w12-20020a05651234cc00b00492eebe1f09sm282607lfr.74.2022.08.30.09.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 09:51:38 -0700 (PDT)
Message-ID: <416ea156-6f66-0d36-c32a-5e897816f6f5@linaro.org>
Date:   Tue, 30 Aug 2022 19:51:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] dt-bindings: arm: ti: k3: Sort the SoC definitions
 alphabetically
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Tero Kristo <kristo@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220830160507.7726-1-nm@ti.com>
 <20220830160507.7726-3-nm@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830160507.7726-3-nm@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 19:05, Nishanth Menon wrote:
> Use alphabetical sort to organize the SoCs
> 
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Suggested-by

> Signed-off-by: Nishanth Menon <nm@ti.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
