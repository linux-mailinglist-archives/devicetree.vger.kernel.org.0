Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B24372994B
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 14:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240196AbjFIMN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 08:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238011AbjFIMNZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 08:13:25 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C4B185
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 05:13:23 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9745c5fed21so257846766b.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 05:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686312802; x=1688904802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/d+dHBgEekjDSHClTJsQ6wFO80YgJRYqTq5jLwHrLwA=;
        b=ypCdboJHyF8Pl/ysbJkoYgLbs2KgBOkv6jkgGU15xvwv23HstfZfrsJpg3tC1MEEuz
         vXmsyfIHbJSOHw3ZFkrvJooHvlXZN2EMJ8xsL2krSz5bWH5IZwiqmMvvw9Qc0sSy30vD
         NmqHwwxnfIoReQ4ETAfHr5AdQJ2M5iARlfood5WIeTn8qAk9NBXlbuPplX6UMwgJGrL5
         kASZo4ZlpTQE5zwrRUKwOgB1ygNTimN3wYxxF54lXaeqr/qaccSB26ev+k4Voe5O6/CE
         fP7zDagujvUUHxFk7N8/5CMjkBKJ8IbqJMASia8SWduXSrKaejVH9jyhSMqygHKbz3VE
         kK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686312802; x=1688904802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/d+dHBgEekjDSHClTJsQ6wFO80YgJRYqTq5jLwHrLwA=;
        b=hJXwqrRxN0ZcTRagw691dj8f8QSHM2J72VOEDMT4bD6owr9yHWglTb/5OnfB5St5MG
         EDz369I/pzQQ36LifjJGMbCR4vdok7snJCzSpZ05Vas6+tQEGlVgCoUUUsmnf/MgLcAW
         6+VIZ8IYpFZ+gHra8X1PqsdLW5UfOHXS3yTCGLASBTAWgEa+0+2Nv7VXZo+WvqEFaz9N
         O3cJe/AcPiavaPWGnXD0q0isIwT9L85uYv8fCvQu4EF8FwJ+Vhx5znjCSBDjv26AJO/9
         OBmdiY64sp8mKJx1eV8o92CZXqTOSu+fHPVfJlbl6h/hul8KNG3UkwCkSefHbpMVydFh
         bpWQ==
X-Gm-Message-State: AC+VfDzmGN+LG2wF3IwfA/g7pJ7nhH+C8S/VzslBrH8oHa0H7JqadGHA
        EwsWFZvMpcfSZmt7WXgxMT0MUA==
X-Google-Smtp-Source: ACHHUZ448AEQ91mBl1jmqqcGkRQTF/d2BTQKH4v4bK07JoAJsj99mIAC7VHg/3tDLGCNWOO1iKpbXA==
X-Received: by 2002:a17:907:d9e:b0:974:630a:fbac with SMTP id go30-20020a1709070d9e00b00974630afbacmr1485064ejc.18.1686312802221;
        Fri, 09 Jun 2023 05:13:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e26-20020a1709062c1a00b00974556e50a6sm1223271ejh.114.2023.06.09.05.13.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 05:13:21 -0700 (PDT)
Message-ID: <3106c4a1-ce5b-a9c4-5cf4-6adead7fce80@linaro.org>
Date:   Fri, 9 Jun 2023 14:13:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: aspeed: add Inventec
 starscream-bmc
Content-Language: en-US
To:     =?UTF-8?B?Q2hlbi5QSiDpmbPmn4/ku7sgVEFP?= <Chen.PJ@inventec.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        "soc@kernel.org" <soc@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Cc:     =?UTF-8?B?WWUuVmljIOiRieWuh+a4hSBUQU8=?= <ye.vic@inventec.com>,
        =?UTF-8?B?SHVhbmcuQWxhbmcg6buD6Iux6YOOIFRBTw==?= 
        <Huang.Alang@inventec.com>
References: <b039b1b2673644af84db8f803bc7d156@inventec.com>
 <c5f1fbb0e6754394af41eb5083f64d89@inventec.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c5f1fbb0e6754394af41eb5083f64d89@inventec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2023 13:52, Chen.PJ 陳柏任 TAO wrote:
> Document the new compatibles used on Inventec starscream-bmc
> 
> Signed-off-by: Chen PJ <Chen.pj@inventec.com>
> ---

Any reason to ignore what I wrote?

https://lore.kernel.org/all/2e06e7db-64f9-51f8-adf1-b240f30a2608@linaro.org/

You got there clear instruction, didn't you?

Best regards,
Krzysztof

