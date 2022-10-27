Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F50160FADF
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 16:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235429AbiJ0OzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 10:55:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233473AbiJ0Oye (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 10:54:34 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87604E4A
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 07:54:27 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id o2so1067686qkk.10
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 07:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nfbp8pspODEp+xRWH3kwW0z3nJyD6n0aVJFt78h3zaQ=;
        b=fSojX1LB55TUNsmuvX/srESk17bNDXREqM56f4nZb0T4+9OPmC75XPLFnWY3Rkqqf2
         hZJY5f51Y57FVj2WPAM1Ad1Wm4KoVcpPJ6mAGTcA8EtsoFDNTt46u4Ord36f7zLR+6DZ
         7a/Pnmjn8qUi2WqQUgNOfkmv7erH+HiwWz1oUp8Kgyby992HZsnsfUqVzcBczhhxgH3Y
         cGtL8xOrXK3i2O3x+Hs2+eMbz2eaNqnDFrw5wT+gCZ5jOQIsZ7aEv51UqMxensCgE3lG
         MR9QzIP58v4+ftlCoGCd+vXCcfvVTqKW0ZRVJy6/CPGJbXysJFn+RWmqfYROhFq4TEbA
         vbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nfbp8pspODEp+xRWH3kwW0z3nJyD6n0aVJFt78h3zaQ=;
        b=TCE7j69xczr19DaAWyHkcfPXJxtuHjscp3wHjSnPAn6vvXtHOopyaXTIZXFcyLiiIC
         oGOBzn39S7MFHsTRXhyF5zNqbj84+aUobHr676DpRNsjWXkSAFjNqwRManX+h4YivMLT
         DoRqVrJza50Z4OVs7NycZf8yW6z0x/PVdg1/E+awAT/efI1AM8CJy3TDvgfKBSrvHum5
         HMgZkOdKdrhGj5Olh2lkHsx3ySclJPdwG+N1ON7bChUqBf06+CIgrldaLO5yIGtdggj+
         N3H0H/a7t2V+nw7vYLxKVWZQXsOjgr2rNRFNSF97bGlhoVUXgQdKmfrp4KRq9iL3Ru/o
         lVVg==
X-Gm-Message-State: ACrzQf3IxfNsydkvNU1O4ZaDFqzh2yBHJntxXtIbnPPnFtcI7TG8vTt/
        ph0HjQTz40rTi7bzZyw3xmwRcA==
X-Google-Smtp-Source: AMsMyM4DLzuxFqJwhZ46bXuWKN9iZ8lXhey8EdTFtw+NyLQ3GG4BP4qXN0IZ8R2Zt0qhU1YQijwceA==
X-Received: by 2002:a05:620a:4245:b0:6d7:6d51:f66e with SMTP id w5-20020a05620a424500b006d76d51f66emr34344135qko.617.1666882466686;
        Thu, 27 Oct 2022 07:54:26 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bs15-20020a05620a470f00b006ec09d7d357sm1125319qkb.47.2022.10.27.07.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 07:54:26 -0700 (PDT)
Message-ID: <4b32310e-2f93-66ea-aa94-ceff3f0523d9@linaro.org>
Date:   Thu, 27 Oct 2022 10:54:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/4] dt-bindings: timer: rockchip: add
 rockchip,rk3128-timer
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
        heiko@sntech.de
Cc:     sjg@chromium.org, philipp.tomsich@vrull.eu,
        zhangqing@rock-chips.com, hjc@rock-chips.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel.lezcano@linaro.org,
        tglx@linutronix.de, arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
 <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2022 20:52, Johan Jonker wrote:
> Add rockchip,rk3128-timer compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

