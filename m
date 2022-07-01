Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2144A56318A
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 12:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236512AbiGAKhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 06:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236504AbiGAKhE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 06:37:04 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81BB76EBB
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 03:37:03 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-317710edb9dso19901017b3.0
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 03:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jBVQj6zu0U7jkHVLOzPHDFiH21K5735tKjSbqEv4spg=;
        b=jr5qzoxv0EQ6ow5RimCUL0thLdOlKD2Mp38XOhb2QCXhk3ERPNY7lFT6qKHXl9VBDy
         3VztuzSi0gzHi5W2lZY6EJt+PWBD8VxpvAA9O3tF3+kniNwtzA+xS+BXdAnpZoD9nAjt
         7bEbC85ysE3WcOt7m4FVavxND3V930mWPz1zM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jBVQj6zu0U7jkHVLOzPHDFiH21K5735tKjSbqEv4spg=;
        b=Wfq/07NfK3ojGiKptCijrJscXvB8ubQgK+sWkybPPtZFuYklz4ot5LmIMJns7jq8jy
         UC1aHN9LNcggLZHaO7k3ogbuH3GSeqgoXrvJg1/Kzt72CZ4m9viKqwBRMAQN483N0FoW
         5FUPuao1cvV9yBwF5poetPM6vBD4CyfoNojD+rd8LH0ZtbRf40mfUGR4EgdCwjqrhMLe
         2OG29mxjoKivg6JvbjkYiNk/Up7MOxzg5xYFQ+iRDfWFs6EQc08qsbcFExG5uhyBkOwd
         tCOYOMdFzP9U65mEwi8sTwGyIyvREKWS1LgeZr6Vf62yw1pjMTNHsNcWeOImW01s0mx1
         D7YQ==
X-Gm-Message-State: AJIora/5PqJKm5PCEbMGbEgOrMRWAVRRT8xylZG8rR+0jdIlGm/2R6kG
        FEveKWa/jsec3OgH2v0J4Uf1rNYAklks6LuHB1mWRw==
X-Google-Smtp-Source: AGRyM1uHIKIv2IBD8W2iw2DM4IM3lmhp0SNZnRvFfOIGzZkNmD+miY/TbPeNxObyuEbB3d9mNtWcA1MjAOFyTnhGSuE=
X-Received: by 2002:a81:19ca:0:b0:31b:732c:15e9 with SMTP id
 193-20020a8119ca000000b0031b732c15e9mr16065949ywz.167.1656671822866; Fri, 01
 Jul 2022 03:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220701090547.21429-1-allen-kh.cheng@mediatek.com> <20220701090547.21429-2-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220701090547.21429-2-allen-kh.cheng@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 1 Jul 2022 18:36:51 +0800
Message-ID: <CAGXv+5FTXXWZU4FyqJ7uqoPGso7ofsb1=QS0mU8Ay2hSz7rFXQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] drm/mediatek: Remove mt8192 display rdma compatible
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 1, 2022 at 5:05 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> The compatible =E2=80=9Cmediatek,mt8192-disp-rdma=E2=80=9D is being used =
for reading
> the data into DMA for back-end panel driver in mt8192 but there is
> no difference between mt8183 and mt8192 in rdma driver.
>
> Remove compatible =E2=80=9Cmediatek,mt8192-disp-rdma=E2=80=9D from the dr=
iver and
> should use =E2=80=9Cmediatek,mt8183-disp-rdma=E2=80=9D as fallback in 819=
2 DTS
> according to the mediatek,rdma.yaml.
>
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
