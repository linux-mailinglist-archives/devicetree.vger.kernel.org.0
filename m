Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA5C755AC76
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 22:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233366AbiFYUGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 16:06:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbiFYUGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 16:06:08 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017B1140BF
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:06:07 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id c65so7830609edf.4
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G+O94VcDTtwbrcVKx/+ZQ1mO7kffs6WRdpcMIlGbZkw=;
        b=zaFPw4+a7OLQYwpz7lsAI46E5WXeCd6y3P2HAHzXf/G1JCAiYj5ELtObWDkDuOOW1A
         V0+hVFmG2q4UKw2Kvafmn/Z+q5yQQLXhg/B2347dNO4gYLrIxj83Ns8+5aqawGHe3fBH
         E6mAV48lLxRv8c+WV0uCND05k107DOzYKJsxxxA7UdHLoLoGkpWj/1O/kB87FKkC2WeI
         WXkkeEK+4jOoD69nMIrMbVpZDftAqqkLk0qrXZ3/tgPN/vtmDMb3WtlQIpVGPoxnAAJK
         m2Czdob575dF0so3qAne2W7fcuKeSACmbXSITWVfiE+Ce5Hd1J/HZjsNSNY67sZC3244
         KR2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G+O94VcDTtwbrcVKx/+ZQ1mO7kffs6WRdpcMIlGbZkw=;
        b=GbM8pdopJmjV0ZiMpfZoMO6VkAUnZYTqGQ8I/N1yN7F7Ucmw7vNgW85BlStWFjLdAr
         HvYZiGErlVd81Y9fAuVNL6mxL/SP+IvopVkuoClURI/evrJRh5qBwvYl4XxZV1B77hRo
         rokXYszwkUCGpuFbYyN47y3BHKi13bJ8h30iD56VgBfjnY+GRrLURoJo+Z6RUN8MecHb
         aBHoawLeoszEpto2S/mjFDnBe5wY46pa2DkffI0MDf5wO54ACoJG7Apy46HiVj3Ur4mj
         0jp3v7T5QSmDjNzkukih0mEmUbQvtOlF2+JwgHcep/4vnYAsmd16IbqH6dmTkHbQp5FG
         PiBg==
X-Gm-Message-State: AJIora9dzYF4VcXn/zZL4S+SAX6qzlJT5cyWtQ7dve3GWLvBGLyiOD0g
        hKs1KIRydX8FtbPAft8R9pJSXw==
X-Google-Smtp-Source: AGRyM1skFoOAS415YobZwbpZc3SvDFRLuL0LmIj9Z9dcWxQlEkNQADeploUM3OA5k/vHKAIH2euACQ==
X-Received: by 2002:a05:6402:5193:b0:435:9a5f:50a8 with SMTP id q19-20020a056402519300b004359a5f50a8mr6964593edd.212.1656187565646;
        Sat, 25 Jun 2022 13:06:05 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jl18-20020a17090775d200b006fec8e8eff6sm2990023ejc.176.2022.06.25.13.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jun 2022 13:06:05 -0700 (PDT)
Message-ID: <b3482122-8d2d-61c9-7d11-ad4fa2798aba@linaro.org>
Date:   Sat, 25 Jun 2022 22:06:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 05/10] dt-bindings: iio: adc: mcp3911: add
 microchip,data-ready-hiz entry
Content-Language: en-US
To:     Marcus Folkesson <marcus.folkesson@gmail.com>,
        Kent Gustavsson <kent@minoris.se>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220625103853.2470346-1-marcus.folkesson@gmail.com>
 <20220625103853.2470346-5-marcus.folkesson@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220625103853.2470346-5-marcus.folkesson@gmail.com>
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

On 25/06/2022 12:38, Marcus Folkesson wrote:
> The Data Ready Output Pin is either hard wired to work as high
> impedance or push-pull. Make it configurable.
> 
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
