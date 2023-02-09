Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ADD6690274
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjBIIt3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:49:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjBIIt2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:49:28 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CDB411EB3
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:49:27 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id k4so1385308vsc.4
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=22xHVaizGQeKTJvsqtfI5zTT40uK/PwvcQY9ndeXRhM=;
        b=nEEpvk7/fdi+G4pqGRp67+yXUNRS9lFzkJh9kf6sbHjy8/UxKIbI0VqqffhzwZS2pa
         oiBb8fdNaKoWz+iGdBMH7HIDvnywsSa/qktrKHgqmY6E0Xd35NbFH0LC0Se2ufdapwWL
         M/666v2WvN1+4gAnk0Hk1aS0jGVqHGi3Qaxec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=22xHVaizGQeKTJvsqtfI5zTT40uK/PwvcQY9ndeXRhM=;
        b=Lqv8EFTSYGKRPBDscygk7EcW3Lo02nYWF0U46iPF6s/aHG1agbXM5jBFpZHVWS3Zl/
         nJh6Mg5VbPBg0kT/KiifhKu04w/vSE6S27CNmIkaso3Am57fE4MXMFlNmrkg4y6VVqHI
         nLow/3NtcW3XfZPgU8dAd8EmBNgW+tcjAYyQLAlCteqn9nQ8a26KmFwhBzhmcZvP6Air
         fTjqzVSfdJ7Upmmy9ReUOfHF95796mC9nCBBq+883y+P9QFxc7HJbyW9Ol00AHg8nPwz
         UqpeAN3wxziqWL9MHuf4f53F+qWaWy3JVgOaFjPVtXzZWHZKUhv5+mkn2ZCGLBMbtsM1
         Z3Ww==
X-Gm-Message-State: AO0yUKWqZ7UW8+tvkQCQd7p5B7LFLWgNNgoPaZ3wiIcT0QWQAxjOMvne
        zg5b5SOHKkeBswJql3k3C+SfS8dxBqb+Wxr+rUqWyw==
X-Google-Smtp-Source: AK7set+QkzxKXW4pEMAPFic1Jd0HAeOizDIe+SLOSX/iixyH3n7tgpUonX30kC85rHKw9l8o8gB7revPyLNojTYB0e4=
X-Received: by 2002:a05:6102:3d18:b0:3f7:93c4:9e56 with SMTP id
 i24-20020a0561023d1800b003f793c49e56mr3105328vsv.85.1675932566080; Thu, 09
 Feb 2023 00:49:26 -0800 (PST)
MIME-Version: 1.0
References: <20230208103709.116896-1-angelogioacchino.delregno@collabora.com> <20230208103709.116896-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230208103709.116896-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 9 Feb 2023 16:49:15 +0800
Message-ID: <CAGXv+5FZqrGzzG8FrmLVzMd7=a23ZJPYGSy5yhYWgH+BFHNmxw@mail.gmail.com>
Subject: Re: [PATCH 5/9] dt-bindings: gpu: mali-bifrost: Add a compatible for
 MediaTek MT8186
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, tomeu.vizoso@collabora.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, steven.price@arm.com,
        robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
        alyssa.rosenzweig@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
        Fei Shao <fshao@chromium.org>, Nick Fan <Nick.Fan@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 8, 2023 at 6:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Get GPU support on MT8186 by adding its compatible.

I'd skip MT8186 for now. We have to work out some binning details for the
OPP, in particular how to deal with both Panfrost (or Mali) and SVS adding
the OPP table. We were just looking at the Mali driver today.

ChenYu
