Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C857C780B82
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 14:06:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347639AbjHRMF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 08:05:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376785AbjHRMFH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 08:05:07 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DBD35AC
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 05:05:05 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-523bf06f7f8so1011143a12.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 05:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692360303; x=1692965103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ObokF9IYYp4xLA4Uz8p85g2Cju43LPtSFjRJtFsO75E=;
        b=J9t+Of5OxBo8l4RWlLRDWJ0yVnKEJM751U/KaswfTizJVgjSSH6e2piANRTJDwZpbn
         3la5TrVU/jmBu8IgH1Uuo6uvXGsIcXvMiaaoWWzqapUG42UGixWsV1jjX5FMqaKAeOKm
         2Jm7iyg2UpG6xD8FwRanppJidDLQ3QZCIOZVD+J8OMRxoMPgYcxVnhxW6n5kMhLqVkHl
         V/uYemOt++YyISoXDmI2pQa/HFuSbSafTOJS0y3Bbvk7LipkIMLUpyu8nAMOVSH/MU57
         AnGeQhlYNDVfi9S9G8cVxicEe1y3OvX6Vh2DA5SdI6OnfjGBCvoklNkUNQJfBEUAZnUy
         rqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692360303; x=1692965103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ObokF9IYYp4xLA4Uz8p85g2Cju43LPtSFjRJtFsO75E=;
        b=CTHYA5aYctk17G3s7pfrwXD0NWA7MZKHUaha/X07Hq3RU5FyoXNeZ91izQJmJ7woPj
         qOY8syJFGQ7/iLw0aJkyFF9P6KT2MI+LSo7weIb7gGDXb0s6ek06zEot7WLqSrSE44HN
         UJ5t7sxCebszOm8M+OS0Y7w9bF6lNvw+6cTTYdS9o1vQD9z40xtiKOksCLi/uKhjn0hC
         XQEuQhQxTfxXNypDRYV4Oj7AlmSkR5fQnVrt49ry9ENECRYEgkatmjfHryiBoWQttRuc
         97aCdM+oUk78k13/sloGLps1NE82JhTiWBbvXEAZuYfCiDxSizlb8v69RcSPr1EQ5YmM
         PIfQ==
X-Gm-Message-State: AOJu0YyNDCav3nrVmPQ2iUqc1hwabpU2mol/xPb/fmxqQrlzZORAXGc9
        QBvU550MnxEkkhFrCBSWR8Agfw==
X-Google-Smtp-Source: AGHT+IHAGZo6UtTApYFqDDLtemVJleASfUo1D1nVb9WJkB5Vpaf50KcdCgko42x4/5Osov6ltkHtgg==
X-Received: by 2002:a17:906:3018:b0:982:c69c:8c30 with SMTP id 24-20020a170906301800b00982c69c8c30mr1743241ejz.55.1692360303693;
        Fri, 18 Aug 2023 05:05:03 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id l4-20020a1709062a8400b00997e00e78e6sm1108487eje.112.2023.08.18.05.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 05:05:03 -0700 (PDT)
Message-ID: <53729f0f-2341-4329-8b2d-95dd377752d7@linaro.org>
Date:   Fri, 18 Aug 2023 14:05:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 0/2] Add dma controller for hisi ascend310/910
Content-Language: en-US
To:     Guo Mengqi <guomengqi3@huawei.com>, vkoul@kernel.org,
        dmaengine@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     xuqiang36@huawei.com, chenweilong@huawei.com
References: <20230818100128.112491-1-guomengqi3@huawei.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230818100128.112491-1-guomengqi3@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 12:01, Guo Mengqi wrote:
> The patch set add driver and device-tree bindings for a dma controller
> on hisi ascend310/910 platform.
> 
> Changes in v2:
> 	- Use common driver apis: dev_xxx() devm_xxx()
> 	- Fix dts-binding properties, based on feedbacks

Please be more specific, what changed?

Best regards,
Krzysztof

