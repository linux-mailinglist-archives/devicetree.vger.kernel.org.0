Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7A66894DA
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 11:13:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233163AbjBCKNw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 05:13:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232338AbjBCKNv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 05:13:51 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4179E8D62E
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 02:13:50 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bk16so4152715wrb.11
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 02:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bJ04MCttDfZJyvWfMTXvBLaMw4c/LHLqATbSxP5hNWU=;
        b=IKUMGCGHmzLhiOWTDujUR0e9kqL4rNY/EZDl0RJ2vF5wH0sc0SVWaXapFJs+w1OnN2
         2Rp1BU5CH+PgrOiJ3+TnE3KG4Yy8Msq6le8m1gBQVXssbKRcpTUZ6ah8BBXqmZyvdTJQ
         cy6xwHPm0+htYV3nof7uxG9tqV06eK7IjHVKV/NiPl44lvTQxwN2/CWatehrwAF43PC0
         HtCDL9on6esnrIX1s42YeAXQuw2ZXhuPWOqu3Ur0kzuetcTrs+4vEeIl8S3EM37YkMic
         pebre9dgx9CC8LF0IxRl62B7WJXvdqOE1lXoJi8gvcJUn02XWmwoHX4ZLJRaIltdTMVq
         cUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bJ04MCttDfZJyvWfMTXvBLaMw4c/LHLqATbSxP5hNWU=;
        b=caJ+dOmPTJhWleTTfOTEB5gUw3ZCoRPy2ZqEN+LW3IM0Ntoba9NEl2Wrp5Ymb6LHDS
         rYfwBN/9GAaLCcri9zqUw4cFs2+i6kLHFajQO9AG2hGFVoq+Dy9KnRLrPEI/dZBq+4cQ
         3PE5ouWWXXdb1JesYtz6SfTXayo8oNQyvjzPgc5HNBhvIrqq/mz13+mXtRk9FfEsNbA4
         aalyEqinIdhh28Bs/Nq/1yaeWScJEIF/OMBoq9ZuFldVcYtoVvGdgKqGTS6xeD5boJiN
         xuhx+oBUcTlgb5AvX3b/R9iMY174OUy+q4cr2uJAeB02J2MgSWgUxm2EE2nFwKCrulty
         dglw==
X-Gm-Message-State: AO0yUKUQ6eOtjttt2d0Ae3DxN9viTitVKsjPZjIVdkk/oAXuGQDymwUL
        fHWsA0b47wvlY14i9mhz/sU1bAY0LscMg4oC
X-Google-Smtp-Source: AK7set+DqCMkB4MchgXpJWJp60gl/APaBlnfmCG8rEEslPdnyDcp2NNrdI3hGHA2LJwdlzZYrz/VGQ==
X-Received: by 2002:adf:fb82:0:b0:2c2:ad22:40ba with SMTP id a2-20020adffb82000000b002c2ad2240bamr7541698wrr.68.1675419228838;
        Fri, 03 Feb 2023 02:13:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o5-20020a5d6845000000b002bdff778d87sm1597196wrw.34.2023.02.03.02.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 02:13:48 -0800 (PST)
Message-ID: <b3a5899f-05b7-c14c-b9de-a48fe0747646@linaro.org>
Date:   Fri, 3 Feb 2023 11:13:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/2] dt-bindings: media: rc: add rc-dreambox binding
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Emanuel Strobel <emanuel.strobel@yahoo.com>
References: <20230203093405.1616564-1-christianshewitt@gmail.com>
 <20230203093405.1616564-2-christianshewitt@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230203093405.1616564-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 10:34, Christian Hewitt wrote:
> Add a binding for the rc-dreambox remote keymap
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

If there is going to be resend:

Subject: drop second/last, redundant "bindins". The "dt-bindings" prefix
is already stating that these are bindings.

> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

