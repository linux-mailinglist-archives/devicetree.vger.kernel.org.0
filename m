Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1B26579B5
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 16:03:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233484AbiL1PD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 10:03:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233477AbiL1PDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 10:03:53 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB8812A8D
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:03:52 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id v23so6621907ljj.9
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SAbzxvN7k7Z+MqJtpUCy5OzE3SxNhCKQRAfcgxSuip4=;
        b=fve/cbRfJt92/4S525YpOouK05jLG+FBs3Y6nuxqrBIKoi8ogCwVwpk3nFXM7zF0T+
         YxTOD1O6syEva8FXpmEJ3KnlqAOqODDxgC7YGlqdwGL3W9pRMvhym7uIQC2BvNYegyJZ
         81PDtib/pENDFyxS9G9VoIKANxeoi8xlLIgA6TJcosWu3PPhUpAlviIVITM0h/NDdC+c
         cXLqPG6EchvCnJZ54toDlhivhf+Nu4wS+BXQgwQMKJBBlbeF8ezKhUNJijynx7bpUhHD
         KQMA4Mj9yElhH/BTHyhJNidDs1ZMKwdNQ0VjQUZx1C/RrjBAzcnCjt5KrAcaYlCnVbQ1
         2Y7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAbzxvN7k7Z+MqJtpUCy5OzE3SxNhCKQRAfcgxSuip4=;
        b=HItwPbQ8LcoLqSnBC9BiMXhl+2RaKKGiLkVQ1uk4FLc69CUJZy3N8wKYy4ZmKsPO87
         czH9/hyQ1OW/4EG0AM2a0uJ3vmSU1iM+HTM7zp5rw8uKFVWWz9AGyMhwxKHoJYVwDG5b
         L+MN1AO//GKwaVfGw+7A7CCu8MmGG1NJQmXo08cNwby8k11SdKFyOm6/CVChqxS6wfaM
         IoBSpBeL6Qv/QC0CHioiSsON9Ef8HIBMHgbDMiHk5UXGxxREqv/tHbIl7Nbm/bD148fv
         kPcKq9xVp7mq2DxfAjdaM7w1VYyCY49xYeu3h/Cn1cT0K2/90m7HhvPDC5ay8379U/SD
         zh7Q==
X-Gm-Message-State: AFqh2kpuv16zG+gbStMXn00xbnsix0aigiAgstjpftKjG+CJA15jiZge
        7KTJ/1pJLpakOC3Nj6GO9ro/ew==
X-Google-Smtp-Source: AMrXdXvsrrnyubkoIRIiOl73MBcjF0zDuUkzvwjCmhdDcM21TH3Nrtmj7W8mmeJ6UUuTMkXw3WvJfQ==
X-Received: by 2002:a2e:8188:0:b0:27f:cc2b:7048 with SMTP id e8-20020a2e8188000000b0027fcc2b7048mr1291129ljg.13.1672239830263;
        Wed, 28 Dec 2022 07:03:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id x10-20020a2e880a000000b002771057e0e5sm1948121ljh.76.2022.12.28.07.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 07:03:49 -0800 (PST)
Message-ID: <f1d07761-9ead-7275-30f0-34a10f012dd8@linaro.org>
Date:   Wed, 28 Dec 2022 16:03:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v5 1/2] dt-bindings: remoteproc: ti: Add new compatible
 for AM62 SoC family
Content-Language: en-US
To:     Devarsh Thakkar <devarsht@ti.com>, andersson@kernel.org,
        devicetree@vger.kernel.org, mathieu.poirier@linaro.org,
        p.zabel@pengutronix.de, linux-remoteproc@vger.kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s-anna@ti.com
Cc:     hnagalla@ti.com, praneeth@ti.com, nm@ti.com, vigneshr@ti.com,
        a-bhatia1@ti.com, j-luthra@ti.com
References: <20221227145216.1524-1-devarsht@ti.com>
 <20221227145216.1524-2-devarsht@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227145216.1524-2-devarsht@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 15:52, Devarsh Thakkar wrote:
> AM62 family of devices don't have a R5F cluster, instead
> they have single core DM R5F.
> Add new compatible string ti,am62-r5fss to support this scenario.
> 
> When this new compatible is used don't allow cluster-mode
> property usage in device-tree as this implies that there
> is no R5F cluster available and only single R5F core
> is present.
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
> V2: Avoid acronyms, use "Device Manager" instead of "DM"
> V3:
> - Use separate if block for each compatible for ti,cluster-mode property
> - Rearrange compatibles as per alphabatical order
> V4: Place each enum in separate line in allOf
> V5: No change (fixing typo in email address)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

