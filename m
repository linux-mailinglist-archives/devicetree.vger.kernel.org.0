Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17E3C44BEA6
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 11:30:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbhKJKdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 05:33:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231224AbhKJKdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 05:33:05 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66F0FC061767
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:18 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id t5-20020a17090a4e4500b001a0a284fcc2so1464621pjl.2
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/H97nPqB7O+Ha49bdQqeIeu5pMRHp/3DE9p9icaUgqM=;
        b=PUuEyw9XBots469I4b/mSNfuAjfpd7qQMzH59EqV6M8zrGuW5q/CfOy/XJM/r7hsaF
         ndro4ZRi2k2UFXbYR7Y2TD+wsPKHpZaqWMHSaQC5u0vRq/R4W4M75LnQ6wwHqTSRhgjA
         gNhSq0Dc8jWZWpqCIgVAsX8h+/O3mbrRqDeGIUv2lwZ2U3bRdIAyjPOH7bVnTrFrFM5/
         FjN72YqxEMlv/SAj8JL4+P+sZFmb9ZhnqE0y/Dg5uFA/hcBKG1196tdQW2bAJXYHe/fz
         wZWqGkamOre8skZ1KLmAgmEvyTB8aiEzTVhVd5dmXMR4WSLYYi9i0jUTIq125egaczwZ
         gM+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/H97nPqB7O+Ha49bdQqeIeu5pMRHp/3DE9p9icaUgqM=;
        b=oTP5ALVwShRjiYFyXYyE3ihSOuAkzlAnJ/YSFIeySp8W5gbcjxIRKjlbPLXXHUjdXk
         73XmHhqz9UlpwkqGdd0fUNZFeZtHfF6skB2ev2X925InR9w9CB+WT+T7sDG1ME9aiz+U
         YNW0zeVZXoM93pUTagzpPXnundcOUPaBxsG0Jd3Fkj7rYI0wdB7Y/zZX7oEPAewh53NO
         FReyJm55sY/bFjZUoNJ1NLVtROM5kDjMOCgdyRC2NH4Y201T2djcQUXD0Rlk3UaCfCBW
         oeG76a4DlM0adVM8aO8/hA8HAa09ucVMl0uhRt/c1k7a6ziYKAx2vj2QmVlqQCN1Z21e
         siUQ==
X-Gm-Message-State: AOAM5332WHHP98XFNyr2eNWUyMrLalrv+V0yVtG5DqswTdUWNtIaZmQ0
        rGtSuA0gY3SirJfk8puUMuxCj2L2y6mnPKUPGBJ1iA==
X-Google-Smtp-Source: ABdhPJz1qeQBdRPNXYe0xOwKF+EIkcWuZ9iABV9TtnSScZMDJCzYb6hg0DTj4FGiTtJpUHr1yfmX7QThpigva/yBGZE=
X-Received: by 2002:a17:90b:4ac1:: with SMTP id mh1mr15543616pjb.30.1636540217454;
 Wed, 10 Nov 2021 02:30:17 -0800 (PST)
MIME-Version: 1.0
References: <20211109125030.26299-1-yunfei.dong@mediatek.com> <20211109125030.26299-5-yunfei.dong@mediatek.com>
In-Reply-To: <20211109125030.26299-5-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 10 Nov 2021 18:30:06 +0800
Message-ID: <CA+Px+wU6iwjisS1_Mdxdt6eb4pjLQp_Z16bA_ewEhCe80worKw@mail.gmail.com>
Subject: Re: [PATCH v9, 04/19] media: mtk-vcodec: Build decoder pm file as module
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

On Tue, Nov 09, 2021 at 08:50:15PM +0800, Yunfei Dong wrote:
> Need to build decoder pm file as module for main device
> and subdev use the same pm interface.

Why does it need to be a module?  Could you provide more explanation
in the commit message?  For example, any compile errors under some
circumstances?
