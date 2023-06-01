Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70185719376
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 08:43:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231865AbjFAGnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 02:43:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231805AbjFAGnG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 02:43:06 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E9C99
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 23:43:04 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96f5685f902so53558566b.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 23:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685601783; x=1688193783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmSfsETfgsyBnEWYanCV/ROlC60ZGrEUeoYRLWqXRks=;
        b=DgKtwOZ8y07HecygPtYrT+IQdA1ysHg1/QELL+zVR+za+1arve2tFeGNXh/jjko/CZ
         XIryuoQ9jKAHP2k+Vn2LsNSTu/2BLSppy4hRw/2Dfz54fmg302q/IRqwG3HzzJFlly0M
         Jro8DadZMP06KL9eZ+dv2FojO7nZFjEe6LPLipRtOZFSkd++DEVeX8hgDIoPfMt9i0xy
         eLHl6O9aOZmJ9bNYOcRMRwqydeZWPkTuC7sraCy/AZ+MlPLLyAQQLILNJEJhfEkJceW7
         a2t7sDrTicSJC/yJ0d+gIj3IGmXpQgmct4ibu4yNpNDhdBH9jsNz28jrQvZcV8+/EkuS
         VIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685601783; x=1688193783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmSfsETfgsyBnEWYanCV/ROlC60ZGrEUeoYRLWqXRks=;
        b=dVewMYg8XZdP/xsVuZc5BkF2D4RbQ95IavtuaACG+SmNT003cbh/STNuxuSwKHL8Q9
         KVBXjGBYCFaRrlpGNP5BZZuaQkjxjwfMgOP+pKNz5n3UXFhlmk9LLJ6rhokXFd57s9x+
         W2taYtCUstZCbSsN14sTS+1Ho9B494YWTSHa0/5eeH0DOeemA3SptSLyx0jIvj+NTdwZ
         1SMyLeX3Guv9ebc6WJmlrJC5DV2ICSoWgxParhoNCUa6N1+9J6SpXk0f0vw4ZOki1ruw
         N2vpDbxy2lLeOZji4dVm86mVvUcooG5jt2yOJ017T/d31SPV28LsE+zX7F7iL8UcVKcp
         MA4w==
X-Gm-Message-State: AC+VfDyCz/xpxJxLp4fN6ga8cMJyeMGesfOYyBDVrRfnbVqtNm8VF+lW
        WE9vveZ5N1I5ITiQoPRw1FB0cA==
X-Google-Smtp-Source: ACHHUZ5RHyfEK1QryJ6fVuNpnZ9juCMBcnlrYfmha5Dwl3DpZm52+m4R1AwSvkzRU0EPvxsrHA4LSg==
X-Received: by 2002:a17:907:26c7:b0:973:92d4:9f4e with SMTP id bp7-20020a17090726c700b0097392d49f4emr6962082ejc.53.1685601783025;
        Wed, 31 May 2023 23:43:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id f13-20020a170906560d00b009603d34cfecsm10041260ejq.164.2023.05.31.23.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 23:43:02 -0700 (PDT)
Message-ID: <5b07a200-5bf4-db0b-e3c1-ca52c5a204c6@linaro.org>
Date:   Thu, 1 Jun 2023 08:43:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 08/43] dt-bindings: timers: Add Cirrus EP93xx
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michael Peters <mpeters@embeddedTS.com>,
        Kris Bahnsen <kris@embeddedTS.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230601053546.9574-9-nikita.shubin@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601053546.9574-9-nikita.shubin@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 07:33, Nikita Shubin wrote:
> This adds device tree bindings for the Cirrus Logic EP93xx
> timer block used in these SoCs.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
> 

Fix versioning.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

