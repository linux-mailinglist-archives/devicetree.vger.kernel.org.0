Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5C75F0580
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 09:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbiI3HIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 03:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230113AbiI3HIr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 03:08:47 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24AC51D9816
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 00:08:46 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id g1so5506543lfu.12
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 00:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=92LAtO2Hsf2qxOUype//w1OA04un6BRw7s5gsf1Jd6g=;
        b=O344S7hx7YSjXCMl8MJZ8VA1WZE6DdNQhGZgJ7J4nMeZrGA64fZ/5tZHD7qG7Lm+fT
         bpSMy53kgSCRflniKZSYPjXIL6yzAb7bnf+JTrZHapvFKaeLOEpB1uDdfpQ+f/D+QAF4
         tQa2tEoear3keJJzzyYUbrHC299f26YHAb6OovmJMIpMZVCXX2gRfDsGx7O4mscQdmXC
         tsNwaZYS4DeRIF5CMhzcJMkV1LB6nI5xg8b6wxS7Z2JvPeTkFgicykYfgB7ZY/ubBv18
         sb9jtiJpzxc9AOJe282sTTRf/OBoZKzejFT5OkUS2S1H1WQCXCOf1bK8x8RVMNhLqC8d
         SUtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=92LAtO2Hsf2qxOUype//w1OA04un6BRw7s5gsf1Jd6g=;
        b=DsLwt2bocOthiRPM4qbg8MlRYl9QiHqcXVbcyC7/V9ZKdAiT2gw4IC/zXtmvSR6vuS
         GCWCeItl7OUFeOb5XgluA3jAJaD8raZ6K4+frtBKJXbNunS9eys79e/uQlqHP+Zgeuv1
         uJeDwBe+JIt0uYys8iDpmGJLnuyaArTUbFWKSvml0Ifmr744XAVdhcP7/776ELs9ZGw7
         wtw01DhNIdmUbCIaAuggxd0AQ07lzJgWi5/RIykH2A3QoEXpltyJSjyBhprp7Q4QAbYF
         IROeOLwB0F1I0GrfmX/NT4fKwHJHfr5vz1D/++D8QU1XgxKvcFVcS8tD0ZNg2jAgM9ri
         VAoA==
X-Gm-Message-State: ACrzQf2wsR+WNMbmgEITPxfhyGJe/D/pHtYj4E8oHEBiC+CCvKDw1Jea
        3EWA0W6b0ySuzujRMNfPClEhtg==
X-Google-Smtp-Source: AMsMyM53KJgWJaJwUxKWJVUog0nvfns2veqVcGQzSBVVWamNTXQLbDoeciYPOTZEaVkIll8xjhdKRA==
X-Received: by 2002:a05:6512:ea3:b0:497:a170:a23b with SMTP id bi35-20020a0565120ea300b00497a170a23bmr2962599lfb.514.1664521724520;
        Fri, 30 Sep 2022 00:08:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q23-20020a2eb4b7000000b0026c2d2a9b92sm82724ljm.101.2022.09.30.00.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 00:08:44 -0700 (PDT)
Message-ID: <28443329-e8ce-f0e0-f8ef-a80c887f7700@linaro.org>
Date:   Fri, 30 Sep 2022 09:08:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] dt-bindings: nfc: marvell,nci: fix reset line polarity in
 examples
Content-Language: en-US
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <YzX+nzJolxAKmt+z@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YzX+nzJolxAKmt+z@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 22:22, Dmitry Torokhov wrote:
> The reset line is supposed to be "active low" (it even says so in the
> description), but examples incorrectly show it as "active high"
> (likely because original examples use 0 which is technically "active
> high" but in practice often "don't care" if the driver is using legacy
> gpio API, as this one does).
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

