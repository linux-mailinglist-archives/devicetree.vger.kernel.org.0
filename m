Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76FC5596A17
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 09:11:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238672AbiHQHKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 03:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231270AbiHQHKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 03:10:13 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7141580BD
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:10:11 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id w5so17912114lfq.5
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=mQIBDWQrbW6aJttTuVaA+q9WmwS0+Cm5tvawjfR+BGA=;
        b=RlRJrDhBOvdxdnDqyfALO7W/6W+qZkPR/3fG1qR/kgdZfpypB2ngBhq79koNYlwDdI
         hA2g8x4hOzRHD1QVdoiO/63TSj/m8/x8zS6G2yoRVwa2QEcKssNJSjIqTvJYxC3YLO5g
         jisWUGBb9RPplaSYpZc0rUdsXf1My+ydwycM7dnvXEHHuEUUuSjC/fqyIgnkQMTWm658
         JfoSCUmqG2LTExVID6GqJULJLPWEnaqiGqMt837+kbXh3sPXBWsRsaLbp9Jb1ovYCmDq
         Egz/6UMX/SUcuiXZWWZHnpmHLCrNeQJ3WA0NgvQbmVvzOnvHSJU2Z0xTaxteBMwgeQIZ
         1Hpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=mQIBDWQrbW6aJttTuVaA+q9WmwS0+Cm5tvawjfR+BGA=;
        b=k5eou300w3C7fDrtMhjeUWbUBtOXQhfl2hnqfe6+0ZBz9n7LKqA50T+T/+XLZmqkDX
         PCW2ETaqCHri2i+C/VR+ri8b9xlqgCpwA4sp/l/r31Jk2SN6JFyNObbvvh69FvCal289
         jBWTqeB5Ibx4Ay411xUSXInM3MpmSMykZuDwow/25xNfF3+K35yCRv92jZUi6vR1z80k
         Akae9IuOUw+yna3YJQsldbwEb2F/gG48VigHadqkwTQNh3bA/S1LNNGh5lySKzvIEOGo
         fOOj7EOIF4cJG6+YQy2msLvo6cdjwGnJx94KcjkK2s33q0HZ+AwSdX4LFpOHPHK7GloJ
         Fzsg==
X-Gm-Message-State: ACgBeo0hueaGuxmncyv/HQ8fx06u6QX/mp9rWMXu5ChSEIiOU+vyDPi+
        Y6LBQr5V9VGjBFr26KFScblHpQ==
X-Google-Smtp-Source: AA6agR7dsLUKD20bSQscM2N94MIbIs69NzWDIN5D+imJ//4K2xLI7HJcN0bnp69QKoNnM+lpHrLQYw==
X-Received: by 2002:a05:6512:68c:b0:492:2f73:6135 with SMTP id t12-20020a056512068c00b004922f736135mr5680881lfe.480.1660720210162;
        Wed, 17 Aug 2022 00:10:10 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id b14-20020a056512070e00b0048b97c7260csm1588802lfs.222.2022.08.17.00.10.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 00:10:08 -0700 (PDT)
Message-ID: <17b5d8e5-7d5b-05f3-e960-8a87a1183f71@linaro.org>
Date:   Wed, 17 Aug 2022 10:10:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: memopry-controllers: fsl,imx8m-ddrc:
 restrict opp-table to objects
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220817062519.20010-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817062519.20010-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 09:25, Krzysztof Kozlowski wrote:
> Simple 'opp-table:true' accepts a boolean property as opp-table, so
> restrict it to object to properly enfoerce real OPP table nodes.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Typo in the subject.

Best regards,
Krzysztof
