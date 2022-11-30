Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC9663D4E2
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 12:47:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232822AbiK3Lrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 06:47:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbiK3Lra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 06:47:30 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9CFA2FC39
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 03:47:28 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id c1so26509762lfi.7
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 03:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rB7pzeHRqSrByuPF9pY+gAHOjNGOoHl6IRVtffSweXY=;
        b=SQfKBnc8CdblkDxXdof//gkPsqXO0d6H9KvhOcaWZj/P+QFmTq9wd91RRN2C38+x4z
         IKcSfl8qcJHb6R3Q4wOxQQ1PCWPSzks2AR4QSal5k0cAcCp7QZww9yxjFx19LVrzrR4o
         6scatwgsrKcF5VQ3A/KnzDc1ahWseUtv+8Ms54QaUWiRLhvzfLiqo66wYRCpNr/tVMt+
         QWfHz9hsqspvB3ZuzBS4PZIFhRjgfEyOGZ3eYvMlG6X3nb7Xndn2KuiWRQsK4rK3PV7f
         xGKwP6eaqZLrEtqRLdlPk3IjhGYqKYR3fW8N+fF4FKJpkc+WRaTeYvExy0/rfbXodzOE
         F5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rB7pzeHRqSrByuPF9pY+gAHOjNGOoHl6IRVtffSweXY=;
        b=LkGoPHPTsEebFQ3xTAmS8Lkxa8/eahH4jBApuHIUzCUUBJWwuOZHv9aPqF8cKVKcUj
         Ykj/nzuBrNhlxTsftSoQn8Tva+dIdFCQ580rxxDWecbxbeiAw//YrpWqhnzV/7zw2cqJ
         3j69/1sOSL6O3n8nUgmkVYJcBBqF0ilaen+vWR43yrwKTHYkXV0rNnQqny8Xca3ME7D3
         bXGhYmm+yQjRyTaOd/3QFDyh/tPqigceSj5ADNaPiz9jFZc/syOb1jxq2vRNrioSZx2k
         PfPUpYbu/AE8zLB6O1rk3svRZXqGua2QsMu1Ye8l1eYntJhkvurjPiOhrdSH8rcOI38s
         pTPA==
X-Gm-Message-State: ANoB5pnFJzZuozGDn1mnxRUHi9QZmbHLAP6+fE5Wtp/mIWxgfZae6nQ2
        O0RWoc6Jepa4ExKa93V52YNAzQ==
X-Google-Smtp-Source: AA0mqf5c3J6XXyRMdMQcw6oNGd8Cqr2ESOw/rcMuA8kc80RlsND2j8R0sqYZzKOFAmBPTO9OXvT2vg==
X-Received: by 2002:a19:6458:0:b0:4b1:d925:da5b with SMTP id b24-20020a196458000000b004b1d925da5bmr20006262lfj.149.1669808847191;
        Wed, 30 Nov 2022 03:47:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d25-20020a193859000000b0049602a81111sm223902lfj.107.2022.11.30.03.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 03:47:26 -0800 (PST)
Message-ID: <18a86f17-3cea-c880-0ba6-b83f3a48ce00@linaro.org>
Date:   Wed, 30 Nov 2022 12:47:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] dt-bindings: mfd: da9062: Correct file name for watchdog
Content-Language: en-US
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        linux-kernel@vger.kernel.org
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        devicetree@vger.kernel.org
References: <20221130101426.5318-1-cniedermaier@dh-electronics.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221130101426.5318-1-cniedermaier@dh-electronics.com>
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

On 30/11/2022 11:14, Christoph Niedermaier wrote:
> Replace the watchdog file name with the name currently in use.
> 
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

