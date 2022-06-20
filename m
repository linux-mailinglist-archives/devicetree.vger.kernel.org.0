Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1699551720
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:17:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241870AbiFTLRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241734AbiFTLQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:16:56 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2C5826F
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:16:54 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id um5so5450432ejb.5
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WJBeayfN70JGoffNjmiqYlNbDws6ZWaDe5A70Prce0U=;
        b=dMa68tUjOtbfvics8Eq53gAqn7KA9HHqdMiH0TKeIXeryrs9p03xoEuP2SyPQet0ne
         pik1VXlAU9o5vduBEs4/jtxAtIr6WaD43Hl105ziie9CSpOYxHINlsY7cgYU1b2Db4og
         7HJp87NPGJ2PcUowyYIdmbApFnJglKsdllU0WZtGj8vUMJqi5uYkvijxzNO3OpHyZn7B
         nP8lOaxukkyvHmWXiA+qILYw6fAv2v0WlXz0BgoJ2mBQqvZ3vvXWdO9yTkQTkKYIrpCS
         NK59mGahuZsY6IPF9lTOF7Q7s3iSqOyQVeO/SvZ61TKdKtwNG/KHcnaJ1q1Ysh7HUWLN
         f2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WJBeayfN70JGoffNjmiqYlNbDws6ZWaDe5A70Prce0U=;
        b=hkwjxahaW3E6A1wXOfvTSsSd/ycTIJsjViVhB1f8dXZDRYoLca3xYG03w+7qSh2c3u
         SBy4b9riQamxX7mmX9lQi7C8tIK7hZwsBu0SigqaKJ63HiQYzPv29ljQ65I51wk2GyG+
         KdGp51YPvtrknBrSpH/MCLGVoMJcTxfjlkdtIxQNXQtC9OubjBT3mDgOfnIWgpI3Znjp
         WBwtZ/du/cRbFdSrscYMvOcmR2NQE2l2SL2YA6pS3gjjFjR0bvXObM7SAn9yhHeVpzxp
         +2V2KFuAwu4AJv2tgHnHYGZyJ37Lfc8nfP5vzTq8SMBEENfS6DOVMJ1CUt8y/dMSCaCB
         vTvg==
X-Gm-Message-State: AJIora8S+ip/6JSNZQSYKEGGqel/zIUE7Vp2I7FGRe4Lizh4Um8JvV6H
        HyEhR0vpEMa1BnKgRYFibqX8Mw==
X-Google-Smtp-Source: AGRyM1udPz63US+Ec8QUUIH0+Nm/1rKvwOKOeUEUossI8Rz8gSlcVcWePrDnjoW8TSg1m+h8O3SZgA==
X-Received: by 2002:a17:906:2c4d:b0:70f:ede5:d456 with SMTP id f13-20020a1709062c4d00b0070fede5d456mr20727014ejh.366.1655723813616;
        Mon, 20 Jun 2022 04:16:53 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t1-20020a056402524100b0042bae6fbee2sm10335318edd.74.2022.06.20.04.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 04:16:52 -0700 (PDT)
Message-ID: <3839018a-74c8-aef0-47f0-3580544a5056@linaro.org>
Date:   Mon, 20 Jun 2022 13:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom,gcc-msm8660: separate GCC
 bindings for MSM8660
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220620110739.1598514-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620110739.1598514-1-dmitry.baryshkov@linaro.org>
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

On 20/06/2022 13:07, Dmitry Baryshkov wrote:
> Create a separate DT bindings for Global Clock Controller on MSM8660
> platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
