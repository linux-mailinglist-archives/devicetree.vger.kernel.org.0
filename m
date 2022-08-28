Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291375A3C6A
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 08:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231874AbiH1Gud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 02:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231223AbiH1Guc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 02:50:32 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9B84DB2F
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 23:50:31 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id k22so5224611ljg.2
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 23:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=nyHwLuDy2iAD8rt9cV/cHMWMIMK5uBuihbeYGs0eRLc=;
        b=R/pZatiQf0F5MBQ2Mot0xBXX0jE6dbRiuQLikguTZsGkvEDhUJw9rDPGf6PuJiYoiN
         K4IFz8PVtAxbL64ijJzdmxH4YBHl9qhKhbJ30E1ZNjuFLoQd4iL9+Ql4Az4DEQ+A68yD
         HEzk47B64Gh2vzZFtM4A8to7aPyrwTKKrQq1+QlU3XY3WpfQxN5GjH3cBDlNbLRfFc6a
         7LbSh0Mke9wimLmJODDFJ3Sm1g3BY+h5PbpPhdCo9k5XUqMp0RJvvSO/aHxVPPEdA3jN
         4zJh8GuzbdKRi9xuthyhdId05QVtYydapIt6AscJd9HqklT5jpSJ8zX2RxvC0rMwK/cK
         0JJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=nyHwLuDy2iAD8rt9cV/cHMWMIMK5uBuihbeYGs0eRLc=;
        b=0ohOhG9LYv47zkklGuJmxWQyAa67PSwPtzCVHopEKPBYnKAXac1neVlfUauwyu/xw2
         0k57nqprzrjlv8NGHGTheYRK4nacODdnK61Hv60tBk7v5nTG5O/nBPwUsM1Y7sI/7eG9
         Nwm362Rsf9rk9VqFG24QqAaMTgNBMkri+pfiu7JbJd7mN9BD0QHbkDYniO+iZnnpPFU0
         pCf23a6/mS6CWrsTO8SyVjlEfz7k0x5x0JKin2qTIbqS8sm7FWgcsCSfClqQeEUbTzx0
         fsaUbf3FUohEqV0hWzchUs4CkVpx/0gYa0WVe7hg4C/nM3eJxR/ohTuv14dR55vTZizB
         5IKQ==
X-Gm-Message-State: ACgBeo3wh9z6nvHs+o3RTtzLLeh2mK3xAH1trTV+VJb4uC19/2BpIv/X
        Mmp3qSwhIZLEb5UwKLZm/CKcIw==
X-Google-Smtp-Source: AA6agR7xz0KQ+ZAxsB+wT2y5UgT2DE5e9BuyIof2q6Xn4SjjgbnchWPhkLd6Xd8d4g38/BGGNz6IZw==
X-Received: by 2002:a2e:1f12:0:b0:261:962d:26a1 with SMTP id f18-20020a2e1f12000000b00261962d26a1mr4353455ljf.521.1661669430011;
        Sat, 27 Aug 2022 23:50:30 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id a3-20020ac25e63000000b0049311968ca4sm420001lfr.261.2022.08.27.23.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 23:50:29 -0700 (PDT)
Message-ID: <e254ea99-aa77-698b-0416-14a8512a3328@linaro.org>
Date:   Sun, 28 Aug 2022 09:50:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: spmi: Drop PWM reg dependency
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220827145640.3530878-1-bryan.odonoghue@linaro.org>
 <20220827145640.3530878-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220827145640.3530878-2-bryan.odonoghue@linaro.org>
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

On 27/08/2022 17:56, Bryan O'Donoghue wrote:
> The PWM node is not a separate device and is expected to be part of parent
> SPMI PMIC node, thus it obtains the address space from the parent. One IO
> address in "reg" is also not correct description because LPG block maps to
> several regions.
> 

The subject prefix is no correct:
dt-biindings: mfd: qcom,spmi-pmic:


Best regards,
Krzysztof
