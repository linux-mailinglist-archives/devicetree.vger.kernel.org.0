Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0806A1946
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:59:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229760AbjBXJ7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:59:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbjBXJ73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:59:29 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 043CB14239
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:26 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id o32so3132978vsv.12
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=42euZkX+yMf1C2mikEGS5vQfJkCO45VzoJtEXc76qU8=;
        b=YDk/l6/cWNaLzmBC/rEm3rckPKaSfFVjK7ZEHaNF2aEFIGCflq9QvHAtARyHxjGiWj
         rLnE59Ec27M/E4ORE595hXMWP9gfnzyd6Xmp65sXYC9cnI+ElgNlMvZ2H7/cmjUauXLi
         etbLVWfm9ilu3S90SjGhXHS1lob0jk0ts2GM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42euZkX+yMf1C2mikEGS5vQfJkCO45VzoJtEXc76qU8=;
        b=5Jgjn9EvjfN3+qwKhbGnrxZ90kh3kBNyldwVx+m7lionm/RkEvjZSODJ1Odj07Ngy2
         rnFUH/M93yePMYY3zyo9Mg237P5ffe/+/Nw3BoxPgy6+Mb4drwqmTVCFEDX/GhVstPBw
         ldkz5nXTvhrqIWnBEnrsE520gLZDg1wMMOdUpwX53YG/PTzCrlmJtvcKo0ofFx9gt0t6
         Oizw/w9p24GbQooU+rFN+ABOZqAkbHgsuBdi6DDU3cyGxS62Ff7tLB86n32aHn6nvBWB
         Ax7SXKGdsdxkhPxW9xVQZqYDOzQiw8amTJmErNfJ2kJXRze7FY+3YywJqMLI0tqLrLTq
         bKUQ==
X-Gm-Message-State: AO0yUKUavU6zRQncq/+S5Z8BAdxdyWFSwvFlvgUFnWqvkpyGIzs0kTaT
        reF0GjUZ7GmDeWsec9u3Vrsvt8oixM67sd1fGLGfGg==
X-Google-Smtp-Source: AK7set+FkBHS6/fPZFDwWjpron9ihs3X9c+RNxDyeF65c4FGJjvyTyfgFBTFlNHPzZ+exincltoTJKQUAr3TSuy6W60=
X-Received: by 2002:a67:c584:0:b0:41f:641c:f775 with SMTP id
 h4-20020a67c584000000b0041f641cf775mr318400vsk.3.1677232765147; Fri, 24 Feb
 2023 01:59:25 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-13-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-13-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:59:14 +0800
Message-ID: <CAGXv+5FTHJkAOtr1M3NK14UaFm-aKtnSomn+jVbWZP_h-Fz=cg@mail.gmail.com>
Subject: Re: [PATCH v2 12/16] arm64: dts: mediatek: mt8192-asurada: Enable GPU
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
>
> Enable the GPU with its power supplies described.
>
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> [wenst@: patch split out from MT8192 GPU node patch]
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> [Angelo: Minor commit title fix]
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
