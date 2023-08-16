Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8BA77DA05
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 07:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239388AbjHPFyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 01:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241926AbjHPFyF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 01:54:05 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16E3519A6
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 22:54:04 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5236a9788a7so8356583a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 22:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692165242; x=1692770042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LkzrRsAYqrGofyJHqddcC4Cgi7d2HxMzD8UKMfbqpyA=;
        b=zdyH7p8r1t+d7AodepeRORQf9lv8n693thNDOqgqgKacJ8Gkd3CprrEcZ25D+0Ae34
         n69WmK24u4a7Ekjca1g8YBEROjM4gognKgAvZh8mFXWVMOa1losPxbwKiTbDhd4sbRpS
         v0fnixlrVBFsNMviJsNB8GKlXWySsbu+yBZdwNX++s/V5K1a4FgvVHZ4o1s5mIJDbKnm
         ytQAfVqC0rpfZ/jUTAtKFyfgS2nakoZnuf8WrYysR/40cpnbsFEGk891b3PyS2rrUa+T
         /5zQl4+k8Da5kkuSCZ7wMc4toIhjhvanwsz3DBO4b/aTMNlNlvCeF0jvWThKhCgUUNdN
         +aWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692165242; x=1692770042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LkzrRsAYqrGofyJHqddcC4Cgi7d2HxMzD8UKMfbqpyA=;
        b=LK5ea/umgzqwMTW8dJftyuryTJEv2yHyHp59uGLPA1RHha6yu3hxCKDCjjJA9z6LDB
         2bV+bnar0OrIXspWRIyAEf3/m3IlaN+Q6x/r0QRV61/awPihZJ3VuDPuH2g6SN0iiEzo
         dF8XIeN2P2DGx2B1IanMWQoZy25uflT+paRcVUZCAYoncLUThwY5ayrA7cX/8vCaWSoH
         hSQhFalpuXKwZdnterhMpeA7LNMFEiL70CGx1FDnIqH8W1Mgt07K9PMAKrt4KwBvK0sc
         7Jkz8xila4IRGIkxBny4Gtt9xn3QAZ0pxRX6EMA5OoJUrgQaUEZYcxK5udytAVG5sMxk
         nAMQ==
X-Gm-Message-State: AOJu0YxBBvj5FUxXP4e0js0MJMXabKjQDzn7H1OPMTlPGdu4FQUetjHq
        1ge3BssqjUTNVXlRpm6YIN8Ijg==
X-Google-Smtp-Source: AGHT+IH8gmG+hio/x9+oLX/5LuYk2m5XfXtmHrNThBUEMthCRZbysoAmJfuRw8UWaizg01Hv0d8QBg==
X-Received: by 2002:aa7:ce14:0:b0:523:69bf:2bd3 with SMTP id d20-20020aa7ce14000000b0052369bf2bd3mr778982edv.13.1692165242622;
        Tue, 15 Aug 2023 22:54:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id b5-20020aa7c6c5000000b005224d960e66sm7804334eds.96.2023.08.15.22.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 22:54:02 -0700 (PDT)
Message-ID: <87111632-f032-87a4-159f-1dd5357bac70@linaro.org>
Date:   Wed, 16 Aug 2023 07:53:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] bindings: mfd: qcom-pm8xxx: add a property for rtc-pm8xxx
Content-Language: en-US
To:     Anvesh Jain P <quic_ajainp@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Venkata Rao Kakani <quic_vkakani@quicinc.com>
References: <20230801115143.27738-1-quic_ajainp@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230801115143.27738-1-quic_ajainp@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/08/2023 13:51, Anvesh Jain P wrote:
> Update rtc-pm8xxx bindings with disable-alarm-wakeup property.
> 
> Signed-off-by: Venkata Rao Kakani <quic_vkakani@quicinc.com>
> Signed-off-by: Anvesh Jain P <quic_ajainp@quicinc.com>
> ---
>  Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> index 9c51c1b19067..e4f1d2ff02b6 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> @@ -42,6 +42,9 @@ properties:
>  
>    interrupt-controller: true
>  
> +  disable-alarm-wakeup:
> +    description: optional, disable alarm wake up capability.

This was no tested. Missing type, vendor prefix. Additionally the
description says absolutely nothing, just repeats the schema.

Sorry, does not look like hardware property with such description.

Anyway sending it without DTS or driver is also no-go, so NAK, sorry.

Best regards,
Krzysztof

