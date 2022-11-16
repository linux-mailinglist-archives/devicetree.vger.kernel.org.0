Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A65DD62BCCD
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 13:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233683AbiKPMA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 07:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233912AbiKPMAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 07:00:02 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2367C5289F
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:52:09 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id a15so21484739ljb.7
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9l4mQv9bpo9LzKh5UykNs3/PvBpNgjAZ8H6ymHxaNGo=;
        b=qJGuaKdHbo2gV1Gg1Uu5x7IHAm1tLva5UrbbDI5QDEjpDJYvJHijTlpFVbK1gEkx/Y
         DEFQ6wW6A+vms0D3V1CU3c7sF10nXfSNZU25BKvbRbZSU8fOnBGu7gutvlqYG5S0qWdU
         iPoNYwJ7rtkPoLsB5NCV9BbJcoZAbRxt39pTOC0hNjktdM2edzn/JXrpiK7nsBcLqNnL
         T7Ci7ZLV3l48QSTP1/24oWiGROfwbh+8Mp2JPDUYHvalzjVRFDqmR0o44EmCeT/qStE8
         q2+6An13wpGskmpS3lsmuKE2IodXou4oQRCI0OtUEEoFw27OrdIdbardCIU7ne6Ii0zo
         OUZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9l4mQv9bpo9LzKh5UykNs3/PvBpNgjAZ8H6ymHxaNGo=;
        b=Oc/X87UvaHLIdjQ2vPry3q/EqEbGU3/vx0e4waBxViGhJ3/A6vikn4TDFCYygo07Nh
         CnlFrwhSgc0QcWZHNtpbUlRi9wdW3WppcXHKauku0vGmwAy2ap28DSc+bqsYaPkKZWBs
         +wVm5WN3GrGxGpRcDziATwp73iCqL4hwjN0gs26Lr74Ls14U73ceXF7zBaX0nxnbkpju
         uS9diMStFJQ0SDx11jrliuv8lwo3WHKhyv434nYOIiCTw4aMl7L5NuWoSnKX/4SffxMe
         fc468df+JYqSb0BjmF+YXO9B+rMEfJiHM0pg3arJ+/1vTKgqFzf+4CsiUzJTXx72WXfR
         V3ag==
X-Gm-Message-State: ANoB5pkCny0MwP2DZ/mWRCPMTz8C7tXELxpK0WNrO8t+AQIlRuaTCafY
        WbAnimNvSHPE2ZzVxwhDuzjj7cJqc/g4wOzF
X-Google-Smtp-Source: AA0mqf40ymbSD4mZc17qz9uvVeqDU4zca4rDxD4azyNRwWW2p6AjRfYwkg5vNSqxHP173tFCRMK7Og==
X-Received: by 2002:a05:651c:14d:b0:277:6c39:e543 with SMTP id c13-20020a05651c014d00b002776c39e543mr8173866ljd.513.1668599527466;
        Wed, 16 Nov 2022 03:52:07 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o9-20020ac25e29000000b004b3b2a9f506sm2542947lfg.4.2022.11.16.03.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:52:07 -0800 (PST)
Message-ID: <9c787dcf-f294-a93e-b357-2c04177b15ba@linaro.org>
Date:   Wed, 16 Nov 2022 12:52:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/4] dt-bindings: qcom-qce: document clocks and
 clock-names as optional
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Bjorn Andersson <andersson@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org
References: <20221114-narmstrong-sm8550-upstream-qce-v1-0-31b489d5690a@linaro.org>
 <20221114-narmstrong-sm8550-upstream-qce-v1-2-31b489d5690a@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-qce-v1-2-31b489d5690a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2022 11:23, Neil Armstrong wrote:
> On certain Snapdragon processors, the crypto engine clocks are enabled by

If by "enabled" you mean "controlled", then looks fine. Otherwise
without exclusive control by firmware, clock enabled e.g. by firmware or
bootloader might still be disabled by SoC. Which case is here?

Probably we should have dedicated compatibles for that.

Best regards,
Krzysztof

