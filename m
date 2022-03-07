Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 150D84D02B5
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 16:26:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243746AbiCGP04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 10:26:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233259AbiCGP0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 10:26:55 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCAE590CD9
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 07:25:59 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id q20so7067219wmq.1
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 07:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DLjppdPNclxnNzxkIl9swnhWDLoAKxeSBraXfxGifqM=;
        b=mvht7xuj6s4o9ZmX01iGIYCekCMF5uknxVLhzqWHRYyb3H+53XvrBpIOzqeh/RmImy
         DVprzHQIKou6ak1OByLmRVF0+Rsoejr/E4OX5HKMpktnQrORwlPV+b5rtkZANtWNcVP1
         kC/o+gK7h84s0KoAPBJUaRU4/MDswY3zqd6kR39dyk1akJBoyipXMp6lWaY7oBhCoeHw
         7A2LfUA8coeKRQ5sIFSeOIDVVW0UfYe5CgE5Nj8UTBbdPTxxjvfbQLK+HomiRW4k0rsb
         P/iJoXTHitpuOOpZhqCiM58A2eXJf8OJj1wqtwtDV6jNflvctVDQux35yyhKoCDO4C17
         UGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DLjppdPNclxnNzxkIl9swnhWDLoAKxeSBraXfxGifqM=;
        b=HsdZ2Q62+3C/OBiHZGBF2JINcnpZD7uh7uMYwM49NY3c9BlUda0jQo0ATu5EY7k/GV
         hKA6TWc1Rpoos+Bw+EvthJzwRlx5mzgDr0sxBVI2jDBIbIZaYDIRYlqc3+fH0AhHpPZz
         hz7gYfs7/pUh79hEsyJEQpVyFGuBQ9aW7P6TbHZK4ZRu6hYS8nFxopc5Fa3GhWJTxgKo
         yfi7jYdzASWrJK0c6IRui1lmYxNHeaph/AN+ayamWiHxwfXi4W3axpsxxXkbwMOEBkNH
         bM1T2AtkuLz1iLIGd6iAg3sOlRECiF0yqHDJd0NYt17Tt1w1G+54mn7bM2p/2+Qux3iT
         /TBg==
X-Gm-Message-State: AOAM53189XWnREeY74SNda3LyeKsDv5IYkbk6hvTybGnEv5YXzut88jJ
        o7FOSXyNRFxok623ZVuqbr6LaA==
X-Google-Smtp-Source: ABdhPJwJyR6cT4CTpBHIlPWPVhFMW6Ck7YuUXyzycoVnA8ADZTVr5V4Yj4gd+AJbniIckaYf+dADbg==
X-Received: by 2002:a7b:c2f7:0:b0:389:860c:6d3d with SMTP id e23-20020a7bc2f7000000b00389860c6d3dmr9581242wmk.116.1646666757953;
        Mon, 07 Mar 2022 07:25:57 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id h36-20020a05600c49a400b00382aa0b1619sm12843430wmp.45.2022.03.07.07.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 07:25:57 -0800 (PST)
Date:   Mon, 7 Mar 2022 15:25:55 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        - <patches@opensource.cirrus.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: Fix pinctrl node name warnings
Message-ID: <YiYkAz0Xk2y3vytU@google.com>
References: <20220303195034.2261989-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303195034.2261989-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 03 Mar 2022, Rob Herring wrote:

> The recent addition pinctrl.yaml in commit c09acbc499e8 ("dt-bindings:
> pinctrl: use pinctrl.yaml") resulted in some node name warnings:
> 
> Documentation/devicetree/bindings/mfd/cirrus,lochnagar.example.dt.yaml: \
>  lochnagar-pinctrl: $nodename:0: 'lochnagar-pinctrl' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
> Documentation/devicetree/bindings/mfd/cirrus,madera.example.dt.yaml: \
>  codec@1a: $nodename:0: 'codec@1a' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
> Documentation/devicetree/bindings/mfd/brcm,cru.example.dt.yaml: \
>  pin-controller@1c0: $nodename:0: 'pin-controller@1c0' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
> 
> Fix the node names to the preferred 'pinctrl'. For cirrus,madera,
> nothing from pinctrl.yaml schema is used, so just drop the reference.
> 
> Fixes: c09acbc499e8 ("dt-bindings: pinctrl: use pinctrl.yaml")
> Cc: Rafał Miłecki <rafal@milecki.pl>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Fix lochnagar-pinctrl nodename in example
> 
>  Documentation/devicetree/bindings/mfd/brcm,cru.yaml          | 4 ++--
>  Documentation/devicetree/bindings/mfd/cirrus,lochnagar.yaml  | 4 ++--

Acked-by: Lee Jones <lee.jones@linaro.org>

>  Documentation/devicetree/bindings/pinctrl/cirrus,madera.yaml | 3 ---
>  3 files changed, 4 insertions(+), 7 deletions(-)

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
