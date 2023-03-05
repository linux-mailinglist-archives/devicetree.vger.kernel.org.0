Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1980A6AAEDF
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 10:52:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbjCEJwc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 04:52:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbjCEJwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 04:52:31 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0E6BF965
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 01:52:30 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id k10so3075832edk.13
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 01:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678009949;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jLcIcgKroiO3LAX4K2goFQC49e0+5OXdVgM9vt+k+U8=;
        b=qC1bKDJHzB44F60jMplLRxTqMhObOvgJm5h6fd1Z7I1xBG8B6/uF4sP82sW6YgJ4NF
         R2rswwWCB/Pxdluv922eNrBl0bO0oy1EBBe/7mhDQO19lZU+zVMgJgO1EG2JcL6p8d7c
         2EcwJxX8xRaA2D+GsKWcPMCdI8XUh25zHDbur+8V7FNH0EANLiMQF5f5IMmbOFsBs11M
         GeB+liJuEE3D9MBEBZ62xYTYhDYVE3DAGzkguKm9GmfkgCoeATY2YtgGHnXZ5+QTcx09
         qLpW5UK1wMQjqmEXOEyafjyNYdvxubFMMfeoMq/OZTr0bJdSte/aNIuCL4f3NZ6sPD4O
         Wbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678009949;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jLcIcgKroiO3LAX4K2goFQC49e0+5OXdVgM9vt+k+U8=;
        b=oLyVqsJdYFG9tBZOnhFA/1pkPEdUrsmLfEfQdZ4ECz1qURsb6kgRi+xgg+YP7+Pkup
         dgqDYAiMfCEhYjJngPZzFZTWoDDV6B3DFRMcy7jDwew7ZEQQCOfSuW8Sibv6+hMMi9Xk
         lTpurJ7ea3EFHegB6Guqjdj9gVyTFYk5suHwGdVUGdX99VGwVGXd+oj05zEG7iuGuT+G
         aT7lw1XDydJrqhNPlZc+aEIm61RZ0BqhbInM4Bb8kAW5trsyxXu49UXSD8RBgU+Q/RAP
         xWYahhZc6u8gLFFSA/6252u/cmn0kh3dU8Lwf65htl/vuNxIHyY2Scch5utwix0vX7+U
         I6hA==
X-Gm-Message-State: AO0yUKXUgQa+nJNd1nnwOMzYMoIy80SscfcW0NlesFuY+F89CDQ8j7CE
        hU/Fd9cneDUHfBvSv0KIgNPeEw==
X-Google-Smtp-Source: AK7set8+aB4KfTV76BGlzOWWxq0US73n/o3nY1jD5So9BMEmtbRCmWB6ONpncr6DuJlXUH910Ab96A==
X-Received: by 2002:a05:6402:7ce:b0:4c0:57b:47a9 with SMTP id u14-20020a05640207ce00b004c0057b47a9mr6795298edy.35.1678009949288;
        Sun, 05 Mar 2023 01:52:29 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:71e7:13d:1c29:505f? ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id d9-20020a17090648c900b008b17b0f5d07sm3015052ejt.217.2023.03.05.01.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 01:52:28 -0800 (PST)
Message-ID: <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Date:   Sun, 5 Mar 2023 10:52:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To:     Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230304172838.38059-1-strit@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2023 18:28, Dan Johansen wrote:
> MicroSD card slot in the Pinebook Pro is located on a separate
> daughterboard that's connected to the mainboard using a rather
> long flat cable.  The resulting signal degradation causes many
> perfectly fine microSD cards not to work in the Pinebook Pro,
> which is a common source of frustration among the owners.
> 
> Changing the mode and lowering the speed reportedly fixes this
> issue and makes many microSD cards work as expected.
> 
> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>

That's not a valid tag. Run checkpatch.

Missing SoB, which would be pointed out by checkpatch with correct tag.



Best regards,
Krzysztof

