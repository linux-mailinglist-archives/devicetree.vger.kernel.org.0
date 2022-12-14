Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F93B64C8B3
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 13:07:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238497AbiLNMHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 07:07:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238109AbiLNMG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 07:06:29 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7100028708
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:04:20 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id j4so10130111lfk.0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ABWHTOvGQKqnbjQ27iXhKuWcT+G66eCJgkvWC5udeFE=;
        b=X7Y7eDkdFR6vcCDQa7Jd9BgsEKUBNTvyHHHpj1g/VvcLo2n4BTlMOdC7Dlv5HOQ3G9
         IQNnxMXXES9kZbr9ENFJYh77q7ZfCO69X5brGChWnL09WG5qvaJJmm2ZoNpXvtFOv+Iq
         kK+jLsL8Q75kTjEsGi7v3XhkwbZ9Jy/VAdjtcMFXritxGwmhzqhptA4sN2E7qPPJzv+u
         loDdHZWqFiS/tJZgcUqBk7ajfL8syjb6ZJI3BKq9QaDmUrmPKJct0lwaM2gAB8kOivK3
         PbllitaoxTqkhQdCOujCdpPOrP3Vt3IcL0i/Bg1kG4h5RnH0OLoLM+Ezbv6vnXiR/3Mk
         2gSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ABWHTOvGQKqnbjQ27iXhKuWcT+G66eCJgkvWC5udeFE=;
        b=67TXonG86tEEJpX/9sgnpXsaPjI2afXjUHgBC14YV3nZ8634fv3R+scDjwVm1sTEOf
         4sKBvtzvjufbPYY2sPsKL3nGKidNQSXyLbKAsg1+yT+z8/AXItigUyrMhWUIKHpXZ/82
         9Fy7MUzQRoDDFABd5AaWLOXVR0NECtbVd2JsSiKebWdjDkp5ZEeiaspVOlzRsJZUIbey
         zDkQX8RCbo0mR4VFvN+wT6iUox0Ph6lQHDjIfC16j17zC+oqD/lSF6eYaCod9dksfMwS
         jwDX6koHPAQaXJLNBzdmPEiF13gXIW2edoxvA3ITOsD+Dm3A5O2ZsLG4Tl+XdYSmU4Ic
         ZZWw==
X-Gm-Message-State: ANoB5pkCrbEZzTdZT7FqqhIRAV2Bw1XBN4fsecp1QiWldTVkzJR8/c6V
        QjtaMPpCQmDBHHBvd1B3IFr2JA==
X-Google-Smtp-Source: AA0mqf7pMPPsCFQN1tJHhnKBzulV9VLatrv2SqL5+G0VL2mCBXeLfvD/WTWoGzu7H4+0hXe6dqUH+w==
X-Received: by 2002:a05:6512:6d1:b0:4aa:c6ac:c356 with SMTP id u17-20020a05651206d100b004aac6acc356mr7879990lff.26.1671019458820;
        Wed, 14 Dec 2022 04:04:18 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l18-20020a194952000000b004a1e104b269sm791748lfj.34.2022.12.14.04.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 04:04:18 -0800 (PST)
Message-ID: <effd10f5-c6c4-5da4-107b-7dbf26b3cfa7@linaro.org>
Date:   Wed, 14 Dec 2022 13:04:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 07/17] dt-bindings: phy: Fix node descriptions in
 uniphier-phy example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-8-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-8-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Prior to adding dt-bindings for SoC-dependent controllers, rename the
> phy nodes and their parent nodes to the generic names in the example.
> 
> And drop parent nodes of each phy as they are not directly necessary here.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-ahci-phy.yaml      | 24 ++++-------


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>]


Best regards,
Krzysztof

