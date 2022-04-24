Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53CDB50D255
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 16:41:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239300AbiDXOoK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 10:44:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235840AbiDXOoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 10:44:09 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DCBE506C3
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:41:09 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id dk23so1711647ejb.8
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=RZeD7VZeCx2JfogRYjFn59CVQqv5yT2Ex57lPtVonrM=;
        b=GDOnFK53Lyz6+WpoTaj42rYsc+OyWpyddPpETFYQEHaaCDUl2915QVrDP3Yyqp8HuJ
         KYuPrGLvvfMWGw+u9El0tNbZ0SlcHWvtSBig2aAHZ8+62cFyGH9imSA8+B8Dab+r8Qg7
         i0nVRi0MUBvZYMuEjjAiB+fB0Y+BGx1OQdpFSt5advOo4lWOXOfWfAmvXQy4roS7namK
         2kVL1DNTPgB5b4LHAiA9xQQYEkpVzOmOT5bCvb/mTfs5g2EUbUgvVlFNYg3NmNx3UyfJ
         FlfhqOte5ah5NZ6F1zHvEbs+H7ve+Qne8pAvROKbtHQ5+8lxv7esUAShzfOqNygDy/v4
         4pGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RZeD7VZeCx2JfogRYjFn59CVQqv5yT2Ex57lPtVonrM=;
        b=kSjIavTZMICM0Dr/iL8So9UTO59DAD9cxpyfA2tmZXekEDJ1b3i6Sutkt+gX3RVOwz
         rUIW/ybV+nP0j9qZxwFRQoforu1QmXysxDbDC8PGhox7bv/QX1lcYwG+lri58gHdkMnz
         pPUY3bgufFcCC73sSSjsDHnj1uTpop5IpUjKetrWzB0P+CPbMEmoR/Qiwo9wAjE3KISm
         InWvtPWfi1GPb+nphaPe8djBiOwqhn3lAFv+eAycHqLLIRyh/vnFw/J6RtEswyT19b7+
         3jWAXcZiKNaooaMOx0W2xQzKE+218lR4mc/Ql0LKxnJ9G3mN/5ilKZkWdVNUppqd+ZFB
         lHLw==
X-Gm-Message-State: AOAM530NUy+j3llNlUXLuhbp6OEuMfh9+S+gMrxHh95oOS8SdHmZf+Ku
        YDYcsTtkuOb5pkdh6YqM5b0Rhg==
X-Google-Smtp-Source: ABdhPJz7Ncqwo2BgPXvbIAy2wgLUD3MtUq3yFRoyLm0iwljhuBrfg6w+G3XuREblHM8OGKifSld2qQ==
X-Received: by 2002:a17:907:9710:b0:6f3:6e7e:d5bd with SMTP id jg16-20020a170907971000b006f36e7ed5bdmr7302793ejc.252.1650811267684;
        Sun, 24 Apr 2022 07:41:07 -0700 (PDT)
Received: from [192.168.0.235] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s14-20020aa7cb0e000000b00410bf015567sm3279398edt.92.2022.04.24.07.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 07:41:07 -0700 (PDT)
Message-ID: <f19273c8-a8be-1bc2-d5aa-2f131822b4cd@linaro.org>
Date:   Sun, 24 Apr 2022 16:41:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/3] dt-bindings: net: qcom,ipa: fix example for
 upcomming smp2p conversion
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alex Elder <elder@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220424131522.14185-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220424131522.14185-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 15:15, David Heidelberg wrote:
> Example of mpss was missing required properties.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/net/qcom,ipa.yaml | 5 +++++

This needs rebasing on linux-next and then probably won't be
correct/necessary.


Best regards,
Krzysztof
