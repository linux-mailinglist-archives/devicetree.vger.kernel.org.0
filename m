Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9031781FF7
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 22:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjHTUjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 16:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232048AbjHTUjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 16:39:23 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1247C527B
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 13:35:55 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b9a2033978so42745811fa.0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692563753; x=1693168553;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=csI8lozwNJXFKYvp5Xe+6zD1AtXpNCUuV/hvW9zv3fI=;
        b=PrSXuqwwdY9mKi74yvy7vcMyPpHMKgBGLNe8GwaOFrcnru2RNisPqRZNgulVW4tg/7
         8PUTzdHPUP/2snQbRlpYrjWBhkIHgiA5W6joa42j8AzmpB7UGAecxceLkuocdV7L+6of
         eRLzErq3hkYdbI2LSVkeuYGW2unVl3WWtPp2b2qR7V3oVjR9nAHBtjJnuBIY1fDKB3t7
         PMzueAUO1r7yAaJp0J0DDxbrx7Kef9cX36hHxB5XeScai+Nb9/Bbo18XjSjO89g87iW/
         rbX6AP3r8IhYK6Chy2xEmPaxWDiY8L482PYv74w+7MTHgG092SMF0c/8IJJyzjufdQNg
         SB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692563753; x=1693168553;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=csI8lozwNJXFKYvp5Xe+6zD1AtXpNCUuV/hvW9zv3fI=;
        b=TceG9Ir0oImUYfedUn0VEKGc4L5R6C59Nb0WoF0uqeUBtrJ3ZzwdaZEtqSw8imbBxH
         b4MNgT9bXumsDiSdJ9MbbWJyrszs2CuMyyuyUilFkojoi0hsK6yRH20GvCZ96q3iLS86
         KAv2knpfGCSgZyC/Sy4t1TttBZmv8Wi0SL4EMUp3nV/dhDyG6c5SWmg8KYo3mEJ2Xkwe
         fTDHnxn5kQ/2N3o2ZLDeu+gkBPbdlyL7M69oN7CsDXyXodJUT3bd9Z39WhLelNxnom54
         zuhGjFltL/s3Ogw+kFDO1TlQQ5A964NHUNjfPllx5ieweTbXMOO1qjvedfgvCnwnByPu
         X9tw==
X-Gm-Message-State: AOJu0Yy/kKxrLC/RvuksOGV0/p1P27L4dVCu0LQ48BQsS4SrV8/Dovek
        TMysX/6w+o43qJ1MKccpHD21Dw==
X-Google-Smtp-Source: AGHT+IGZjE6rYwA9gmuKFki0x2Cx+rNzYubH8mlYe44hazGbmJCBmIZg+F7UjOQOumBEwQdZPeHscQ==
X-Received: by 2002:a2e:3505:0:b0:2a7:adf7:1781 with SMTP id z5-20020a2e3505000000b002a7adf71781mr3625348ljz.2.1692563753139;
        Sun, 20 Aug 2023 13:35:53 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id d8-20020a1709067f0800b00992c92af6easm5186598ejr.161.2023.08.20.13.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Aug 2023 13:35:52 -0700 (PDT)
Message-ID: <d6dbafb8-cbd5-806e-ed4f-0e08f820033c@linaro.org>
Date:   Sun, 20 Aug 2023 22:35:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 02/18] dt-bindings: phy: qcom,qmp-pcie: describe SM8150
 PCIe PHYs
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
 <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2023 16:20, Dmitry Baryshkov wrote:
> Descrbie two PCIe PHYs found on the Qualcomm SM8150 platform, single
> lane and two lanes Gen3 PHYs.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

