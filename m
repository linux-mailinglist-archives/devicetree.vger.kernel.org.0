Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C374683318
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 17:57:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbjAaQ5W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 11:57:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231573AbjAaQ5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 11:57:21 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FB31C311
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:57:19 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d14so14824308wrr.9
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JRIRICEmrabbDC+z0qM+J82wcNj3dmfUYUXd7QSBt1w=;
        b=dy5A3IWNvdGGhkzZ4Hj/Cfw51B8qkHkcMUzU3/PlUeCci5HdMHsIC1yFgUpWlENTQT
         O5t+pLbzM/gY0Pf8v407BzziOP0eiV1/aW2wxhteWADN1oGKiE2NO3C2kX8YnzB6NjVJ
         AC7rtWjy01xrw/iCU9vOwsKQI9/ESEkwBSUNluB/+Xzx7mrz0dUNYCYulr+jvHz1QpFd
         GW+Hle5B6VXl1UVMpjO/uo96iZLVLXNlcgvRhpJjWU0qARNkD5W/+gagohEizqgCGJ0K
         O5CGmYfNn8mnZPjJIhH1Iy0lMQY9Ky2PEspg4/DhK9FN6eL3gSj7dH6tsikCwdyGDQbe
         DLyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JRIRICEmrabbDC+z0qM+J82wcNj3dmfUYUXd7QSBt1w=;
        b=uxCVUmcNVTT57HQ11BUvoR+EBB2d0iXf3ubf1Aw8OY4qks192l0h2vpBXJofcsk+ua
         1clNWp/WjJbhRGMlxsjzkupMno2d1K7PmiWbZYA8PTLvvJghlebSGEfZsI+8qWzGZWqQ
         jiS/m3v14XR6aToxXIOr2GIERMeC2LgdOj6pDap1p2M8N7QcDv2k0Rekkyv6tqi/hR59
         3Kz5CFZ85i+w2frG5TeeBDx26BlRU5hWn6WfRj2UFvNiBqgMWBQz9Jc/lAy9/7RLP2RN
         nJPBaLICfgm5XbIIH+FlVUsolt6kTyP2CcpsLPXVsg2mVDL+5SheEwNuq4Qbc0MZuwFc
         R77A==
X-Gm-Message-State: AO0yUKXcpODU1Lde1hoKlw4E0G1GEZwTk9bH22HvUl1bT9luR4M2rRx5
        ZusgRvhB+7/fNhRHCIsIFkxgwg==
X-Google-Smtp-Source: AK7set+3+ztKUDCKlgPVjR+GgF5ntUTYGyYRvo//VfdzWE0w1Fddd6HXGe9FrQc6VumDHMX9cCqrwQ==
X-Received: by 2002:a5d:62cb:0:b0:2bf:bdbd:25c0 with SMTP id o11-20020a5d62cb000000b002bfbdbd25c0mr18271625wrv.15.1675184238576;
        Tue, 31 Jan 2023 08:57:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i6-20020adff306000000b002425be3c9e2sm15364628wro.60.2023.01.31.08.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:57:18 -0800 (PST)
Message-ID: <a1d2ac4c-0763-5c92-be21-22820c376438@linaro.org>
Date:   Tue, 31 Jan 2023 17:57:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: mmc: Add cap-aggressive-pm property
Content-Language: en-US
To:     Hermes Zhang <chenhuiz@axis.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     kernel@axis.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230129023630.830764-1-chenhuiz@axis.com>
 <b43f26c9-f76c-c898-aadc-ce3ee7b7823d@linaro.org>
 <b125f25d-94c7-dd5b-28d3-3948c36ef4e0@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b125f25d-94c7-dd5b-28d3-3948c36ef4e0@axis.com>
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

On 30/01/2023 07:54, Hermes Zhang wrote:
> On 2023/1/29 18:58, Krzysztof Kozlowski wrote:
>> On 29/01/2023 03:36, Hermes Zhang wrote:
>>> This commit add a new property: cap-aggressive-pm to enable the
>> Do not use "This commit/patch".
>> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95
> 
> Done
> 
>>> MMC_CAP_AGGRESSIVE_PM feature for (e)MMC/SD power saving.
>> Why this is a property suitable for DT? IOW, why this isn't enabled always?
> 
> This property will benfit for the power consumption, but it also may 
> degradation in performance as it will prevent the
> 
> the card from executing internal house-keeping operations in idle mode. 
> So it's better to config it from DT.

Why? DT is not for policy. How you described it, this is policy or
system tuning choice thus the job for Linux (OS), not for DT. So I will
repeat - why this property fits the purpose of DT (describe the hardware).

Best regards,
Krzysztof

