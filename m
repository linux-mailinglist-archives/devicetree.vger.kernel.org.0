Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2854061F0A9
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 11:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231700AbiKGKbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 05:31:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231631AbiKGKbU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 05:31:20 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB8714D2E
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 02:31:18 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id u11so15513053ljk.6
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 02:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=phTgWro8ITa1pQy8f5x6b7yFdhBlhdxnWW0xZ/54IDc=;
        b=mrJgIqkAtBUsHsv6nECf+GO2hcSlXo2Hf4IDo9JTAqThKKzgAS/v+qOj6nT4AbJFWy
         EainCmCQCNiJ6aFJO+Q62hKYncSPEIynB5LggHOggma5ZvYSGC1MYWRcLjqCZU7dC/tB
         LER1CHM8dHn8x/ErXrirz8679ljXdqth5cbjDpdW+sRXaLHoym+LNr0pZ4VfSap6Mlu5
         Dbfb4GXQE1RvNmmzCboD9LFatoNXQ7ymo8GtvVx/VjdwaMXQ8sDH5r/rNaDN2ACs5Tuv
         ArijT/4hlGreLZhn6Hf/Cyhp9cmPzmMZRmHDDudgoG+6H1piwr6Drh26bNlkyMThw4q8
         BjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=phTgWro8ITa1pQy8f5x6b7yFdhBlhdxnWW0xZ/54IDc=;
        b=zGi0ywKWrU1yKR7MGHuPZieh1ZFz1XjP8I9wQkcAssFrZonk5UVs7L4ri1cafOPwMy
         oDISuukr1ZLLg7ptlGz60qlkk6kgo5DXgaUHSuoumA0OcySXEsH9yGkTUO7aG3lxZfKb
         fSvzKsvW06HpvI2ZRAViVH7ADwcTQQJ+ugNqhspxPeBJWooVoqrHvYSTKgaXWdUUbUwI
         JwgC7QAI9ebOX7Z6Y6l9rKJd1JoIgQtfwV2cLAqVKJ/rkO55YVQrMs+az/9pgkubS4Kq
         q6FpQfI3s5YDUDWkeJIdUC7o9iKN7+WhPSZ+JNZC9qIIZwWdpWhyYxp0VsSuNf3z96yx
         yfIw==
X-Gm-Message-State: ACrzQf127OWyB0xn4flyVxCLFLYbTdpLdkMqw3uFkkBPrX4U0R4dr/0X
        zKqU620DZxqTnzQcuP37LBzhUA==
X-Google-Smtp-Source: AMsMyM6VXgpY256mT1s4LKd9dVye8Gc7XdH/fOoWTc1d0zgP4LtokebEjtxzL+i91dICVSFInE5dqQ==
X-Received: by 2002:a05:651c:118a:b0:277:5ae6:4b67 with SMTP id w10-20020a05651c118a00b002775ae64b67mr13140015ljo.414.1667817077358;
        Mon, 07 Nov 2022 02:31:17 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id w3-20020a05651204c300b004ab4ebb5d92sm1169012lfq.5.2022.11.07.02.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 02:31:16 -0800 (PST)
Message-ID: <85bdc42b-eb1e-916e-2869-62e145bc00e8@linaro.org>
Date:   Mon, 7 Nov 2022 11:31:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] arm64: dts: qcom: hk10: use "okay" instead of "ok"
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221107092930.33325-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107092930.33325-1-robimarko@gmail.com>
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

On 07/11/2022 10:29, Robert Marko wrote:
> Use "okay" instead of "ok" in USB nodes as "ok" is deprecated.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

