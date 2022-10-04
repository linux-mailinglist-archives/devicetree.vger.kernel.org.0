Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCC7D5F3F15
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 11:02:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbiJDJCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 05:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbiJDJCs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 05:02:48 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D365356D7
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 02:02:46 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id d6so6065283lfs.10
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 02:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tK4LZo11zca+tLsAjcuD1CESTF+hM79Uf6j+5tewflA=;
        b=PQxFCBd5/9XK73B01/B35xjvVvAWRzHT9GSYyxUHTr8HQMt8/9+sIuOUo5Rl0rhMCN
         rXIzppUB0vl1cb03goWy5auBQaqCOufTvw/+u3aOfpGkEKl65/Z5K5gWEWE+/BMThBbj
         4wnr++sA7F7ulStggLBIG1YJdJugVnnJKWTUQ/g37rMXCrorvkdv3Sa5b0QgvU+d64kQ
         26GXGO609nJzlzLz5M3e5oqcWa4O9lJGlf8m3zBtS1vsplORDkbFtIsjk4DWwOrv6Rwn
         jm/zEtvbw/zXbPFTqxvA4mn5zShpDpLG0Q8oCCGVUG5vHguCieAOA5kGUe7+ORZ9+x5k
         YjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tK4LZo11zca+tLsAjcuD1CESTF+hM79Uf6j+5tewflA=;
        b=rzya19qaRNb3PrbDh10uvIqbr+DBLCRWOfGh04yf3gDKwFb37Kma47wwJCRP1yvUuv
         XpPLZXIxUB3g7+QigXBGD6BdFpRsQyVDf/bN35sHg3Upn/Z0iKvic7j56MvOZHlV3rXH
         wxKb+MosaozAn1jQtqfA5igStU7caS9SFuQHeFTKBIaMwpfJojyUE1Bco8FWVVvGaxWI
         s7BcrpYSMUbLBk5bNkg8kl/jPuK4kaVFW0l68ESLGfZEuUpPRFeH1EWSWXvcvaX4FKs3
         Q5s9yuyDUCSqxfnjWSLLdS/YnbDzT5mo/XoWLvXl8P99ZDtEWPfZBjF+jSURoLfmpzCa
         pPJA==
X-Gm-Message-State: ACrzQf3nV+Cd3f6r6sQzqb79oaydLXp4P5ygryJ2NGGUeW0o3tUens+d
        8w9SsvzNDxXms6el1P5ZMbW70w==
X-Google-Smtp-Source: AMsMyM4fvUxO66fK01WB0pEEGdvsrh8a2FUMx4ZSyDtuKqCEUKZ+qnMBCilTpitdP1ZiQ7BDZStsGA==
X-Received: by 2002:a05:6512:533:b0:4a2:f36:bba5 with SMTP id o19-20020a056512053300b004a20f36bba5mr6948940lfc.224.1664874164594;
        Tue, 04 Oct 2022 02:02:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w8-20020a05651204c800b004a03fd4476esm1821854lfq.287.2022.10.04.02.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 02:02:44 -0700 (PDT)
Message-ID: <48fba67d-20f3-7e53-8b5f-01f07452b4c7@linaro.org>
Date:   Tue, 4 Oct 2022 11:02:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 08/11] mfd: qcom-pm8xxx: drop unused PM8018 compatible
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-rtc@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v2-0-87fbeb4ae053@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v2-8-87fbeb4ae053@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v2-8-87fbeb4ae053@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2022 10:08, Neil Armstrong wrote:
> The PM8921 compatible is used as fallback when PM8018 is available,
> then remove PM8018 compatible.

s/then/so/

But it's a bit confusing because PM8018 is not "available". It is
"present" or "is" instead, so rather:
"The PM8018 compatible is always used with PM8921 fallback, so PM8018
compatible can be safely removed from device ID table".

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

