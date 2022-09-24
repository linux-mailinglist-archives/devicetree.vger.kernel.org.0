Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7058E5E8D31
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 15:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230293AbiIXNun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 09:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232556AbiIXNum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 09:50:42 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 101052DA82
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 06:50:41 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id w8so4274590lft.12
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 06:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=S3I4jehrKuVyW8pAFRx9WObz1bmyrcoxfbdPnos7PB4=;
        b=OpKNDzPvl4S2btSqGhXdjlbyeeB3PTcImuQimHgUc35VRtgf0dYfJlUy5WCglQnRg2
         Dt8wgdspHycefZfC0v6fT9Ih6Q5yia4S2cUZUKv+Ro38GWJFoP68B2bSuEkk+HkI/NBU
         q2ScbmSPYsPRJd/wRlh9tyf+HP+g2vPRNy6Lmb6jZ4Dfwxo36O2JRCIJLL/lhBb7r1dq
         xVOqq8Je2N8ojBZpTApHFXOoEVnXFzwxjGKRfDm0pqlw5mfEJfBdY9YntLasuLEJT5N3
         /82kaXQeZvi/KAsCSPB9uo8Q9D09hF6du0dZ1kzJO/CeY30QesZhVxDjRXdCsJmDwFe/
         mlxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=S3I4jehrKuVyW8pAFRx9WObz1bmyrcoxfbdPnos7PB4=;
        b=j9VH0zp9ElfvFaR2ulpj3DuwjS6oRDGRlGwxvBDizCVRqxf7+2iGdz2/HFdTd12Yj8
         7jrNzui9if2xDKHi591sHc7eOWbPouOShd/abXUguo5Y5n3L+5fjpgJA8mW93WcB7x5J
         LB8X5TNWLtv8WI5U1xBv/lE8bzbE108rc2V+h9FNG/TgH/jJs0QXo6x6cA+l89DIZ5H+
         dQh7DvtQeizMw8Z69fn+4mKI0KZzR4CCwtGbG2iKXUriyxC7h/oxZsuMybv/X7beLw0c
         2HDEq94QrTsC/V7z2TZ3+4/vUkq9LaVhzxFHNN/7dPKy+gG33a6xExBNov5Hwyzkgo72
         66IQ==
X-Gm-Message-State: ACrzQf1Omd2383T1XGaf9k1kyXgQILOOvz+ZXQTJByH0hIP/kP6Xng3v
        Eu8zO1KBcn+BR+r901duBBVIBw==
X-Google-Smtp-Source: AMsMyM43hmejQrmJwvEipK0e0DFyYplLxvA7P+SrQoWQ/GkHUl0zF84jT34vRnrYCaj4WbkKe67JIw==
X-Received: by 2002:ac2:4f03:0:b0:49b:bc01:35d3 with SMTP id k3-20020ac24f03000000b0049bbc0135d3mr5074956lfr.467.1664027439410;
        Sat, 24 Sep 2022 06:50:39 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p9-20020a2eba09000000b0026c037747bfsm1796935lja.3.2022.09.24.06.50.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 06:50:38 -0700 (PDT)
Message-ID: <3b80983d-93e9-9663-f569-7dda5b738cf1@linaro.org>
Date:   Sat, 24 Sep 2022 15:50:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] dt-bindings: marvell: Update Armada 37xx platform
 bindings
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220713200123.22612-1-pali@kernel.org>
 <20220808202352.iimhb2q6yawi35y6@pali>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808202352.iimhb2q6yawi35y6@pali>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2022 22:23, Pali Rohár wrote:
> PING?
> 

You got the ack, what are you pinging us for?

Best regards,
Krzysztof

