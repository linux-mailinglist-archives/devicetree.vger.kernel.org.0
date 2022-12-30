Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B60065963B
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:20:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234764AbiL3IUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:20:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234866AbiL3IUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:20:04 -0500
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 909241A20F
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:20:02 -0800 (PST)
Received: by mail-vs1-xe2f.google.com with SMTP id o63so15831784vsc.10
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4+TD5tjlJr06e8+hQP4RV+wiuVFoaq9bvVuc6zSOft8=;
        b=G4a6pvhRGTZ+uAMtcCdHwuA4ZgJkdJU0jDmkG/nvCkmXcgsnqXemLPhxXO81lB0TFS
         IaDgSBZQmn0uHCvucOzFxZmiyuHTZYDEjApq8AoPo5BZk4tXTbddK1FhWkx6Bw1q3VbY
         pmHVDMFoV7aKFCGuflInLWDzdHvQnj1u3NPdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+TD5tjlJr06e8+hQP4RV+wiuVFoaq9bvVuc6zSOft8=;
        b=GGHMEnZ8mvujjmFco3b0/ydWSXk73QK8lN2PLv31VVeRbK8PM+kTOmb4pf9O7azlhH
         RC8M1vy2LgmSIq0j0Q7Df0IZ/FJdKOZW47juriA+77oAyLgh/Fu6B4suZfjt8lrrhinf
         Ayeljlr8kPhIEHTHuqjKXf19dc5jrt82NjnVHPxAP1YNvr+YsWHvk54LcJe8wXg4+vqV
         28hUENYAFLKqOkIB90O8yHAwJiwywwdV7IrOzPH+tw5gwdDTYEb5OLnpfTncl/678RVp
         sx0C9jkoIzLPsdD4WNjNB1cnkctGF2IL4witczTXrjTA0spWPezZ1OgDV8LiNKUlTqCw
         xGpw==
X-Gm-Message-State: AFqh2kpsaCm3DNTiZB1w3DTfYiv7q4rpUW6oOb5Kwgo0mpbl+/Iig+GP
        QDCeDFUKmzSe25Prpa/V8HOZL66zf566czoawPUv6g==
X-Google-Smtp-Source: AMrXdXuAQ+AfcldxK29BpiQ1dOQS6okUitNiNCau3Vs0Wew3cn4017tMWvd4ZScjpCBrohBQ69zYN+UWb45AMVugflU=
X-Received: by 2002:a67:fbc2:0:b0:3cc:fb59:8c71 with SMTP id
 o2-20020a67fbc2000000b003ccfb598c71mr24039vsr.65.1672388401627; Fri, 30 Dec
 2022 00:20:01 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-18-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-18-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 16:19:50 +0800
Message-ID: <CAGXv+5FeUfmw9iUyS=-XhkvGueZ9uMxH8G3V_KnB-2uKy48ccA@mail.gmail.com>
Subject: Re: [PATCH v2 17/23] clk: mediatek: clk-mt8183: Join top_aud_muxes
 and top_aud_divs
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        johnson.wang@mediatek.com, miles.chen@mediatek.com,
        fparent@baylibre.com, chun-jie.chen@mediatek.com,
        sam.shih@mediatek.com, y.oudjana@protonmail.com,
        nfraprado@collabora.com, rex-bc.chen@mediatek.com,
        ryder.lee@kernel.org, daniel@makrotopia.org,
        jose.exposito89@gmail.com, yangyingliang@huawei.com,
        pablo.sun@mediatek.com, msp@baylibre.com, weiyi.lu@mediatek.com,
        ikjn@chromium.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Join the two to register them in one shot.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
