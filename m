Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B14BC57C498
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 08:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbiGUGo0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 02:44:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbiGUGoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 02:44:24 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CC375A14D
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:44:22 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id k19so685233lji.10
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9EZ/ZfJ5Dqv/Z3vw3hGwnwu2K6278KtSj/3KJUUKvB4=;
        b=C+NIwK6JmyQSy6TZnTxWc8AE+VxdpZU00M/uR3FaIduX2i1aGcHp8PW81i+6ey+5ue
         rkjoDwpZ0e//SR/C9AhcyQ/KdHZ2X4cHoOVPYnEdcLbOqej9PdZwsrFS/N8R8zMG0q3m
         bmoiY+XaYattEv5qCdDDghTcCwpWhc/bU+a9Tt/9e+82i8zLPDy4/dOJGuE5n9kqtK6D
         r8RmDV+Pq4fAHW3E19Kg3XaHr8imi4zRGwZZ+W6J4hQnVsXodmTLK4kIkB/OrHA/veTL
         ZHMPb2JpXU2+DH6f5KRPxpc0R+fpte1fUma6KjuRz0dnu2BYE33TTXXKAdjgIvosvEyn
         r6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9EZ/ZfJ5Dqv/Z3vw3hGwnwu2K6278KtSj/3KJUUKvB4=;
        b=HGGd6qfsyT96652mCBC9yYbbMTV2UrR6Qjik3zVNHqllZ7xKTIXbkfhbAMWWH37s7a
         CIKELZ5iWMQtNTgtwsSjVpxgXbjvhYqtfORmz8mEA4cQuQw1Rgc31Llr6F04iItiCuDj
         ZmvgAvfvHSlOE3mGoKMLZeZOFWmfx4XB/h/Xjm1bhnfE2btdSKxqx8sLrRHx3Q16ga/2
         CumqehXq7qeTe7IiVrcYp78b07qMFDqYuZwQ6wqPiuxTJ/wlRreR/pFo5ZpirnwP2iYc
         7C5LscxS/hUKFetoPyXL7qmgMXrBZXeYFNYQD0CyO9YaI4ilFXTSbHu3kwbmGaB+przH
         iEGQ==
X-Gm-Message-State: AJIora8xvQE3TxX+AiF22TxhApD3Fxy7/aFA4ApYgwpdxgWQZxRi28VZ
        vRg2rhb58x7Z7RlRgyi/Wax3KA==
X-Google-Smtp-Source: AGRyM1sAMFvj0gKcnXVhV+I8VCvP4qPZbRcyE6t04/7Xi0WloWvBTC4tmIjUdUAAD0J3xuGPkDDjeQ==
X-Received: by 2002:a05:651c:54a:b0:25d:6c19:448 with SMTP id q10-20020a05651c054a00b0025d6c190448mr19349273ljp.239.1658385860890;
        Wed, 20 Jul 2022 23:44:20 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id m1-20020a056512114100b0047f7464f1bbsm242803lfg.116.2022.07.20.23.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 23:44:20 -0700 (PDT)
Message-ID: <a635754e-bf41-4058-5fbb-57ead36b7128@linaro.org>
Date:   Thu, 21 Jul 2022 08:44:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [RESEND PATCH 2/9] dt-bindings: arm64: bcmbca: Update BCM4908
 description
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     joel.peshkin@broadcom.com, dan.beygelman@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20220721000658.29537-1-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721000658.29537-1-william.zhang@broadcom.com>
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

On 21/07/2022 02:06, William Zhang wrote:
> Append "brcm,bcmbca" to BCM4908 chip family compatible strings. Add
> generic 4908 board entry.

This does not explain at all why you are doing it. Improve your commit
messages.

The explanation you gave here:
https://lore.kernel.org/all/b8eda882-6838-ab7d-6e2e-131e3125b16f@broadcom.com/
is also not really sufficient (and is not in commit msg). Moving things
around in Linux Kconfig does not justify adding some new compatibles.

To be - clear - this is not a review, so you cannot add Rb tag. If you
insist on a tag, then it as counted as NAK.

Best regards,
Krzysztof
