Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E372D621B73
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:09:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234691AbiKHSJP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:09:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234066AbiKHSJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:09:14 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A4B38AA
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:09:13 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id l8so22303085ljh.13
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dO/s9yP23N552ooQfZFgnhLrk4aAI5UdBTJMKg7XmQ8=;
        b=dC9KBQED+XttO3S2OUNMahGCou+hVYqpC8zWMLN8tX1BKU9ejmaKf3UqhP5nCZuPq8
         Y9kJd5UNlG0+p4LXM59AMrI+tJPY4kSa1tbJKg8hsSWdRIhtToFIqlI+YgGIJdQg3BaG
         +OR8MhiC969fFfeyScRSUpLUpIPK3ANvHfH8Nbls2gsNFKx4g6XY3lnjOi2TjJQ2lxvU
         s7qPsZJyPymUzznfXKVhXO4m+KJCQHzmWSHvXBst3Vf7Tz7PFIBV45tRgErr2kTRQ+cR
         7IfyYwoNQm5flTSAxdq69hGAurKeZA8QARzF+2i/ubvCAuzRh4mkLH5BpWFqbMlcgASn
         t+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dO/s9yP23N552ooQfZFgnhLrk4aAI5UdBTJMKg7XmQ8=;
        b=KuHY/RsLUAascn0EiEVOjgrOgTgWV7eOV8qIsVQSGyxz7KmBL/xN/l/2arbTsMDV6V
         aA7Pe15cfM3Qh+j0UmQCRxoirDxbiENFCU9oEd2Rhug2zGajojbFKilH0KhCOYtoQ9K8
         WUEQQYpahfhIisryjXGcsFre/9eBVAC/PqFYnabXVmXWg0bFoY2EJL5fBHMcTWGaV1/b
         w7kjUhX4jWL9FrkA8D3+bWXLz0mbWJRAAHC6ZZi0oskAcR6gtHShfTlusDwR7vgqcAzn
         ORV+nia21naxKDz/sQLJdYTTzVevLcTy4euEdx3OsmbQWDg3J24CZvbQ6KGy5voC7+tC
         b2Ug==
X-Gm-Message-State: ACrzQf09dwastT+iiLooRPOQ1Sto9i3LW+0xcX2krSsM3qQqVSQ9+pSB
        Z1K/1inXmD0F6xpequF+Y9ZSBQ==
X-Google-Smtp-Source: AMsMyM7XF7PKFMvdGUnfxui1KW1zDPEgDY8JvtMhYGo0GLOQnbv4lLndJGTCvUOf/9/BCF8SOiGeXQ==
X-Received: by 2002:a05:651c:b9a:b0:277:18f1:195c with SMTP id bg26-20020a05651c0b9a00b0027718f1195cmr20970320ljb.233.1667930951371;
        Tue, 08 Nov 2022 10:09:11 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id x12-20020a056512078c00b004917a30c82bsm1873162lfr.153.2022.11.08.10.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:09:10 -0800 (PST)
Message-ID: <ec1ac04b-8db5-f50b-9d74-72c5e7c0301f@linaro.org>
Date:   Tue, 8 Nov 2022 19:09:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 01/10] dt-bindings: arm: rockchip: Add pmu compatible
 for rv1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-2-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-2-jagan@edgeble.ai>
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Add PMU compatible string for rockchip rv1126.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

