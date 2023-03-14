Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2363F6BA055
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 21:02:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbjCNUCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 16:02:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbjCNUCs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 16:02:48 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4A0123A7A
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:02:33 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id eg48so7599983edb.13
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678824152;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bAzDU1mImdiKGcR4/W+a+MvUJR8ih1RoGLE1OTXKBwg=;
        b=t2kIyis4PP4N6JuCVsaZkFIpCZKgxPvSO8O9Ue/Wgv+uif2LmHAFg5AhlM122J3XbM
         TDpqf4fbrieiX2DS6WNlYA8EI7OZkpMz/i5n7LcjRXflo5RsMHNoYAE2fGUh/+xyvKk7
         fwqsMKunoKJxD++gbh0on47IEVX9UL0/fbNEqAIeNGpQcyTeIf7qXn2XsjzcIRfJG9jq
         8dL4iVlADTYCP4PrQtMN3HrnEjo71GB4XP9gqFPnXK/jDFiZw9NmLgBey2NBHS8Af6Sm
         NSnmvf1SSHfYfVAgVjykb96h86HeuU9b6MA/77SDJIlmyu5i1AaAOchnppeGB3fJjAkf
         r0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678824152;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bAzDU1mImdiKGcR4/W+a+MvUJR8ih1RoGLE1OTXKBwg=;
        b=kAZFRfv9qYGdzNmxZ1RKi/mxcDJT8L7oy8KpN1al9zWMB+5nOFECrDSuJ4GrVXSZ+V
         5CpFI6kYMZ9DCTziW9g/S1Zu8R+xsCRdvcS2CejVqcVx9xH1FsNyLAKdml+D993iaDVU
         Qh9AFfI3r48ofSXyc+36LhpyhbhhOxdQuw0FrtQ+6g503Ms4DVojFhpEZxM6j2ZD1pxg
         4dfT4g22KHwReRrZ/AIkDhqcyqzhgNfOmJzUmabq9AVJ5tNLPX0IvyHiXAv0mjNMO+4Q
         axl2vW6oFwwPCnpnUR7zeNrP3QrOab3mi3plE55RiQnRl3ciOUuesxUGTC9nr8t8lzVD
         kMlA==
X-Gm-Message-State: AO0yUKWZ8TYchNVOjNGXWlqk5eOdj94P1Dx3AH8qXpdRLt0my4FRbw79
        WddRYzqGJHS4H/90+SabutW/Vw==
X-Google-Smtp-Source: AK7set/r+LOwRRG6wfa3d2yhkYaXx59Ow0QzNK09x9uwVfaNqf6Y8hwO5Z50plClC/cSYAbI1wnt4w==
X-Received: by 2002:a17:906:51a:b0:8cf:fda0:5b9b with SMTP id j26-20020a170906051a00b008cffda05b9bmr3851283eja.22.1678824152274;
        Tue, 14 Mar 2023 13:02:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:642b:87c2:1efc:c8af? ([2a02:810d:15c0:828:642b:87c2:1efc:c8af])
        by smtp.gmail.com with ESMTPSA id xa13-20020a170907b9cd00b0091ec885e016sm1551841ejc.54.2023.03.14.13.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 13:02:31 -0700 (PDT)
Message-ID: <672c01c9-e52b-c4ad-690b-4b6b5f6e15f9@linaro.org>
Date:   Tue, 14 Mar 2023 21:02:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] soc: qcom: socinfo: Add IDs for IPQ9574 and its
 variants
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, devicetree@vger.kernel.org,
        konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
References: <1678774414-14414-1-git-send-email-quic_varada@quicinc.com>
 <1678774414-14414-3-git-send-email-quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1678774414-14414-3-git-send-email-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 07:13, Varadarajan Narayanan wrote:
> Add SOC ID for Qualcomm IPQ9574, IPQ9570, IPQ9554, IPQ9550,
> IPQ9514 and IPQ9510
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/soc/qcom/socinfo.c | 6 ++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

