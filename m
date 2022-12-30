Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B8BC659500
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 06:28:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbiL3F2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 00:28:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234431AbiL3F1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 00:27:35 -0500
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D77C1A80C
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 21:24:04 -0800 (PST)
Received: by mail-vs1-xe2b.google.com with SMTP id m2so20343767vsv.9
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 21:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d2kO8pgMtBzZNlbzXFL36B4N197Fi4UW0BCO8fu4xqw=;
        b=Jl6Crh7Mm8B+2BMASpdiBuOTVnQhVFGCt9wvg6YWVF8Sn+/cS2kn+Qjmt1syT0QYVO
         vphIcYXev2LxGuz2zpb9Ea9eYlVyi5e94+rLvxxA2ltlA98SH9EnW2pGRYFziKBsiSyi
         18xo3AUt8+af1atgoRPWyHq/iyretmjX6m+zM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d2kO8pgMtBzZNlbzXFL36B4N197Fi4UW0BCO8fu4xqw=;
        b=GqWvHjRdKwjT9RxiX5x2tSX/2UhJ+TvvSM+QirG6eALeX5YtQ3dxS64cwV39iGxB5T
         Z+Gxalap3+6HD7Joj+a6Noy5riJEIhcJ/Nt4vVtaoBevIl2l52J5ChDiQCFGw5MKdV5Z
         uxq8vomilyeOnFEASnfv4oq7ckaDiA5ESh3mJT9+WuRLnYSEIHc+VEA1Og2XY++8e/D0
         i3MjgKxzdIn+wXwfRQDNd9S5cgmF3p8E3OlRLhs9kF5beE+L91Wjw07dPWb6xDPMi+LO
         Lu5VvNp8Id82pYNI/uTh/Wn/Z0OMQe27QVYv56/++oAA/pJRlpf66260h544pPBus6A+
         Xv9w==
X-Gm-Message-State: AFqh2kpH3JvtLu2af88OuTG0XjfXRzyrG9kgPeWRvDVFiXRb2Ulw+wsf
        k1iKUqd4q8e+trD57xgEEY+b2xwI58RYZK3/+qLp+A==
X-Google-Smtp-Source: AMrXdXsNEPEEDbmMNdTXQ66dzte31fV01YoUyu4VK+PpkfRFqDEmbhNsYqdkXtoVcZvmwH1OYa9y0JeRg/5FrrgR4TQ=
X-Received: by 2002:a05:6102:3d9f:b0:3c4:4918:80c with SMTP id
 h31-20020a0561023d9f00b003c44918080cmr2641293vsv.9.1672377843567; Thu, 29 Dec
 2022 21:24:03 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-23-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-23-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 30 Dec 2022 13:23:52 +0800
Message-ID: <CAGXv+5GcBCrHRUJHZG1XAXbh+BJxGnuYSbF-QgPY6Sh5nPEt1A@mail.gmail.com>
Subject: Re: [PATCH v2 22/23] clk: mediatek: clk-mt7986-topckgen: Properly
 keep some clocks enabled
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
> Instead of calling clk_prepare_enable() on a bunch of clocks at probe
> time, set the CLK_IS_CRITICAL flag to the same as these are required
> to be always on, and this is the right way of achieving that.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
