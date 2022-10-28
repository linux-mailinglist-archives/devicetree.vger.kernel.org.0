Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B42A9611CBB
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 23:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiJ1Vyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 17:54:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbiJ1Vys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 17:54:48 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E539B84A
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 14:54:31 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id hh9so4324951qtb.13
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 14:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ypWGFUNGDLHwApi026F7Lg/Q5kEFIG84xDzjJbXD2/k=;
        b=bMfd6Y+8Bb/7mf+v1RLdW/boQm7hm/01WMe8QE0c5GDKd2VGHAtcvI3CNSnMEeEwK3
         JS2/9wDnNOQ2RuwD6QOnb7CN/0VbLdvrbBnuH7MC0x/Z1K2xcbBc0K4JuexgMcHRy9JX
         hYiaUCxQXZ9TJL9ECS/LnDrGcmXdJnx1aZDMz7GZXd1jcD/hp0r8aBwC4MRqceEFyJac
         uhg9c3g3VycO4B0qEaouNN5EaNEAwXhdZiThPIj/M6/wL6bwgzA/cNqCkQaKFAGW6xKe
         T5NSoZbSG39YFqh6xGrL5m2anXvEcgleQ2nnEKbEh7nzpIrZy2ajbBLHUMqucK3eLTKk
         dxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ypWGFUNGDLHwApi026F7Lg/Q5kEFIG84xDzjJbXD2/k=;
        b=s4lsW+e7Ap2kiJVXbj5vu8fD9aI711UHDf3DBq10djXrbTPuL1ZwoYfsZE9UGXdWn3
         BIgJA68sqE6NPtGamyMt3K4cwVRyQ93qv5z/ACW/br/2rW6GZLB849pNO8gEtygBNtIs
         O2sslXNAU+CRMxZzApR36cX1YWz+ZzFzzZpE+fh3NCMQxj1SCTnPI9FlQCBvW6m8soSL
         ZhUNIXH9EmulVGnStbQR+DDTsNCL0HJnjoc1Xn/cbBhSPLJK9aKR/Sha+nVckrVYHX24
         Ge1mim5Fv4xidaMJBuhTJ5V27oNuHt0uq6taaB1fAKRNYNT9b3vTJgCuW3wj5BTbI7A9
         c3Jg==
X-Gm-Message-State: ACrzQf3bKlX8zgWqQ+PeFFjiGawCTHlLZr8d4JLEA4kpByTqxQ6xLEbD
        5emvV7AIoIm+/TETv4sR69EHrw==
X-Google-Smtp-Source: AMsMyM44UxC+QbkUhxkJ2SJwwV42LBcRooft0gZyiny7ak1R+Cj0fteS2bzsSPuqL7uPupt7Dj088g==
X-Received: by 2002:a05:622a:350:b0:39a:286b:1b21 with SMTP id r16-20020a05622a035000b0039a286b1b21mr1412784qtw.427.1666994070681;
        Fri, 28 Oct 2022 14:54:30 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bl4-20020a05622a244400b0039a08c0a594sm2920026qtb.82.2022.10.28.14.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 14:54:29 -0700 (PDT)
Message-ID: <07f8d510-e2df-ed9c-c70b-ba159e9bcb69@linaro.org>
Date:   Fri, 28 Oct 2022 17:54:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v6 1/3] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20221028065458.2417293-1-yoshihiro.shimoda.uh@renesas.com>
 <20221028065458.2417293-2-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028065458.2417293-2-yoshihiro.shimoda.uh@renesas.com>
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

On 28/10/2022 02:54, Yoshihiro Shimoda wrote:
> Document Renesas Etherent Switch for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

