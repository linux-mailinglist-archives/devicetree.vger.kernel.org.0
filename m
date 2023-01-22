Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10F70676D9B
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 15:21:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbjAVOVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 09:21:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbjAVOVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 09:21:18 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 076E2144BA
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:21:17 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id h12so4637124wrv.10
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDHEJxrfaoA/zzWo6j8IYd6HxMXyLHjGLtfLgW3x2Ss=;
        b=iDZgYClBJCyQa0z+QdNNSM9WoFfVJ5MCscum0P8928woDIChwosvADGgMmgzzSO3d7
         umg3DqBQa5f5VJ2u+05X2nb4IUnUzPBycxVrvobkpnHpryPt1qpXJuWcmBQOAj2dOjwv
         kWk37WYHTWX0iJs/doSg9HYDfKteSzQ0s01Fs2V1ujdDe68/tBM8aKrlzDhRC+1bd3Kk
         lkx9wSS0EKm1l1gcA8SNmChS6SW+BibQWeGv82UNTcSgQqq6B+qrSHMQPHnpt5u2kdCj
         LXhDOqeND0WqpxEq5cRSjSAdbvi1Kp9kkdKgznXFI1b/E1jr2CwuAUS1A1uMB0qp9AZR
         EbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDHEJxrfaoA/zzWo6j8IYd6HxMXyLHjGLtfLgW3x2Ss=;
        b=DK4GawCfuq1WF1hs27jOYcjT0L7RyVGDUAd/7H51R5uoT5s8r8Y9ms5zESQ1h5LKQD
         M7J3qDKCzkPYW3CeJiB4Yk0bvP1E1P4o6jJ0LpzCw+c0KM93q1WRuXSJKGMACfFSsaL7
         /QrO2yLK2QLkKvtCrdYERmOkkcDB3Jxc3F+tz171rUfnl7ZDBT8/7ktuA/XP/qMdKK0+
         D1/OrPZeuXMSI+OAXfrKXP9S2spjvDCI8AfzAaPUlb0Uk61G5JoSVZ8FtsiYp9sMIgqQ
         wOrVUgAw4BwDlEe9Ulbo4RKK6UdWUIzqQj4g8qGs7ef3Q/x1ZIhZLSFLsL6hY+0WEZx6
         OuKA==
X-Gm-Message-State: AFqh2kpp8khY9NnUYn3vD6OHgvqbs/50IGavM3E4cC97Su/aKvAHMXj9
        YE6IKKtgIa4FPrDIqUPWXSGL1A==
X-Google-Smtp-Source: AMrXdXtI5XS6sdxzHUPIeZA65QgO6mUuVXrkUnSBn8llNPe9hOPQhs9dQEprQAbdn95gaUOTr3gNWQ==
X-Received: by 2002:adf:c78b:0:b0:2bd:dd13:170f with SMTP id l11-20020adfc78b000000b002bddd13170fmr22170472wrg.26.1674397275531;
        Sun, 22 Jan 2023 06:21:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r11-20020adff70b000000b002bdf290efdasm17699309wrp.58.2023.01.22.06.21.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 06:21:15 -0800 (PST)
Message-ID: <9712cda0-e50e-94ff-bdab-5f89459badb6@linaro.org>
Date:   Sun, 22 Jan 2023 15:21:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/3] dt-bindings: add Wiegand controller dt-binding
 documentation
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Za=c5=a5ovi=c4=8d?= <m.zatovic1@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org, mani@kernel.org,
        hemantk@codeaurora.org, quic_jhugo@quicinc.com,
        andersson@kernel.org, Michael.Srba@seznam.cz, arnd@arndb.de,
        dipenp@nvidia.com, bvanassche@acm.org, iwona.winiarska@intel.com,
        ogabbay@kernel.org, tzimmermann@suse.de, fmdefrancesco@gmail.com,
        jason.m.bills@linux.intel.com, jae.hyun.yoo@linux.intel.com,
        gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
References: <20230104133414.39305-1-m.zatovic1@gmail.com>
 <20230104133414.39305-2-m.zatovic1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230104133414.39305-2-m.zatovic1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/01/2023 14:34, Martin Zaťovič wrote:
> A Weigand bus is defined by a Wiegand controller node. This node
> can contain one or more device nodes for devices attached to
> the controller(it is advised to only connect one device as Wiegand
> is a point-to-point bus).
> 
> Wiegand controller needs to specify several attributes such as
> the pulse length in order to function properly. These attributes
> are documented here.
> 
> Signed-off-by: Martin Zaťovič <m.zatovic1@gmail.com>
> ---
>  .../bindings/wiegand/wiegand-controller.yaml  | 83 +++++++++++++++++++

You still miss bindings using this common properties which will document
"wiegand-gpio".

Best regards,
Krzysztof

