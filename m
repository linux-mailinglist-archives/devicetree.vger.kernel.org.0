Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626BA6046BB
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 15:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbiJSNTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 09:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232250AbiJSNS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 09:18:29 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D16351DCCED
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:04:17 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f37so27961194lfv.8
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=trRuZwbzwwgfaDxQNftJWu7yrakA+P2WKAUWrovyoeo=;
        b=Bfo53kTNEt0XbI0M3luIjTRBz/3MzmRltGSZcGFRyqjXYMXGzuhMDYe52WEK6xc24W
         4Q3tzb1pzv6Kc8OJRFid4GPTYGF2MWVW4+UvVefpW7mDq+EWgDecUpaHTLnlTp6fnAhw
         TyQAHM6JJqiL2mECi5/5j48N3h3X13g8NSkKwqwtVJbterjivANCaQXQKhHrkD23jEXj
         zWUbA5i6XA5CALqhJxKIoEvm8H14qxTlV4xhL/PHTi2NfUpSICQojfh/IKEudd5BL8VD
         omICFQfKeEGgu6ocXRMcHP7sas4yoYwRfdjCgxFeL750SLwWh9Cz2PSw0UBG4V0j8gNs
         z2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=trRuZwbzwwgfaDxQNftJWu7yrakA+P2WKAUWrovyoeo=;
        b=n2gw1dWsRBuaykWtebE8e5Y8fUO2R7gGBat9WhOKB/eDxSEq8fD0AgExLOT2n3gRMN
         pMLBvHAWPOw1vQmA7DtX2yKDCKuAlJ7BhXMXJLvWFDaD+hiF0OvfOoYREhiYdP3FYSaB
         U+Nsr5GCQfCsuXGhVqeHkLwgjiIEN9GT9sZJhOgXYiicEnohmzLyMJ/MzfLXgvyXkawO
         ln6/dgbAQxDkRsGVGyLO74BTK/BUQPYYXSsQyHjRqPDhJ8oCcHeOIbwpIk+5OKS3oeMT
         4JXYpV6CJZdGrhv+bZ7RxDxzKfV4TCtXI2qRkc4zcTIt3QUecFuZRzrWSNhe/KtIfZXS
         jPug==
X-Gm-Message-State: ACrzQf0Gwy28juB0vR6qEW297/hnUDzi9blDtVgAvEmCYH/KlXV8tt4a
        9IbX2cARFm7R6Y1TMb4IJyMBIw==
X-Google-Smtp-Source: AMsMyM4ir1SUmUHoJm1zjH/EsA2r446ImLIvSZ6/d1S6xp+8X2KCZOjZ770p0lTYxHPEyLvTwkXo/A==
X-Received: by 2002:a05:6512:31c4:b0:4a2:696e:4302 with SMTP id j4-20020a05651231c400b004a2696e4302mr3075176lfe.478.1666184631895;
        Wed, 19 Oct 2022 06:03:51 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b12-20020a056512024c00b004946c99e78asm2272601lfo.277.2022.10.19.06.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:03:51 -0700 (PDT)
Message-ID: <6f27f4a8-1777-89f4-253c-bcd012a9ea5a@linaro.org>
Date:   Wed, 19 Oct 2022 16:03:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 03/15] phy: qcom-qmp-pcie: merge driver data
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-4-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 14:35, Johan Hovold wrote:
> The PCIe QMP PHY driver only manages a single PHY so merge the old
> qcom_qmp and qmp_phy structures and drop the PHY array.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 218 +++++++++--------------
>   1 file changed, 88 insertions(+), 130 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

