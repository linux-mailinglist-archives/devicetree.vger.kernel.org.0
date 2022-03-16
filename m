Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 853644DB610
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 17:22:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237332AbiCPQVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 12:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230132AbiCPQVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 12:21:40 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D25A6D3BE
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:20:26 -0700 (PDT)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3BBA53F1E8
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 16:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647447625;
        bh=O52a6BJ0eqWTsc/2DbHo6Vw/EG0KeFOooHXm8fZQaTo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=qt7/YZa4sXDPlgPHtW4De1cUzoQOQmDHx5997xubRhCt4LSWIV69eXMaQRepxdhue
         zNOJSfTKMpKtj2xk+BcEGbM1ZmVawy/sWPgoyez0NwhFH7UMygyrk4vrvzq1o+UewE
         Zu1w1fOsrgs5UzsX5JTuFJDS4zEB7FyTQZohuPWmV+n/eC3hl8jmwKyEtGnquCQg4r
         wJm88kgX1dKogCBo9DfP3FYgR37iN7gUmxJJSf3Br3Pu/m8w1oR7eUesghAH+pQuKm
         iaGOX/Uds27ONaYvZU5bRKvnWVYkX9f/ilFoZl/yIB8yK1cpTxrkVeej7pMNHeCAjM
         ES2T0d2o4EFIQ==
Received: by mail-wm1-f71.google.com with SMTP id t2-20020a7bc3c2000000b003528fe59cb9so1223963wmj.5
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=O52a6BJ0eqWTsc/2DbHo6Vw/EG0KeFOooHXm8fZQaTo=;
        b=gmhupEGsSHguc7IR3H9n/1R3mZ+sXAbj8lzIab3AbI42tmZXVBxQnd8PR+LUygEoAh
         VBb/IKwpYhfgZlML/PqTc/FD/6181cPq8iURO4VnG7sfg9URZtB5lf05YQHgKvX80ylQ
         5FrusgZZ2jPOCmVxuEktJyX64xv4BrWv4dOV3PqD5aQwUpy1dksYOnj0hUg123aqMYIx
         h4N9mwM1v2b4L9VP1R/iBCKGZnZYpJHUWKpGuiFcH/6yfg3AzYsQNPfwFGqqE4fhkr75
         ko45JS6xNuKBFq5A/3Id0ivUhTp/V79cZvpDtYq3Tdd8wBN8y38TryH1RVjfGs7ypfI2
         5MFA==
X-Gm-Message-State: AOAM533P7nTGj6ZC1NaHWRjIDygdHtsxt3DytONR4us+ESaNq9ZmybJH
        BeZiSZtILeJ7gsPEu0ckhd+j6cJ9QOpwQG4bf817SYaghsBsbrGP4cn/jTwyR462hK4qEWkINIp
        2JX4YjH0kuaLBNGHTJGw8RXFd/lkK3DiPGjJonQk=
X-Received: by 2002:a5d:4bcd:0:b0:203:cec2:edf with SMTP id l13-20020a5d4bcd000000b00203cec20edfmr533643wrt.25.1647447624982;
        Wed, 16 Mar 2022 09:20:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvx/VWi9UpWEvGj+o7+fQNO9ol8C7gLCx1pm8lTtoDiyvjUWQUiU9XrTGq/gyB46keTeolwQ==
X-Received: by 2002:a5d:4bcd:0:b0:203:cec2:edf with SMTP id l13-20020a5d4bcd000000b00203cec20edfmr533629wrt.25.1647447624842;
        Wed, 16 Mar 2022 09:20:24 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id r186-20020a1c2bc3000000b0037bdd94a4e5sm2117243wmr.39.2022.03.16.09.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 09:20:24 -0700 (PDT)
Message-ID: <74ed4ba2-168e-b1c4-7449-443ff6955e6b@canonical.com>
Date:   Wed, 16 Mar 2022 17:20:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/6] dt-bindings: power: Add rpm power domain bindings for
 SDX65
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, linus.walleij@linaro.org,
        robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        rnayak@codeaurora.org, collinsd@codeaurora.org
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1647410837-22537-1-git-send-email-quic_rohiagar@quicinc.com>
 <1647410837-22537-4-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1647410837-22537-4-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 07:07, Rohit Agarwal wrote:
> Add RPM power domain bindings for the SDX65 SoC.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
>  include/dt-bindings/power/qcom-rpmpd.h                  | 8 ++++++++
>  2 files changed, 9 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
