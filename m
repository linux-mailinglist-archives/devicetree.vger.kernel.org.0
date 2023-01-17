Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC34E66DBF1
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:12:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236751AbjAQLL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236262AbjAQLL0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:11:26 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04F55298EC
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:11:24 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id l8so4805240wms.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVVUT1Q4w+D+zjJ+MiLQ59DPUvO4ysJ+YcXuATrHiJs=;
        b=CXeZZRxS4jC43glzVH/2z0SjiwAkbUsBvimovm5amrSvyk17OPsSzKDm3JM8TeCz+Z
         gUnHOWsSe8QgkVUgSW3lVHHN8fDztRBI4D3HAdLkdUqIMWaLjUbLXR4xV7FIX7j2ATYn
         5LR9N3Idr349gXRCZQG02llwChla7jrApV4U9w5GjdnZ/2qs1R1bwsR+/coj83Yxs3ip
         1lm53QsAfktx1SEs/wk5hZXidzsZJu+HKwWeMTZfdeylwvlw53Wfxc5VKiYSx8P8GH0b
         XdKP8J3qhpsW2zPoZkgfoHUhdtUEpkue2OJJdjulm3A6IwfuiC6FTTNUCYmLbIQOrN8Z
         SsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVVUT1Q4w+D+zjJ+MiLQ59DPUvO4ysJ+YcXuATrHiJs=;
        b=1rnQ0Z/NOH4ZQGMS6WGszxWLFuknYiCtMpcStpRwfc7SZ3nTfY5gWzROB/dao2DmbP
         FekHqzYo/QSqKYpTwabPC3YBvcQSNCQAFhSEaSrQwBQzIY9PZcE+jd+ffT2I7lcLktM3
         da1IiDIjB5x+5vwUy+uYbyQx6prnzTD2Iz51U8PV5frWoSAi2jDIZUM+xrajo+PWQuVF
         8rQkDv8Sw9qBuAM3pVUaxTHahyNGY37mUOhWVdlWqsq+EVE5ZwblWMG30mor5Xdpt5Kj
         5Kb1z/vHJeaZ08Skmebt4/AitsCGGEZeXS7/gjrrubtvX6DahpZx2bNzYblIU0eHbgWE
         uZHQ==
X-Gm-Message-State: AFqh2kqpmr1GFFdAAW0xxwNosmfAUGnn5JTx34N9Jv5GD0UejXiOLoLG
        Y6F2qaaUsp3/dELp7VdSh8vJcA==
X-Google-Smtp-Source: AMrXdXuUabHO5lLE6KouCS8wBlrsFWHoTEk3jyDJN0IOVg2Bw8mJLK0zsPjEjxwnd4RVjwRBKyFmkA==
X-Received: by 2002:a1c:7417:0:b0:3da:fcd:7dfe with SMTP id p23-20020a1c7417000000b003da0fcd7dfemr11450545wmc.10.1673953883421;
        Tue, 17 Jan 2023 03:11:23 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d6-20020a05600c3ac600b003da0dc39872sm18839767wms.6.2023.01.17.03.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:11:22 -0800 (PST)
Message-ID: <503abc21-7122-b820-65ed-f99d2db1eb21@linaro.org>
Date:   Tue, 17 Jan 2023 12:11:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
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

On 16/01/2023 21:19, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

