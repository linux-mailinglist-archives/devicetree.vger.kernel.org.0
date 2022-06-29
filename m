Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2BFA55FD7B
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 12:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232997AbiF2KkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 06:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232460AbiF2KkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 06:40:09 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CFF3DDF5
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:40:08 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id o9so21543147edt.12
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KL+L6harPh+JuFJAJRzJRE0zJdkLBe7duDknnurvqcA=;
        b=pMA3XQX716O5iGIEUmBKEFlchqA/QeyKwJN9kbF2vMVk/TUqGUyiTuey4JkHO7CCYm
         5SOT6qYlf8l9U05i8K+ev6aQHq0vieOxnPwDggGqTslCl+fX6QwrQetyrENkoaOJhYW8
         o5khg408Ap9+/M+Jlx35ge3gNotzz8hyo81ibeEYKKbZjQZ3llNvKGVpSn9cbuwaKScV
         Kwni8wphX5kvQFDd9P4Hpjg6O9FUjLsHsmpTJEFvpU4k2axnEoRYqhPtIO4BpmEn5Sb3
         qC5D62FNI26+mGaT+oQJ3OutYBtKubcoFj8wFU6nra2fhBFLuAIQTclF0GBF2F2pQlUt
         r4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KL+L6harPh+JuFJAJRzJRE0zJdkLBe7duDknnurvqcA=;
        b=U4pLWp/DWc2X4WcS0g7motnviJyGN08OwR2dvbKlF0OZrXg3S8Ye9u/A1agaLJJaI7
         HRnzSnfKcYvftgUvLR2s9rQXzjclGPTh+ESJz7ZhAlPb1FltMYmt/afyiUgGcLKm3T7V
         OZq/CpREF0O6AoxwGh8cVsjq12VWPWbmqDjJvs6uAeKQ3Svy0s+ZQ+JZavVt2m+csNqt
         XOqHAlGFtMDSoCRf47npxdGFeuRK+o5Yt1Fxeu5fx+8Wa9sGQ9n8fl06H3sKKe6Dv8tD
         0fTdz6oTcye+IXAGmhu82kTnBcOzv44R7SbbphTO/MlCB1d5+Fc1cb97RnfxEk6EvmqX
         9eBQ==
X-Gm-Message-State: AJIora+vBpMW97V3aDGPELEE38REeX7DkHrnc3oRrzQ6zkF7VyfSgJQ3
        yQj8s1aalFmxEks/M6MP+nuwOA==
X-Google-Smtp-Source: AGRyM1t9O48I2+5YgJKV5tmvh4uRD2cuz487ZZQ1UlwQE8O4ndR1/8YnbtI21nLf5m9qLbXRFG2l8A==
X-Received: by 2002:a05:6402:3591:b0:436:c109:1fa7 with SMTP id y17-20020a056402359100b00436c1091fa7mr3288828edc.208.1656499207253;
        Wed, 29 Jun 2022 03:40:07 -0700 (PDT)
Received: from [192.168.0.184] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jw12-20020a170906e94c00b00722e8827c53sm7550132ejb.208.2022.06.29.03.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 03:40:06 -0700 (PDT)
Message-ID: <d419bee2-80de-0c5c-599b-44a70b86efeb@linaro.org>
Date:   Wed, 29 Jun 2022 12:40:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/2] dt-bindings: display: ti,am65x-dss: Add am625 dss
 compatible
Content-Language: en-US
To:     Aradhya Bhatia <a-bhatia1@ti.com>,
        Tomi Valkeinen <tomba@kernel.org>,
        Jyri Sarha <jyri.sarha@iki.fi>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Rahul T R <r-ravikumar@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel List <linux-kernel@vger.kernel.org>
References: <20220627151200.4693-1-a-bhatia1@ti.com>
 <20220627151200.4693-2-a-bhatia1@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627151200.4693-2-a-bhatia1@ti.com>
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

On 27/06/2022 17:11, Aradhya Bhatia wrote:
> Add ti,am625-dss compatible string.
> The DSS IP on TI's AM625 SoC is an update from the DSS on TI's AM65X
> SoC. The former has an additional OLDI TX to enable a 2K resolution on
> OLDI displays or enable 2 duplicated displays with a smaller resolution.
> 
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
> Reviewed-by: Rahul T R <r-ravikumar@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
