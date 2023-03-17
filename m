Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D89726BEDAB
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 17:05:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231680AbjCQQFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 12:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231567AbjCQQEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 12:04:52 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6547E2B9F0
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 09:04:31 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id eh3so22255772edb.11
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 09:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679069069;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpWjR5T4YPszgsa8wQLgertPLMMve2br5t22Fl+0sm0=;
        b=fABPtOSoDjo+xUs0qGbJ6koDH9yRh+sZRztQ3HdN5mBO7q6r8Z8fXEBBSR5oU0S7AO
         8hUKsRzjSfjBUtctsHhzp/RuIUofvNIAz4om6450JdyTQ1u91Zis3xJrhCtlAUbVIB3d
         fjfjYtcbSCRWJN8USxSKVUIELrxPPhWqHE4Zh03uOWHRIGdF4M20Rn31+OjVgQKXoYd8
         loTgDYoKyWVCGDk0PDbxJO2a1j0RSO6BONToemOoNYllgidbGs393yWImbZPF+wTJVaF
         Ub7YS813GbDEqeqE3LuV0m7rJ6X8+c2InR2yo1ODlFp93o5pFAeLX3yi70/p865blmfA
         N8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679069069;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HpWjR5T4YPszgsa8wQLgertPLMMve2br5t22Fl+0sm0=;
        b=STAEkgOvvUUiA4YgEJdaFKHFILN0vYLtGf9L9H0UjXI47Rs9xFppZtb33L2Yitzk4U
         Q17iDIYNEPNz9hKhbN0Ym9cncyeWfMk8KK+obVUfBsrGVXNHt7uTKrJiT6UrzvvQb3kF
         y/DDqgUQsWq3B3rAOhgFiy21FBNMXeGrz/6bGJcFSxeiwYKMxqNY7YAPhf8k7TZeMgye
         cXIg+3eaykbXBvpx37qIJFkIo/GVfek5VT6PN00jvhCvNbrBgubG/JKTKTxm9SLxVLVn
         Qq9jGLxm9at2JyMnnMIi6AX/iPA9xZ2Qw9O1xwPAMRbVsnDPddDUwX8aH/Ph/rD2/+6s
         Pdew==
X-Gm-Message-State: AO0yUKXmsMHuT4RXs0iHKlQ31+U894u6Lpk5gCoZC8Y9ktA6zOiZy+VC
        cqB8RrB794Y1+voAWEG8b9GiIg==
X-Google-Smtp-Source: AK7set9fWadRk/uHtrqamdv4bgtUn+xpY3M0II6ndB52uLrpGaqcJxaaCg2fL8tlEZdFcWfa3ATinA==
X-Received: by 2002:aa7:d4c7:0:b0:4af:7bdc:188e with SMTP id t7-20020aa7d4c7000000b004af7bdc188emr4375490edr.16.1679069069724;
        Fri, 17 Mar 2023 09:04:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d013:3eeb:7658:cec? ([2a02:810d:15c0:828:d013:3eeb:7658:cec])
        by smtp.gmail.com with ESMTPSA id w16-20020a17090649d000b00924ffcb65e7sm1130427ejv.49.2023.03.17.09.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 09:04:29 -0700 (PDT)
Message-ID: <48afb383-f0b3-53ad-b20a-9b1fc93f59ba@linaro.org>
Date:   Fri, 17 Mar 2023 17:04:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] dt-bindings: leds-qcom-lpg: Add qcom,pmk8550-pwm
 compatible string
Content-Language: en-US
To:     Anjelique Melendez <quic_amelende@quicinc.com>, pavel@ucw.cz,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andersson@kernel.org
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_c_skakit@quicinc.com
References: <20230316192134.26436-1-quic_amelende@quicinc.com>
 <20230316192134.26436-2-quic_amelende@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316192134.26436-2-quic_amelende@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 20:21, Anjelique Melendez wrote:
> Add qcom,pmk8550-pwm compatible string for the Qualcomm Technologies, Inc.
> PMK8550 PMIC which has two high resolution PWM channels.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Your driver code has build warnings, so anyway new version is expected...

Best regards,
Krzysztof

