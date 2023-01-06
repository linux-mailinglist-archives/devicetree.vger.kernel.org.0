Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4B6F65FF53
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 12:08:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjAFLHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 06:07:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232676AbjAFLHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 06:07:39 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6C84166C
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 03:07:37 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso824756wms.5
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 03:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZY/0HK5vhWq1atET0Bpv4+WgmiEnLmZw9upWsDYoJe0=;
        b=PRH4h0KL0RGYsGtinEt5uGvc6yYjP2pMeE+oPGF9McFxEnYc0ZDgmzvz/k23/MOAPo
         WFcj8l0PV1k2XjUUOpSwHakFQzJXJJFMBY1uW6lKbNd5KXQPqgeIcfobd8o3mMC8BZXZ
         K2FW2/KL16WtuL4lGcSLo0I2OZBw6Aph3e9h3W/TEBC4bVOD0j0wJlus0S1MO5xuSTVd
         XQVx7NEmkytMub8399S5u5/aMsUVjxNxa3sYsdKnFlD5r4yjZVe/SQaA/aHK015HWNlv
         H+xRU/NrzNoNdeg/xKKq51dAcnb9/MsvgK+fO6Misr9OxcWwQ2/VPntOKPDt78bR1Esr
         Yg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZY/0HK5vhWq1atET0Bpv4+WgmiEnLmZw9upWsDYoJe0=;
        b=zgWKPMAFNyJ1BD6x7Daj3urA76jh0Vg/SyWp+X99kkFjEBMTfYXAPAfW1LW1NsXz7t
         8Y9fQXrNNCtCVAy0PiOQFE8lfTWadLvvVI/UMi0EbbTKWsS0TeBvhljBPg/cYqjURbjt
         zjWfqJ9qed3/efNV0/IMNVzmOEGhMg5+wekaQg+ollv5Imm6UqQZ+28MeVmPFfDj59b5
         GVlWNDRKg0Ni1KZIzCN3pxV7hCmxb8Mi66OQeVfz7R2/t48iabSL11fjRKhMBF2kIuor
         LPy1/29eQRb9A89XyCJp7NRhBMf45jrs2uKeTenFLxk0FLqmgfSdz4yVFX9xCvFq+Qij
         fA7A==
X-Gm-Message-State: AFqh2kqhlp3AXUFxr/CwUYuiBwssa1e3CgAijWSbqKucdV/ooU7FQcyB
        erD94rJ5JTuZme36SK9A1SIUbw==
X-Google-Smtp-Source: AMrXdXuhrDzIoOs4ugbIUgNEN4hS46pqg+RXmxWlx7qeJfIhwodH1pzfIbnE0OeoKrRikOwmN57Xtw==
X-Received: by 2002:a05:600c:1d03:b0:3d3:4aa6:4fe6 with SMTP id l3-20020a05600c1d0300b003d34aa64fe6mr37858456wms.3.1673003256258;
        Fri, 06 Jan 2023 03:07:36 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p9-20020a05600c358900b003cffd3c3d6csm1502418wmq.12.2023.01.06.03.07.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 03:07:35 -0800 (PST)
Message-ID: <8d1c49e0-1aa2-b08d-b68a-64d9beed54e3@linaro.org>
Date:   Fri, 6 Jan 2023 12:07:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/4] dt-bindings: arm: sunxi: document MangoPi MQ-R board
 name
To:     Andre Przywara <andre.przywara@arm.com>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?B?QW5kcsOhcyBTemVtesO2?= <szemzo.andras@gmail.com>,
        Fabien Poussin <fabien.poussin@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230106010155.26868-1-andre.przywara@arm.com>
 <20230106010155.26868-4-andre.przywara@arm.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106010155.26868-4-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 02:01, Andre Przywara wrote:
> The MangoPi MQ-R board is a close relative to its Allwinner D1/D1s
> siblings, but features two Arm Cortex-A7 cores instead of a RISC-V core.
> 
> Add the board/SoC compatible string pair to the list of known boards.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

