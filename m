Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2938244BEA1
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 11:30:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231231AbhKJKcx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 05:32:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231204AbhKJKcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 05:32:53 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD69C061767
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:06 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id 26so567163pgz.9
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rtnO7Bm6moxapJOpDmqW3UadGBsmBZSmf1oZQVTs5BY=;
        b=P3Zjx0Hyq+32RzMf/e+0TH7R6bZPDc1VQVGRm6mJklPXjJ3E2y7zll3a/h5hwzInd2
         d63C9cHfkm618jGYGz2nEbxTURHcRncu7AQy7kda908zmtTJmYdpod2M+GxzBQkOgAaW
         3pyJW9FPadAoWPwK/fx0Dc1zYve3/+A99znjsQy0RNF26CBDA/mW1FQOyXjer+8hdQVg
         KHPaswheEtKBH09v60AmcUAH3/2TMbbowGDQYdmswgZ4HnwD6jwN7jpBmhO36SZb2VhP
         uAzn+IF5SvZbDi5vO8caloxssl1Sqt0FspfoohNqFJyd62Cg6vs5JINLSu6arcJ/cviJ
         L0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rtnO7Bm6moxapJOpDmqW3UadGBsmBZSmf1oZQVTs5BY=;
        b=T7c+eCvIx27ZLMP5BMi35vFC+lvuz2ZDnSFdMPW19QsRP4RL+kc7jN+ESeH+4+O8Fa
         Zd5wFR/CUr+HHMbpInX1aWSSPz9oqa7kIQxUhtE/8ZTjhSndPkpAqGh/3CzNC9BmO7KB
         C77AjqhY/SiY1q4VuV6M1/g1mb7vQkwcC10YQlsJXR+Q1cve36IbKvy/U1Gd8+BJZKWk
         v0a9uH8GHydfqGdTCCGE/prwOYtfh/MEEPt9g2s2Kely9O8tfbb0l4sNYOfhErQ1qOHD
         PhqNjb59kgjHcNHLcBgIvkPExT740DypBXXjBspaIWQeKjzRiVTh4jtIrKF16lWpmxk7
         zWtA==
X-Gm-Message-State: AOAM5309L8hrvGSwYSUaWiYkRJlAX5kN8Qx2Ij+745ViLjutxsBWvJdz
        yzBHpzfdXgfrj0ZybRD2ir2GX8shsNUZDJ/hW9wOux8kJAY=
X-Google-Smtp-Source: ABdhPJybXxLo5OYv4x3FX2EtYjPECd+qMB38G5dsYqeB2wevijTEozvPGP7GKTPKRoWDFUr1d6wpqdx/mT+1NE8lE1U=
X-Received: by 2002:a63:9518:: with SMTP id p24mr11113932pgd.80.1636540205425;
 Wed, 10 Nov 2021 02:30:05 -0800 (PST)
MIME-Version: 1.0
References: <20211109125030.26299-1-yunfei.dong@mediatek.com> <20211109125030.26299-4-yunfei.dong@mediatek.com>
In-Reply-To: <20211109125030.26299-4-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 10 Nov 2021 18:29:54 +0800
Message-ID: <CA+Px+wXw96jDAbtuJ-Mt5MnY9D4xPX-6wGZq5U_hwhrg+5UNPA@mail.gmail.com>
Subject: Re: [PATCH v9, 03/19] media: mtk-vcodec: Refactor vcodec pm interface
To:     Yunfei Dong <Yunfei.Dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 09, 2021 at 08:50:14PM +0800, Yunfei Dong wrote:
> Reviewed-By: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

s/B/b/, the suggested tag name is "Reviewed-by"[1].

[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes
