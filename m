Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8B0B6F6713
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 10:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230273AbjEDIPI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 04:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230033AbjEDIOJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 04:14:09 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D71A49C6
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 01:11:07 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9505214c47fso26113766b.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 01:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683187866; x=1685779866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6CYMylkHCMSXUyd+rcJNdU9Hdhuug+DuXN8BtDJAjR4=;
        b=Bh9u8HdrTENBK5z8ipg/HJ05Q8EnRf0PkqwK7I5S3/WDSKJVH5KlMI9KC1Fmd/IXuP
         UEg21x+oxT0GEODxzZyZCaOxALFhEB9YmHNG+jQVcAOf5MM4rY57AKx8C0forcAeRTOR
         DHb+4yroYKJkY0fEwNCUL0FJp7+koAwFhgs/UR3QkPJG8LY7tOd2o4r0Ma2zUwqj7EPy
         lL2LQq2iDiVk+NMqCdWVzH1Eu90vMEsT6P83eMZpIUYpqg0z9Eug0eFNjt/NDTa/iCkZ
         /saAWxWmPtUbjod6/BeTaE2wKdxE+k3aEbkP23tKHASVJ/iTiddHrDmQoJEdPaUIMlZD
         tMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683187866; x=1685779866;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6CYMylkHCMSXUyd+rcJNdU9Hdhuug+DuXN8BtDJAjR4=;
        b=T4STmA743IJ1erUdC5OC17a41h6C9+C0Enu9Ff2luiMBGJTvDKu1Qqu2NDYXzw/Trk
         v0HrFLaEDZXajzdT2OQ8KgzYDnCzuCCr4fXOht1BuooKv3As6wGu7bhUkTX8/WSQqeTj
         8vDD2Lr9l2KqUhD9lLNG2sYRZFmuNgTdf0wuy25Iki7Ia75IawXn7JrVN7Ulu9+wARlx
         3mWeRwJkQ7ykNyDGcl25oiBFWN6p9M08m3iXNTVmV8KDIiXWUZYb9hoKgG6SSQQOydkB
         lpoffE5Wevxh3SJXwC4R35RPd1+hQtIHNEOiiidYf3RW8oVsW6xP6H2apPtelU7561Gz
         JeGA==
X-Gm-Message-State: AC+VfDwvi6ACx2s4k/KzUXKN43EidEVCQF5xD7t8DfVoL5XzbnzHEaiG
        sZd5mWI87WW3+4lhnJXFA6iqLQ==
X-Google-Smtp-Source: ACHHUZ5WZiu8dPnwUYLBKLj5ppxFLBzCPQbRKPTgYnay8eogQpizGs+Wk2pgW6Lcb4XlqPmqDl0gJQ==
X-Received: by 2002:a17:907:1ca5:b0:94e:4489:f24d with SMTP id nb37-20020a1709071ca500b0094e4489f24dmr6546665ejc.61.1683187865826;
        Thu, 04 May 2023 01:11:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id h16-20020a1709070b1000b0096593aa87d6sm1094462ejl.210.2023.05.04.01.11.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 01:11:05 -0700 (PDT)
Message-ID: <84a345aa-1426-2d1a-f7d6-df3cfc10ae3a@linaro.org>
Date:   Thu, 4 May 2023 10:11:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v6 1/3] dt-bindings: misc: esm: Add ESM support for TI K3
 devices
Content-Language: en-US
To:     Neha Malcom Francis <n-francis@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, u-kumar1@ti.com
References: <20230504080526.133149-1-n-francis@ti.com>
 <20230504080526.133149-2-n-francis@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504080526.133149-2-n-francis@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 10:05, Neha Malcom Francis wrote:
> Document the binding for TI K3 ESM (Error Signaling Module) block.
> 
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks.

Best regards,
Krzysztof

