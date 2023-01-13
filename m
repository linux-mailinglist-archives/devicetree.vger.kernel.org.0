Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67035669E75
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 17:43:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjAMQnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 11:43:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbjAMQnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 11:43:13 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DAD26719A
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:41:39 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 18so31892327edw.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BvUGd9NYJS5uJunAJ7mHRF6tpEc2wFqKY/+I40CerDI=;
        b=johoF20EkGJi5IP8q3AP/5+tpfsjwynFPFGU06tuy4cjoqnq4TyBrAQF6iwI9OaXcY
         woYpby+d6JiiOwAukbdUr2P7+zsU3I2bBPGIKbTMd++jK4yao7FIuL37ZzegXpQTTd18
         /yA6wWJn/QmOVNCuh4g4vWKc9vYK4nH9YlzflvJ6+D6xXNurd6SuJXp9xHQwGBd8CAj+
         JxJUdjlpJOMEq0wV0Th2Qgw5XwMJuhMvQY1505wXh+u492oDQlBQSCsAWxto3TzxE1pj
         SgbcUiI+GmkS4yP3wJfylYzWB2vwWTfod+J0MPJPq/k+Kwb0yBmbwX8xmVxSGYgw6z/u
         FRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvUGd9NYJS5uJunAJ7mHRF6tpEc2wFqKY/+I40CerDI=;
        b=K/gMeqhN2jJ3KlFii5VwvtIr0DJs3n8V0sIUTTFv4xFqueJdLf/SLL6yXcS4Sd1qv7
         10YgfSR7S8BCSSDE7i7tIASj70SWlawbB521L0AN1DpTxmEXR71vVsqYIxK5sy07PAkw
         pT/+Vrwov4JxuSO5err4mBIJY5Ni5XDeQu2HOrCM7QxtMHWFMGZEum3ptoJ8E1PDQW5u
         JecHatDGTx6ZqyxsC7uHVu+fXkPqP4fJ5TBNO810u6fbitzXE+am1A/yQg9wlHCmmJ2n
         dI0zETjCuoo8gC49VQrr4iPjhOML7kg8ATEwhqHtJfUJLDA/JamEWOAYVpYPRQGQZVGH
         zhog==
X-Gm-Message-State: AFqh2koNNP3EqEjy5MsmYsQnKLYbR66WNaA96PR2SNMWwiyEfJ+uLGN4
        rnLa3f7TOvA+p9qYueqLwqWOUg==
X-Google-Smtp-Source: AMrXdXu3YHYR0nLLhyHEkcZgP/DdXUgo9XDCY9cSu8QmopZ789q/sDf1rLNjlzcVF7tBV6j7nmCuWQ==
X-Received: by 2002:a05:6402:5510:b0:495:fa3d:1d72 with SMTP id fi16-20020a056402551000b00495fa3d1d72mr25256227edb.8.1673628098265;
        Fri, 13 Jan 2023 08:41:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id dk1-20020a0564021d8100b0049be07c9ff5sm1142803edb.4.2023.01.13.08.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 08:41:37 -0800 (PST)
Message-ID: <6d084da5-e96b-1b75-169c-4cf85be5e28a@linaro.org>
Date:   Fri, 13 Jan 2023 17:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/5] arm64: defconfig: Enable scm download mode config for
 IPQ9574 SoC.
Content-Language: en-US
To:     Poovendhan Selvaraj <quic_poovendh@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
        arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, robimarko@gmail.com, quic_gurus@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230113160012.14893-1-quic_poovendh@quicinc.com>
 <20230113160012.14893-5-quic_poovendh@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113160012.14893-5-quic_poovendh@quicinc.com>
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

On 13/01/2023 17:00, Poovendhan Selvaraj wrote:
> Enables scm download mode config.

Why?

> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Co-developed-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>

Same question... that's just a config enable. How three people can work
on one piece of defconfig?

> Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
Best regards,
Krzysztof

