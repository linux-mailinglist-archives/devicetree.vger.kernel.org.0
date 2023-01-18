Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC577671FF9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229779AbjAROoj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:44:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbjAROoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:44:24 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EAE237540
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:35:50 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso1663148wms.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+zf+kJh8jFRTSYE2NF8I3qkJ1KRy4Q92d5gKq2R2csk=;
        b=AnFcRJomcUeln9N8y/3XbxoHcQnHipEXjXs0xlFkkUwMiTleltpcSVMfyCm3ozLsmk
         fdDu7D8d3gq+CVrJW1f0ktuVuzMPopnkE2SjlnL59I82Kyq/EJ+eNeuAV23oh+bWL0kT
         9C50Lj7U2cfztENjxJvp0ulHQTAel1UJP+sH74JC73WY027X4bZaFxDEcKgxYeenqhgy
         UMeSOepyihYpYLu1URtiVRjXMdzx26UIk+yYx9/pa49StfgMwL76ePh3i6/PZaq1yeFa
         r++g71QoFxlGbQQIUYfSBqmp66qk0jsEEBOi/A136TMNEaGXeb8ZnQlEgcKnSePoGBf0
         7dQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+zf+kJh8jFRTSYE2NF8I3qkJ1KRy4Q92d5gKq2R2csk=;
        b=AydJxe+gmDuatK3TRojwC9gU5wg7c7NmGRRr0IdanMUpU211Aco119w1FSEdFHO/GZ
         sb0wdWwyi487640qpWzwmAfFhmZDkb1pAyqEr8zpGLJk/HJdsefJQ49DMpV3sNR3YPvQ
         Rr124aFHvrnw/Hi6p2JX8m48hXDft0zi/cKKDbl1TyLIoZG5qpA9Ekf0DTDWX5ywerPX
         V17izYQN1+wtTHyU2Go191V/p34GkgSQhSvSdJ6V4wcICrluCK1ZdpFihBqAVqEFXM0M
         hWmnL+kz1ZiQeERt+xXfFo77+5XF1vDChz1ANzmREtPiWkfT8m10ZAhxUO6J4VtUyvez
         bPLA==
X-Gm-Message-State: AFqh2kr5pKFAkGpQn7LQEG4gR2m5hh/6uE+LtRGNd6b90oO72ox6G0wT
        xK9n9MfGhMfz+d2fXlc7B2Dyhg==
X-Google-Smtp-Source: AMrXdXsGCv4M1PY6CRs9/YI2Jj5v4A5ZBl8PU+5KHfVrn3Kk/YdkxJiX+HM4hdJhJssOeQouWL5yGw==
X-Received: by 2002:a05:600c:ccf:b0:3db:f34:e9e0 with SMTP id fk15-20020a05600c0ccf00b003db0f34e9e0mr3711089wmb.35.1674052549059;
        Wed, 18 Jan 2023 06:35:49 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f17-20020a1c6a11000000b003d9fba3c7a4sm2022496wmc.16.2023.01.18.06.35.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 06:35:48 -0800 (PST)
Message-ID: <313038da-a3bb-cdbd-3d89-03554d946f4b@linaro.org>
Date:   Wed, 18 Jan 2023 15:35:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 07/17] arch: arm64: imx8qm: add can node in devicetree
Content-Language: en-US
To:     Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "qiangqing.zhang@nxp.com" <qiangqing.zhang@nxp.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
References: <20230118072656.18845-1-marcel@ziswiler.com>
 <20230118072656.18845-8-marcel@ziswiler.com>
 <5b1f757c-92af-f91f-3fd4-ad23622add7b@linaro.org>
 <3645c9a42797e821ced4cd9ba2985acc136376b8.camel@toradex.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3645c9a42797e821ced4cd9ba2985acc136376b8.camel@toradex.com>
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

On 18/01/2023 15:32, Marcel Ziswiler wrote:
> On Wed, 2023-01-18 at 14:58 +0100, Krzysztof Kozlowski wrote:
>> On 18/01/2023 08:26, Marcel Ziswiler wrote:
>>> From: Joakim Zhang <qiangqing.zhang@nxp.com>
>>>
>>> Add CAN node for imx8qm in devicetree.
>>
>> Incorrect subject prefix.
> 
> Sure, would you mind elaborating what the correct one would be?

git log --oneline -- DIRECTORY_OR_FILE` will give you


Best regards,
Krzysztof

