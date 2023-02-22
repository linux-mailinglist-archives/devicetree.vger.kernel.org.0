Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0A5E69EFCD
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 09:01:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231274AbjBVIBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 03:01:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231270AbjBVIBy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 03:01:54 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 191BE36FDB
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:01:38 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id d20so37184vsf.11
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Y/laJfFqV4xwHyPJ7m5mnZnkPz7sXnRa7yaLqyRbq4=;
        b=fwgJZ1kd/b7yZ8TdPMq+tKUzKjEZD5tLpT9fCYC0eKvSX7BY8L4D6l5i5Fs5mQ0VhA
         s1lH2IXxMhWLSNQcMkwL4NsJ6NPlpWG1Hs8qbltFRcnuRTTjJ9K1F6Aq28JktV0upaTi
         lDlbusLsU4bSpWk9IP9DxyyIZVinrYwz8sqm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Y/laJfFqV4xwHyPJ7m5mnZnkPz7sXnRa7yaLqyRbq4=;
        b=RQYBXcWwyw6SlhF0liERqeCbw9/hTFYzKC0dml+t0gXd/+rH6X4i0dFy2rc6nTVYAP
         Gh1qbDq/HKERTvmvbl8of3Yvw3y1CO3y6uQ96I4/MfW5dQgYHQyeGnGE3X9RkI67dX2R
         3Egix6LtZ9IuqlJ43OhZCRExz2eThuzOcdLD6eyBSb3FDN9RJFf8qVDaVBK5SQTPpe4Q
         Goq/kb0hVRshnMADr7gQw9Nys6feJ5JwrP4hSHPC4IqG00lx+1Yer814y8gBR9MHwz4T
         roUc/Dk2A06zQd4NXUhx4LIfKOAH25pCSpDeaCpPtobaQEq3Y8XeS7fmc62m2xSEyg5b
         h1Ug==
X-Gm-Message-State: AO0yUKVh57Z/CYHnpfRK7J71L+tSmhmqFWLVv0ZLb2QV/3vuFHnF3vOn
        fBjde7a8RwW99hjGz7ZR3KJkyebazMedMVhHEX+rEw==
X-Google-Smtp-Source: AK7set8jBcPu1FfniwnfmSpRHGWbhReDFVjElASgEIaz7mr0mpSwwLePzizwdVl4B4a62CrhB/XmVCgC0WHUB1uKmLg=
X-Received: by 2002:a05:6102:570b:b0:3fc:58d:f90f with SMTP id
 dg11-20020a056102570b00b003fc058df90fmr1556195vsb.60.1677052897191; Wed, 22
 Feb 2023 00:01:37 -0800 (PST)
MIME-Version: 1.0
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com> <20230221153740.1620529-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230221153740.1620529-5-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Feb 2023 16:01:26 +0800
Message-ID: <CAGXv+5GKTdGoX61OBb84VeH3nKH2DhN=6h9KEyMuKa2phgcUpw@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] dt-bindings: gpu: mali-bifrost: Add compatible
 for MT8195 SoC
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
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

On Tue, Feb 21, 2023 at 11:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The MediaTek MT8195 SoC has a Mali G57 MC5 (Valhall-JM) and has the
> same number of power domains and requirements as MT8192 in terms of
> bindings.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

For future reference, the Mali G57 in the MT8195 has a minor revision of 1,
while in the MT8192 the minor revision number is 0.
