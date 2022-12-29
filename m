Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFDC9658B9C
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:19:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232879AbiL2KTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:19:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233355AbiL2KS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:18:29 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2244DE8E
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:16:05 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id m129so12206818vsc.11
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C0fNA7li2melRrJ2fvEzBzk17w400NPv5/Za3XTFksU=;
        b=WP3Wk7cvHe6N0tLUiOIS7JTVEgh+E17QI7Uug3ObedTrhMZ6oPVIyzN4bFPBSd4Qra
         6HtQlzFNVLs8ucXNKoWXoUA1RYiR0Afu9OEYz9w3obvnCTS3WupMh6giZgM1elCQC1mY
         iT0oJMt1ACyH7XBdw+0uPqMpxJaD0pSl1Y9oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0fNA7li2melRrJ2fvEzBzk17w400NPv5/Za3XTFksU=;
        b=uER3TQf+TBmBzyool6NRtb7Dm6hzlCMFt8G4XQVcOKPVtbyGOnTebIsJfvnPsR9Jep
         6d7ToVgW/fv5ewDn1tjffIiS7b6k97nzrwHotGRKt6Oe3tzKaTXlsZWD+cZwfZtY+35k
         07qsM96KJbAIcyk7jGTrivBSIv9e8h6b90AMjwhgpn/Aw/mnz6h9y0LmCYCcbxAKT51Y
         FeSpUBz1WfXPNOVdTeIwIRrLHxVafRlY3UjvwfamqGGdAlXRoj2/r69D/zVDwwskq0xF
         RtEHWEgQBPRHpF/KE0B+7o0C6v15I5SohDLs8lF883NRJDLYP7DkG9F9STU7tO8Y2FBK
         9vEg==
X-Gm-Message-State: AFqh2koi9jfi4YTiR7X6E9CUslxifWy/dDMCtnLoaaskz2C8aeP08er1
        uXokM5u0gI9PMQhBx9BGmHisxT4SUhJbXK+V9whyPw==
X-Google-Smtp-Source: AMrXdXuCQ1T74QcCwFC81IAplOKfPkT1QH9WpfKDVIsV5w8/XaAZftVUaaUiCLqnt1gCsoFAsMNsWbl24g2ZotKJ9BQ=
X-Received: by 2002:a67:f985:0:b0:3b3:7477:5aa2 with SMTP id
 b5-20020a67f985000000b003b374775aa2mr3316243vsq.65.1672308964971; Thu, 29 Dec
 2022 02:16:04 -0800 (PST)
MIME-Version: 1.0
References: <20221221034407.19605-1-allen-kh.cheng@mediatek.com>
 <20221221034407.19605-6-allen-kh.cheng@mediatek.com> <6576a435-dcc1-af80-bbe9-dd98bb0d53e8@linaro.org>
In-Reply-To: <6576a435-dcc1-af80-bbe9-dd98bb0d53e8@linaro.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 29 Dec 2022 18:15:54 +0800
Message-ID: <CAGXv+5GniKdzf2cQfmc=usR693gJDq26kvgoUYOjhPdHFTKx2w@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: mediatek: Add missing
 power-domains property
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ikjoon Jang <ikjn@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        angelogioacchino.delregno@collabora.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 21, 2022 at 4:18 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/12/2022 04:44, Allen-KH Cheng wrote:
> > The "mediatek,mt8192-scp_adsp" binding requires a power domain to be
> > specified.
>
> That's not true. Before this patch, how does the binding require a power
> domain? Please show me the part of binding which requires it.

Maybe this should be reworded to something like the following?

<--- cut
The SCP_ADSP clock controller has a power domain dependency that was not
described properly. Add it to the binding.
<--- cut

This was discovered when I was reworking the clock drivers. The clocks
in this controller were being turned off by the clock core, which would
result in the system locking up. MediaTek said this was due to the power
domain.

Regards
ChenYu
