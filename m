Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6244667C7AC
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 10:43:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236600AbjAZJn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 04:43:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236585AbjAZJn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 04:43:56 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42DD6AF41
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 01:43:54 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id rl14so3604202ejb.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 01:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZkQeQrjxFirNA98ICYKxraGXUpMqPIXkoDOLmYL5f6I=;
        b=Xibvy4IdYxiDWH+gnKHlUpWVPI9wU/B0ZoN0P//fYD4WC+hEwxBPryaGf4s6nAXv5Z
         HMgvfoMK3Wd4k2h6nc0b7AOE4Ze+yp2m6GUtteaXzzYG84/sLRXWS4DvHMPm7oWC9Tio
         7HlljcK/6nvQ5dxdJGiIRfX57jnxmWdforNwP02hQquppkHPehjIVTKwMl/qsDUI0F1+
         OQPRt5N0eRrSzAk/Zs+qdq/zhv3sj0VailSq9os+G0Fg67nf24ItvQIgJT3HGerV4Zt1
         8hq7uXmS4M+84My5CIgcQmSYAnDiAlGshAk8LhJA6qDI4IYsyaMaEoz++gzMy6+slouM
         6TOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkQeQrjxFirNA98ICYKxraGXUpMqPIXkoDOLmYL5f6I=;
        b=K180Uz3EEajLq9L2IMPeNyuhTOoe8xMcJX+wemP5qXuhIC+HOa7DBVKuN2cHvcyljC
         YTYYDiMKpv4jbfZ3JZwDE+NuBSH0XVb83qiVGHVfap7yWss56pOCc315z4WC2oGg/L3F
         IywkAI9ZkBTCO0L/Ytu/vLTu5Qq+ilNWtl66WKEfuFWBTI2WTSfXW97nTO9MR+eCErAo
         kvLETXBHxmUaEszglpdiEx37eomC6kC0Bbyc6shFth1hrdCTH4ZQs19X2fhaRqYqV+83
         tYk2pxHtbZjhtuHVkphXulynZnW/P2edchK4fAhcq/rrA+G4Byx7aEWs6SUZSIXvcPA/
         pQqw==
X-Gm-Message-State: AO0yUKUzvMDEc6I0bEn+SJG2+n46pvwL9f4nDI2LNflvhUo3FdyaVXCw
        GgoKGOckRdgonZ+MsU2Ya9LPb9ZtMKxb+CVRxt9prg==
X-Google-Smtp-Source: AK7set8wQ5OBxV3pr4cshnfVzFeiOtgXomMd6lzXhm4mJtrNqwdgad4opn6PrAzJm+2VbQdaLtrD8eaK54pDT7f35oY=
X-Received: by 2002:a17:906:eced:b0:878:4ea8:6c2f with SMTP id
 qt13-20020a170906eced00b008784ea86c2fmr650138ejb.115.1674726233044; Thu, 26
 Jan 2023 01:43:53 -0800 (PST)
MIME-Version: 1.0
References: <20230124131717.128660-1-bchihi@baylibre.com> <20230124131717.128660-6-bchihi@baylibre.com>
 <80ce4ea3-6ebd-c249-45bd-a2f04343690b@collabora.com> <CAGuA+opCcdbPbasadEFbKw1nSy-kbK3WzKG=wXn6dtzynjrY1Q@mail.gmail.com>
 <243ad9f8-76f6-3e60-91ae-21d04ba6f262@gmail.com>
In-Reply-To: <243ad9f8-76f6-3e60-91ae-21d04ba6f262@gmail.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Thu, 26 Jan 2023 10:43:17 +0100
Message-ID: <CAGuA+ooybKdNdmUqN9xQpuSNFfSnA6+yj-UrmMkU9RZv1KE1qg@mail.gmail.com>
Subject: Re: [PATCH v11 5/6] arm64/dts/mt8195: Add thermal zones and thermal nodes
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 25, 2023 at 8:09 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 25/01/2023 16:10, Balsam CHIHI wrote:
> > On Tue, Jan 24, 2023 at 4:37 PM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 24/01/23 14:17, bchihi@baylibre.com ha scritto:
> >>> From: Balsam CHIHI <bchihi@baylibre.com>
> >>>
> >>> Add thermal zones and thermal nodes for the mt8195.
> >>>
> >>> Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
> >>
> >> You should change the commit title to reflect the same syntax that you can find
> >> in a `git log --oneline arch/arm64/boot/dts/mediatek/`.
> >>
> >> arm64: dts: mediatek: mt8195: Add thermal zones and thermal nodes
> >>
> >> or
> >>
> >> arm64: dts: mt8195: Add thermal zones and thermal nodes
> >>
> >
> > Hi Angelo,
> >
> > Thank you for the review.
> > Should I resend with the fix?
> > Or you would fix it when applying it like Matthias did for "[PATCH v11
> > 3/6] arm64/dts/mt8195: Add efuse node to mt8195"?
> >
>
> If you need to send a new version for any reason, then please update. Otherwise
> I'll fix it once I can take it.

Hi Matthias,

OK.
I appreciate it,
thank you.

Best regards,
Balsam

>
> Regards,
> Matthias
