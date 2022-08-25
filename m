Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89BF05A0FE4
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239454AbiHYMEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241266AbiHYMDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:03:55 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44E6B9D671
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:03:54 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id u24so13630537lji.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=T7CLS5Vm6UieoEBpvZ2dDOgID2Z2KkmFucZYgAfvQ4s=;
        b=W18m8NbSF4kiPKWZgcKLw1X9/F36W6mfswn4U9BJ+Si28p2bLzKtg21c4JY5nraCIf
         qV5zFfKLB5PU8im5+gu0JXSjHqfv5EsMWHyq7yzKK1+aDmW4yDpyOt35XTPQwpic9B7S
         +B5Fa7mg+tzn+2kIJ5fCZlLJVuTiXN1v6ruGOeKHd/I0VGK58ULyovejpQznvwAU1jBb
         1YbX5pUbN8YSZkp5ZpEHfe4feeXr2330lmR3GP4p69N++P1CjrQU2afjRpei7GyhCSZl
         iATptIEkbJFOP6mK3yMjFwiAPURvu6GtOUShRi19RUpAs4IfULsMPoNZv/cnbe9sZwtZ
         eajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=T7CLS5Vm6UieoEBpvZ2dDOgID2Z2KkmFucZYgAfvQ4s=;
        b=3PJTqvvzb8CYFhhG0HVywjq3sd0zhGcpEfLrej8T312R9Z5xKy4eOTxk9yu5RCTGAm
         xER9KGvBDpXKPyTgL9E8c9CNv/47c34xHgmD4CS7vvm+d7YtKl2zkdC5E8lEYFdiCYUu
         MAMIromg6l7e7lvxQo2DQPhp3k5iE4bjQng61wix/9hd6AkXjmXX9T/elJWebA0H02DL
         dIJj/wZRtmt5IkJ8NSRmmd3eBtbAhAQ+MBFdIlTEwYfvt9qFujxzgVgnuYDPiwX0WfGK
         tO1aoQYPzcfLJaMTjTCxmWZsg7VVcLraq3etaZd6uGIU1zGnXzff6Sm+0OJ4wQwn/w0S
         d6Pw==
X-Gm-Message-State: ACgBeo0SASpBoPY2ajrQrsRNlkyskwaEqai8bGbojUfuvNvBm8/FDVtF
        NU34kdW1NaFEP4Uhzl9AXBm5NA==
X-Google-Smtp-Source: AA6agR7V74+wY+sMZgDjeH1k7ilm1zjdmyJ5kE+aZ5XJmGdPokIk6gVIRMBE50x9PRqo2DGWmLlATg==
X-Received: by 2002:a2e:9697:0:b0:261:ab95:1059 with SMTP id q23-20020a2e9697000000b00261ab951059mr999146lji.506.1661429032675;
        Thu, 25 Aug 2022 05:03:52 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id f4-20020ac25cc4000000b00492d92e239bsm463480lfq.147.2022.08.25.05.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 05:03:52 -0700 (PDT)
Message-ID: <66aefd79-5ddd-0a82-b2df-4403c2d5989a@linaro.org>
Date:   Thu, 25 Aug 2022 15:03:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] media: dt-bindings: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Del Regno <angelogioacchino.delregno@collabora.com>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20220823145649.3118479-3-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-3-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
