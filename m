Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61DC5691A6D
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 09:56:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231659AbjBJI4e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 03:56:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231652AbjBJI4d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 03:56:33 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D3730E82
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:56:32 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso5747706wms.5
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kZ+f3iNC4UgNVPziXFfD8EZktQn5DJOz0Zpd0I2PkVM=;
        b=VH99WeYMF5yNKSPDbejJR2fnGBGHu7owHpzE83+tg1SQCsUAPGia+aPCjhlnzuICBJ
         7LXDjJ5ubhKDKAfU7IkOCcuLjo4S/TIaN8ljH4S8kH1Cv0m8QujlNoyPxgFflCqb88Bn
         EZgDZhZShm7956siFhfcOzONw/5HKMor98dQRvOZbZBlHIagrMDqpBdcpJNNdyIyLCqh
         F7+9DP8SWzi7ZkTXGHSMKneKMv2BubXlI7GKaPG9EUvPmG8JTUKGOYl6U1pckU364J/J
         wmoMe2Q9KYhuYZWO7My+UlzsPggI9X5PFL2lDZyLzkIWPFcfyuaKjie9dlXq0iVjMJQe
         DMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kZ+f3iNC4UgNVPziXFfD8EZktQn5DJOz0Zpd0I2PkVM=;
        b=vRpE7yUYcNT8UwLhVYZ86vAtlCaFc8JBvJWw79j7gjI2tIwlzdfkfGt7my0Bk0jw9W
         zi0DtQavniEvyW96KlXp/iDa0v+6XFfxSeQyUY8WXZmDeOMNyYHzsO4nuqe8nZmVj4pM
         f5kb/7xBTPK/p/OF5cm7YMiEm509VABmrreJc5kR/DSew96gtjYgPTvyQzfJxAaGhcAh
         1j/drnSOP2Tw7GJo0c9f1OWh0GAvrrFbTTn/2qifoKA9kMx9inm7xPGud346Y84ojf39
         fW34Kbx67e/lErVDgnP+VWLJbi/qZf6r6+nlJrgEi+hniA4ZJ3yaBfRLQgKSIF0Xw8cC
         mhvw==
X-Gm-Message-State: AO0yUKV3hd/whtzbB30vm5bTKBqJW3Qax08Y9AGRKNcrKbgxs4o6a6nk
        z9ngOMDsrXrIc6ZCHUS0Rzp35g==
X-Google-Smtp-Source: AK7set/WowO5q/KnieW1zymc9H4EETfqzpWgHbPuDdPwkHpc6T3r4xFw+0Tyid295hdXskt7OZiEfQ==
X-Received: by 2002:a05:600c:2ac8:b0:3dd:638d:bc31 with SMTP id t8-20020a05600c2ac800b003dd638dbc31mr15440661wme.26.1676019391138;
        Fri, 10 Feb 2023 00:56:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s11-20020adfeccb000000b002bfcc9d9607sm3028821wro.68.2023.02.10.00.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 00:56:30 -0800 (PST)
Message-ID: <4b735136-d9c0-cf01-e453-c8da31754a93@linaro.org>
Date:   Fri, 10 Feb 2023 09:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 3/3] ARM: dts: aspeed: Add device tree for Ufispace
 NCPLite BMC
Content-Language: en-US
To:     Jordan Chang <jordan.chang@ufispace.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        joel@jms.id.au, andrew@aj.id.au, robh+dt@kernel.org
Cc:     jay.tc.lin@ufispace.com, eason.ys.huang@ufispace.com
References: <20230210055451.72153-1-jordan.chang@ufispace.com>
 <20230210055451.72153-4-jordan.chang@ufispace.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210055451.72153-4-jordan.chang@ufispace.com>
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

On 10/02/2023 06:54, Jordan Chang wrote:
> Add initial version of device tree for Ufispace NCPLite platform
> which is equipped with AST2600-based BMC.
> 
> Signed-off-by: Jordan Chang <jordan.chang@ufispace.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

From where did you get my Ack? I don't recall it.

Best regards,
Krzysztof

