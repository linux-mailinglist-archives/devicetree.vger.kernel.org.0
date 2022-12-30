Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5931B6594B1
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 05:38:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230494AbiL3EiA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 23:38:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230405AbiL3Eh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 23:37:58 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 012B413D74
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 20:37:57 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id s127so6361179vsb.5
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 20:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7MgAHjBPKfpctKgGxDc5Wt5hmeOw7QmtnTPav7sw6ms=;
        b=QLFUHtQDyMevODPY+6iYPWURMALSujLCXV8b2YtZFnflNTjUZu8E6WZS/gi7HObib7
         XHV93RbVPjaVZoFtXYE7ijrHqLzDm/9d7Xl9G2eHRLBzkcc86PsLUFbc2zeAlOOLf/Mn
         O0pkySdK91uRj3DnAWAL6TN0Yzn+ATUn/+pAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MgAHjBPKfpctKgGxDc5Wt5hmeOw7QmtnTPav7sw6ms=;
        b=YcnbXqZXvxqGEcbcTKR8oMpicE6bHyr3hW8SLhWEjW6Q4C/n3q4zXt86t+o+jbK+sL
         Je+hh3Z8OcekGkdyczoXri924YVuqzxp/b3jzNmjVU5zGAfXgqWZKoMd/ZPFej6eL9tM
         W2r4ST5PtYpjDZB5zylX3x0jxFHT+0VS6XAViSKCbe/grVwg5zeM3u+KyKpzmbY0Svqa
         +jROpyuCGf4DN28Fwdr44lPEWKJQwyElwY7uJsRpF5F/dfsCNjbVc+ZlfDag0HYOYmu6
         ibyhw8XetpeM+N9IxttltJfAF+agTRbjOOtM31BHsKXPqoHgLl5DBvk+5s7H3RGRGudT
         fhgA==
X-Gm-Message-State: AFqh2kr986wemcYtE5iLra0aOqVvF85OzzMNDGPevD9OgU3jBRd5OlL1
        inKBRi7lZgstjQV8FsAvzOaJDvQ4zcDeU0nhLKb7rg==
X-Google-Smtp-Source: AMrXdXtJ9DsOgWpo3oq9cdZhqPVc/WxniGJ0388vj8r1Kf4g7Nx5veR8u/GCEefKItg3gDeGWLA9nGN5uLG06h408kk=
X-Received: by 2002:a05:6102:3e06:b0:3b5:fd8:7948 with SMTP id
 j6-20020a0561023e0600b003b50fd87948mr3951754vsv.85.1672375075819; Thu, 29 Dec
 2022 20:37:55 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 12:37:44 +0800
Message-ID: <CAGXv+5EdiiQwN7yXtp9-K9+kYPgwk3sbtAk+JNFePefuwMyDcA@mail.gmail.com>
Subject: Re: [PATCH v2 05/23] clk: mediatek: clk-mtk: Propagate struct device
 for composites
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
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Like done for cpumux clocks, propagate struct device for composite
> clocks registered through clk-mtk helpers to be able to get runtime
> pm support for MTK clocks.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Same comment as the previous patches, could we move struct device
to the first parameter?

Otherwise this looks good to me.

ChenYu
