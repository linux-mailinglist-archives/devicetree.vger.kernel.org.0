Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0580B5E5C0F
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbiIVHNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231127AbiIVHNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:13:32 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29FA9FCA41
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:12:50 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f9so13170639lfr.3
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=rwfoTSI2+bODt184zqvk6o5KksPyLZOSxRrSre7m3nU=;
        b=MhBkMtNFvRKB+E48vrLoICpKm9sgw+cleIPWAZdLL/Zi1TbaAIdQ95hT//NfG41w3e
         CI4FfhpaK1pwUNjEUDFFqLN2WW4uCqaJy2iaA0/BhawC0nYmq58tsVXzRIn2D14awddP
         mHTBZAtcEBQJF6I9/XNAchneT562u5ZnnDjlX/uJ16P4/th4pGWksVDx6vpENafmdGhg
         ieVTp393OQtS6QAxqdIfc8g2WjzUdqt/5lMb5W56Nyxsh4LMRw1sKV5eN3a1PRZoNwmb
         H5f2yYPHjs0GnoIDHP4T8bY/lcFFUJ4rYUnDPPvGbWNK3chXy+JlrWlultv+vJjBPnDi
         qYfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rwfoTSI2+bODt184zqvk6o5KksPyLZOSxRrSre7m3nU=;
        b=OroHNLdM+tSue8V1rWcc0nQHNYh7msj2od5TXrp0eSt/sAh/DmOvg4W6M5mTQbAVTE
         I5Md0SfSaqQx6ge+lyieXxScZRZbEBG2WaN/fXicwxPN1ivsvqan0nbF+5xr2rgiQ0zq
         PqUCf1XkIi0D4Ao1mUeGlRsyBs0t9ZiTKgVROYbKVFReHlYLacluyGvD2gHhRY7dx/LK
         UvUnZxnrelaz9nIlGosnmvblfEBd6Em99eL9NvS3jQ1HyQwBdvYUNUY5yRjmI4O5/62K
         pDRaGoYiJlyI4IMGZGlT5V0hAlHrIXcWt3RJh3+dkJf2xvqbi3nGOa+aCCo5E5CR/Ain
         LO0w==
X-Gm-Message-State: ACrzQf3k1seiqgLikg6KDrYQiVIAfvBlu+5fIlt6lHapC5cYMCYMGQxT
        c47JE0SubeME7vGJump5UBsNEg==
X-Google-Smtp-Source: AMsMyM7tSmDdOf9yUwEBPNVo4LJveoksYmGyeRKCvdI8La3tpcO4vDQdzuT8eLiZWZvV10EZkCS7KA==
X-Received: by 2002:a05:6512:260d:b0:492:df5a:e4f9 with SMTP id bt13-20020a056512260d00b00492df5ae4f9mr667074lfb.90.1663830768385;
        Thu, 22 Sep 2022 00:12:48 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z12-20020a056512370c00b0048a8c907fe9sm794191lfr.167.2022.09.22.00.12.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:12:47 -0700 (PDT)
Message-ID: <e583c9d1-b936-3c19-ab6c-8fab4704ca45@linaro.org>
Date:   Thu, 22 Sep 2022 09:12:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 03/17] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195
 compatible
Content-Language: en-US
To:     Guillaume Ranquet <granquet@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-3-4844816c9808@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-3-4844816c9808@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add a compatible for the HDMI PHY on MT8195
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

The same... maybe it works, maybe not, I don't know. Any reason not
using standard tools and producing standard patches?

Best regards,
Krzysztof

