Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4E6A5F09AE
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:14:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiI3LOD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:14:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230481AbiI3LNi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:13:38 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE6A17CCFC
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:51:41 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a8so6242875lff.13
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BXoxzPrniGP5UagRxPIaqK4JQDcPReqtFzB9YvzYgs0=;
        b=ZzWKORmqvGAzxQLshNo4AR/12E0jIXZ5eSuDtEd3pu1bCBErT8fTpJYsSmIVE7iYV/
         McsO0LyrDZh/waOpjgzJRaPfNskOP30j1NDwkhmKQAL/NOv4DyzKJ3LI0U3FrhSi6Xq2
         LnCt9CNrFc75bX5FhfKuk/BdyUJPDZNjJ/XWDcmujjbbsJzQ4UZ91GhBl3olbzLoJjoa
         6zb/wEjEZlt8SL7bUvdfoGD5UJdk1/ujkjJMlk7pY/x8L3tzHzLS+hxaMysCT+ZRXV/4
         M8ZJDZJ/beuo7dFD8Xz9XwXVhpiLYkkVqYA7Rb8nKoUreV8XsjwOcay3AmphtWucN7Eb
         vO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BXoxzPrniGP5UagRxPIaqK4JQDcPReqtFzB9YvzYgs0=;
        b=X5gQoyBNv34EPj7Kyqz35qR1Z/m3gnlvTlDbPoenYN4ZZ+FIfjZErIGIq8rhwwsoPL
         EeNf1IRfiTXAEUHxathb8X4LfSsQe48K3/2eKjbmXZbeD3/jFzYBKesppas1oeAQxER2
         Q9Ne9YZDkHowwT2Br6JFb6GSgw+SQQa4wA93Sh1xddpOkLzLEkIkFVkXd8GVBEb5n/mk
         pEJmbqSzc2rRcmdbjospF2GW5HP/0ZaPndfo7QGG35XtiinOwrrPENVHtTRg5PIcPshW
         xu8CIWXf5uZjr/LHVcyRrWGPgsqlG5DdjeC0TsYhEGFpGdvYEd5DCC6DKZGAE2IADwGm
         Nf1Q==
X-Gm-Message-State: ACrzQf1YxaBc20M7bANmR8JvATceV++rHT351IZxif1VpsuSliEihUc7
        rVyscw2CTXUX6VyLqYbvmUlBWw==
X-Google-Smtp-Source: AMsMyM5E0NaL/7MuUgMPRk+Y/5nmYoFC7MJaL91SYm8sB3f4a0diyJt+DduCZMWNcjDLTiqhgVFnHA==
X-Received: by 2002:a05:6512:3981:b0:49a:d169:5808 with SMTP id j1-20020a056512398100b0049ad1695808mr2952640lfu.241.1664535099336;
        Fri, 30 Sep 2022 03:51:39 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i22-20020a2e5416000000b0026455099704sm117241ljb.114.2022.09.30.03.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:51:38 -0700 (PDT)
Message-ID: <abfc508f-1d61-8364-ce26-30893cc1489a@linaro.org>
Date:   Fri, 30 Sep 2022 12:51:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add Hynitron vendor
 prefix
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, linux-input@vger.kernel.org
Cc:     devicetree@vger.kernel.org, rydberg@bitmath.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        dmitry.torokhov@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220928214806.13572-1-macroalpha82@gmail.com>
 <20220928214806.13572-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928214806.13572-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 23:48, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Hynitron is a company based in Shanghai that makes controller ICs for
> touchscreens.
> 
> http://www.hynitron.com/
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

