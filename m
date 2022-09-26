Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7625E9839
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 05:22:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbiIZDWQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 23:22:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233416AbiIZDWL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 23:22:11 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55FCF1148
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 20:22:06 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id e18so7260035edj.3
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 20:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yQsxXFVnnycu0Ai4HAskpMNXUco0LHrZ9qALshiE0Kk=;
        b=TVddU5EuFj2t8KIz7T3zCcDHTC4WeulJBoHq9EOsixQxw9p+2NBuF8VMquNFeDbozy
         G0mxNI+BTMiiYOluXsqZBzifT5mNk4PwqWXe9qc/RUX++dzObFco3u6ohP87bJ2o7kt3
         tA7AC7/8JQ0rMS6oFMZfwH6xivu21fXZrzUxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yQsxXFVnnycu0Ai4HAskpMNXUco0LHrZ9qALshiE0Kk=;
        b=dpG+DZZznind9kcWm8fdIe0ckhAcASyrKsGCThmr6nMrIedQgvMfHQUOU1HWXWGeSC
         SLdcJzB5LYOyv1BsiYg09pTG65ZcbbZM1xwvybJiUSYnE+cu5OvzLpZGMS2p+exo+hSi
         n7k6CLEE3cja6DH2jzH5AH/oHk1H8/dbxz1Z5N8FRVqiWfRI8I31pPAjrdkTQavA7Xmq
         iNiNLIwfFpOmQSCLtZHJViYXsBNY0nwm0M8/H33mlgrWgRBoWzqo6vd3+gRbOLTP5R9R
         +0sgvmuurYbG+yU8GBLGRVt+2lnTBcrwe2rF8Sf3cT3NGMMxhqW444jrZECb2KqCKi4Z
         19yg==
X-Gm-Message-State: ACrzQf1q4OAGf6VR+gWfO33kjZbWGaUHUm5aCmPeN4dRZ6wKuEjJtnI2
        5vCN49ROKO+V3kdHkeVFEn28HfsQAc9J3szA5Le3Cw==
X-Google-Smtp-Source: AMsMyM4D/ZSyLsYSyu8xNz2kCJSqJ/H1GIkKLJy/AFRCNUaeLI2dpgccDtbydmm91X48YfUGORxcS3U01CQX45V/rng=
X-Received: by 2002:aa7:cc02:0:b0:453:b0f3:9927 with SMTP id
 q2-20020aa7cc02000000b00453b0f39927mr20858524edt.66.1664162524995; Sun, 25
 Sep 2022 20:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220915072458.18232-1-angelogioacchino.delregno@collabora.com> <20220915072458.18232-10-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220915072458.18232-10-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Sep 2022 11:21:53 +0800
Message-ID: <CAGXv+5GwYEv2O70_3rjDmY=RHZ900x3RKSaFYqzb_nTumT+YoA@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] clk: mediatek: clk-mt8192-mfg: Propagate rate
 changes to parent
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
        miles.chen@mediatek.com, rex-bc.chen@mediatek.com,
        nfraprado@collabora.com, chun-jie.chen@mediatek.com,
        jose.exposito89@gmail.com, drinkcat@chromium.org,
        weiyi.lu@mediatek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 15, 2022 at 3:25 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Following what was done on MT8183 and MT8195, also propagate the rate
> changes to MFG_BG3D's parent on MT8192 to allow for proper GPU DVFS.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
