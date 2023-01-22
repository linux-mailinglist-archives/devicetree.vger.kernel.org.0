Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3A6A676D3C
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 14:49:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbjAVNtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 08:49:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjAVNtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 08:49:12 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E83C21705
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 05:49:10 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso6763082wms.3
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 05:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W2uRWqFF0r7q2TBMIaKQWmaMLNnBJspMVsHJ2UF06HY=;
        b=A5nrwbz9H/JghFPYjDYxiF530ecHYrVdNXPJISoleEMn961zrzTqWzfeKn88HBVwWD
         swdMlnsnKpW2FAXUsX5SNegxl7ZB/FmB2eHGT7tgaJf/JY/P39W9oSZBZf724q/QCbLU
         2WKi54/8Y1ECJG1KLNuuO5bdukWTWooVfA15Dfn/+yIYSH4mtXLJCoDJsh/wamgTMudA
         vQMlhY9lLBhZmlpZQjGZy6NGyK1JjeY6GjZn3/g2NQgnsUqOgX36aQwG1WPEDYF9rbKR
         v1UYab0dwAKBjHXkdgS3ww4wtTcR8ukC6149Teh8dQJve1NVZgvjqFgFNK2vC9cKvud7
         7Wwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2uRWqFF0r7q2TBMIaKQWmaMLNnBJspMVsHJ2UF06HY=;
        b=2YxK2x76FT4NME+90KI+s+W8UO9IsxMaqTO1WnBWYMpTpv62j4AINseWDh40mElYix
         FVGtP9/zvIBD6MpU8jyrYxdPEgYQJutYI56eG40n6E4L/qbkEd3g4BewmmSYSCE0iPM7
         mRj1NBL/fLfHwYZZND8icTTQ0YVZCjs6X5cmXcMsEXOZTpsyJSXxQJlZ1ColEDRxUQME
         WEnMQWy8PoJBdR64oYOy4dsLyfnH4CvArTFTElmS+XkepXEGlbtSuH5KX6X9Hdv+WRTc
         xTJXg5RZr//wR6OINRzsehWap3W9o0Ka2pcQ6I2/zgitN7obgAV5WoxNppHrweA2Ub0t
         IuEQ==
X-Gm-Message-State: AFqh2krrAkmHJFQB5hzpYMGgmm2P4k3s3duF8wDiQDf9/GWBocrlYif0
        b3S4VI8ZvOU31XbWUUZrFMXRCg==
X-Google-Smtp-Source: AMrXdXsO8kqG9ZRaMxEGmJ0/tMT938JibYEZWNhJ1g920foowoq6eZiI5F8tqalMzBJU2Pz6wZ9L3Q==
X-Received: by 2002:a05:600c:1712:b0:3d9:a145:91a with SMTP id c18-20020a05600c171200b003d9a145091amr20679919wmn.28.1674395349413;
        Sun, 22 Jan 2023 05:49:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 21-20020a05600c26d500b003d9b87296a9sm7547873wmv.25.2023.01.22.05.49.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 05:49:08 -0800 (PST)
Message-ID: <bb386e57-0826-93aa-d97c-72d277991141@linaro.org>
Date:   Sun, 22 Jan 2023 14:49:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: Add apmixedsys/topckgen
 compatibles for MT7981
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Edward-JW Yang <edward-jw.yang@mediatek.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Sam Shih <sam.shih@mediatek.com>,
        Jianhui Zhao <zhaojh329@gmail.com>
References: <cover.1674233728.git.daniel@makrotopia.org>
 <ae9acd210c1566b4bd72b09df4430bcad4a36c9b.1674233728.git.daniel@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ae9acd210c1566b4bd72b09df4430bcad4a36c9b.1674233728.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 18:23, Daniel Golle wrote:
> Add compatible string for MT7981 to existing binding documenation

typo: documentation

(or better just drop the word - it is redundant)

> at mediatek,apmixedsys.yaml and mediatek,topckgen.yaml.
> 
> Signed-off-by: Jianhui Zhao <zhaojh329@gmail.com>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

