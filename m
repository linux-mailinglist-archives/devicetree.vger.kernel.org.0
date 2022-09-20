Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723345BE00B
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 10:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiITI3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 04:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231675AbiITI3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 04:29:05 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E326E265C
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:28:56 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id x29so2109474ljq.2
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lT6nUVmlDyiAtxdz1/ltT4CI+1Gf2dYNsm+Y6G9f/0E=;
        b=GzOlTlsdIM2M47n8WHHitWn89LglFWTPaar6uXnq9kx00t5OvIA9+YBlBxV/t92c+a
         IQqrYM+C7hK8dvotKRA63+J2JyPKNU3C5bdFbwrSlXSTO0WU7Z8Oq0G/8T+h9FMmrkZu
         D/3sECmB+3iuKVQfK6YwEiQISRMfmuwIvD9vdT+3vXNGwpTUrgg/YYg45hp7pRGCx+Vd
         L+BxkL7WMfjXV+ZdNAL+F69e+jC6Dwc+8Mio+agJJgiS6oYd7TQeF41s79z3ttQkKqRU
         WisZZKpADuN/jARl98MpCePSYh3QlX25D+5kytyjeFtVxMo9gCRm7vSG6Ds8YtQM3e7R
         M1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lT6nUVmlDyiAtxdz1/ltT4CI+1Gf2dYNsm+Y6G9f/0E=;
        b=xPcrYjLZDtBR+FNi69iFxN7YsddJ7PRlkO7JQg+DpN7k/BxItyPDYtPPbWTmSAbuIm
         TbbrLMElCHuWPWGC5o4SqwV8Vz2fwaMvEVMFgwKJKCg77Dh8Z6ryrCIeb5EA8ifYiPi1
         Asclh2odN+IRkZjb3gsN78z8t1I3iYdRjPvMrSMqUknOVg4NW7DhDM/QVeaYRKfpQ8TG
         svVaDRP4e3+D9tvyT/BQou/Fdma+gGFr92Q1T6wqMevGHDZHs1du/9z/ddMmWVYZROR4
         tU46AftJLun0MLibJtmTqeFzjCX3LDurw5FBIjvt1Bx6D+rgMlGHlbLe0JvE/KMiCm7G
         jKnw==
X-Gm-Message-State: ACrzQf0z7Ac0qeMV4wJX7cFpELNeXkS5Ol6KcdsHkvuF0RMZNvE/9/oG
        b+Ib96D0SA6MUTmPnYWFuQaQBWh5RFluOw==
X-Google-Smtp-Source: AMsMyM7S6t8NyamccA4Z2n1V1hxm/MIYHMuOMARDM45THqIWGmK4jRLiyyakBWMOrP1ej1gEndZcNg==
X-Received: by 2002:a05:651c:308:b0:26b:f24:1f68 with SMTP id a8-20020a05651c030800b0026b0f241f68mr6757057ljp.113.1663662535322;
        Tue, 20 Sep 2022 01:28:55 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f12-20020ac25ccc000000b0048a9b197863sm190928lfq.235.2022.09.20.01.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 01:28:54 -0700 (PDT)
Message-ID: <8090c7bd-39c6-1e41-e5f2-1118f5a1da8b@linaro.org>
Date:   Tue, 20 Sep 2022 10:28:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: regulator: qcom,rpmh: add pm660 and
 pm660l pmics
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220920022251.3073-1-mailingradian@gmail.com>
 <20220920022251.3073-2-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920022251.3073-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 04:22, Richard Acayan wrote:
> The SDM670 uses RPMh for managing the PM660 and PM660L. Document RPMh
> support for the PMIC.
> 
> Link: https://android.googlesource.com/kernel/msm/+/58064f13c0a436a82c35f2e3b5a122d874ae5846%5E%21/#F0
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

Send a v2.

Best regards,
Krzysztof
