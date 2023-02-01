Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36187686057
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 08:12:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbjBAHLz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 02:11:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231546AbjBAHLw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 02:11:52 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF357AA6
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 23:11:51 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso610236wms.5
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 23:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cn9LZKnUiXYPN0HrV8FpuolH+EcmV36idl0jPM8Bs7g=;
        b=xULa/7uKAzVNHnAjrjCp9bVHGfDdSgVls4B3o+aiUOTV71IywmXVOFH7OcwQRPAvJ7
         o4ekM/su0yqeVM3iZCXiPw8O3u2X6XfDGArz2H/Jpluck7lVJPyaR7zTZKiDC17mZ6uU
         LNCR6kaYks2FVZFKDnlbpvujlu1UBSXPdfYB7/tPGUnmX0XtlF/7gBiwCr6p2S+1vw6x
         KCiQltH7fAyBus7kyq+2VWrbTOAUfhEkc1ZrQ+P8F0OcOPi/bItCnidq+VUWduy3iHnu
         hVfpdfZ2HrshxO7ANs0DY3mirg1Xu7jECm+ERSKSelXhozgIYiUYALyVDI+nUvb0UZFj
         VJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cn9LZKnUiXYPN0HrV8FpuolH+EcmV36idl0jPM8Bs7g=;
        b=SBp4YPv+RP5HL934J3antwBAcuBoBnttRi9Gk1UIRy21dNB51OYLXm0yXdi23jSe0X
         AZA2IaFBfZBw5E/cr2ue1kapiI9/ckjvOoXzKFAJ24x0jwCi5gfvR3+B88rCiSD3kZ2s
         DverYP/BbkWolVXEUbGlkNRLVsMa3YlLeLiPdxuGiWJdmiCjJoiR1Jt+BXwgS1+pj0xX
         DIElwctOHWxJ5R+DMfX7LMxQdAb80VmvKaLH20oD8K5gOq/bj5lcu+jnJp/LVbdvL4Zw
         zd8qzPf60eQ0WR9X1g/PNlG849FItrRxrRUEjW6K9/kDtQc2V75K5MP3aIKjOyatmRw4
         ccdg==
X-Gm-Message-State: AO0yUKWMKf2pgrku+HCt17HIqWuDJswveVS7k5Rh49HPMhtvd8gLHeVY
        9qcyKbA4Kbhn8fZuuFNCvdfgYIsECTtF+WrN
X-Google-Smtp-Source: AK7set/sqXRZ6V1JnblJNIQrhR6jqsQ/X0zsu4VBAYE/A3nGGIdQrfitkZ9AQ2RPkzdeaCl+ugfyYg==
X-Received: by 2002:a05:600c:3b89:b0:3dc:19d1:3c13 with SMTP id n9-20020a05600c3b8900b003dc19d13c13mr891765wms.12.1675235510442;
        Tue, 31 Jan 2023 23:11:50 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b003dc36981727sm858730wmq.14.2023.01.31.23.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 23:11:50 -0800 (PST)
Message-ID: <17542e28-36dd-2bb6-6c04-49df9433a67a@linaro.org>
Date:   Wed, 1 Feb 2023 08:11:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 14/15] ASoC: dt-bindings: renesas: add R8A779G0 V4H
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
References: <87a61y6t8e.wl-kuninori.morimoto.gx@renesas.com>
 <87pmau5ejk.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87pmau5ejk.wl-kuninori.morimoto.gx@renesas.com>
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

On 01/02/2023 03:02, Kuninori Morimoto wrote:
> 

Blank line above From?

> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Document R-Car V4H (R8A779G0), and R-Car Gen4 SoC bindings.
> 
> Link: https://lore.kernel.org/r/87zga6t5r4.wl-kuninori.morimoto.gx@renesas.com

The Link is a tag added by maintainers pointing to applied version of
the patch. This does not look correct...

Don't you wanted to just reference v1 under ---?

Best regards,
Krzysztof

