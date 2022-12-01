Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DD5C63F167
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 14:17:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231301AbiLANRm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 08:17:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231364AbiLANRl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 08:17:41 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98713AE52
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 05:17:39 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id d3so1857074ljl.1
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 05:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qj5jLfcl/TleK/jyR5GjEQ/vCFrxs7vu0/jWUhzk7hg=;
        b=pJO4lzpoUQ//8p0gzjVyR7jn5l2RNbS51IJpUzJ2PN8dgdGtzdvry4Z+gcXBNedJ1W
         K5vf9nwLbR7xSHnqxkZrSBuqX/16TGqxe6aVkdbtwA3Mw024KwtobnPFX5iOMiQwg9kt
         HEj7eOx80a9BIxlJeqtz04UQnnSgqWOwUzEX4bwGz2RfvhcZH+IRPFLE/jlma2bmFl2B
         lCU8Bcm1GkBVPGYIOHHYtgi6EkFrRzO0e8l4BnaKf9JKCf2c3KpnEihiPUbhsyNI0Cix
         aZSGTBrxCTQAxs5ek4s8H/fqAwMZWpnl+K7eso9khNN/i/euV4782wUAIhVavvCfkWbQ
         L1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qj5jLfcl/TleK/jyR5GjEQ/vCFrxs7vu0/jWUhzk7hg=;
        b=S2s3zKAcawjI4JffBKUh6KzjlvyskqJs9GUotk178pm1hV1awgMlEPHHl4Vi1sw7P3
         kssm0cItTfPOf2aWqt10mYwjPqBum7C+qihCp0u7uIY9faqWTCc1J4nEEOqVX9IRe+SV
         CZRTO4xuaRcIPz//7jGA8h52ociIEtxbvwpIC62/jfcZfI/iLhjm440cRkn4hwMKrUS3
         pa1Ar0+AkVFhVO3H0PhBNxfmODNN2d8kYcb+JMyjla0wlnOuJQQHGEb12pWLI/4MSEY2
         PDQBALs+38P2jMiP/QkazlCkhxilGz2DRW8sLpQ5C7V0xHYK93uKNX/KRo06nhE4ZcsI
         jxqg==
X-Gm-Message-State: ANoB5pmeN0Y7c/sP0eeD2PJRnX/pTXKtu4aIRHUPrORuYQQGJIiyaSiR
        bwjqQsn/mkpWlGlUlkmuxJrvQQ==
X-Google-Smtp-Source: AA0mqf5jftLRflWRJ9gzjPfBtLmiKax+CH+MiAuyYkqFcM2CcLJBzf79oA9VFqvfZDNJwzvi1L+drg==
X-Received: by 2002:a2e:95c4:0:b0:277:3dd2:beca with SMTP id y4-20020a2e95c4000000b002773dd2becamr22544875ljh.485.1669900657842;
        Thu, 01 Dec 2022 05:17:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f1-20020a056512360100b00498fe38ea0fsm645663lfs.174.2022.12.01.05.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 05:17:37 -0800 (PST)
Message-ID: <6f5ef197-057f-400e-d4e0-649ed5becd38@linaro.org>
Date:   Thu, 1 Dec 2022 14:17:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] leds: qcom,pm8058-led: Convert to DT schema
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20221201131505.42292-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221201131505.42292-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2022 14:15, Krzysztof Kozlowski wrote:
> Convert the Qualcomm PM8058 PMIC LED bindings to DT schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/leds/leds-pm8058.txt  | 67 -------------------
>  .../bindings/leds/qcom,pm8058-led.yaml        | 57 ++++++++++++++++
>  .../devicetree/bindings/mfd/qcom-pm8xxx.yaml  |  4 ++
>  3 files changed, 61 insertions(+), 67 deletions(-)

Note to myself:

Use subject prefixes matching the subsystem (git log --oneline -- ...).

Best regards,
Krzysztof

