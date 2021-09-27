Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E133A419D3E
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 19:46:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237427AbhI0Rrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 13:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237271AbhI0Rro (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 13:47:44 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28146C043968
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 10:31:55 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id a13so17372005qtw.10
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 10:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q25abHd9wgNegk3LUcOidVwBOafJNu1U9ST62KJXKh8=;
        b=Ny6AIsS9MNvI6ERmgppnjGwYp+CeoJRk0IArqfNnE6eticiIdzNtufGZQts0fxRfaa
         2La6isn8ClLdLGvpKcRN7Ws+5DbB2alushQpd5Mgdc9x0R4XjR8obr6bX67RKTuetBaA
         VnxeAY+0ch/n5c2/oqU2Ri+Wkk5YXe/CnUMzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q25abHd9wgNegk3LUcOidVwBOafJNu1U9ST62KJXKh8=;
        b=sczXxdvhrgx7vXHghPR8WX+4hwNKF0Yer0LCh8ksmpz/mMWk7cSXStUZRWRWDaVTO7
         WgDBnsAPXTyJAQTvtZkx+pANUIMtHb/UsFsKnUsFQc3PPEKhiepyYdFLcE9mELrWlklE
         t6VI5ZT+jhNpPDggEmueto/h5Mj8GbLqvzyBWF1QAm/ctK4810M1cghpmhoKqOsblULA
         xJcZnws+CmCoX8EkcQWC+J2Uuo+2tsybhHxnIQED3VkkZ7/x6fHGtTL8Hn8S2lBmDDvi
         vT7FzLn3aedwUpGxd9JkNf+jd9vv0ovyoe9r/QL1LEjl2ZQiQZL1Z6so/U15jEZDrvMa
         InyA==
X-Gm-Message-State: AOAM532BSDEzmw32jNXY3dBj1jOsiP+7WUtAFhj5/uHdMh14w+5XfpuM
        oK8fubjH183QF0rcpHMmHNgACtAa9IbC0n8t95jL6E7VN8oHrYHh
X-Google-Smtp-Source: ABdhPJx1KC2Sf4WzHgUQwWyPdWRuSlZoOLnjiZdGnYaexNZXkvQiCqTpJJd5W5gO70e5CRvJBsLepizgX3kZwngK+r4=
X-Received: by 2002:ac8:4089:: with SMTP id p9mr1016844qtl.363.1632763914260;
 Mon, 27 Sep 2021 10:31:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210901083215.25984-1-yunfei.dong@mediatek.com> <CAC-pXoNT8AFA2j1DiD9M_uGb92fVcukTGDKVURaGjwpPstcwqQ@mail.gmail.com>
In-Reply-To: <CAC-pXoNT8AFA2j1DiD9M_uGb92fVcukTGDKVURaGjwpPstcwqQ@mail.gmail.com>
From:   Steve Cho <stevecho@chromium.org>
Date:   Mon, 27 Sep 2021 10:31:43 -0700
Message-ID: <CAC-pXoPrOO8W2Le_-WdgX3_=D-Qde8ut_TAzC++EyGCkdoOoPQ@mail.gmail.com>
Subject: Re: [PATCH v6, 00/15] Using component framework to support multi
 hardware decode
To:     Yunfei Dong <yunfei.dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media <linux-media@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > [1]https://patchwork.linuxtv.org/project/linux-media/list/?series=5826
> This link seems to be no longer available.

It is probably because the default state is "Action Required", and
this series was accepted recently afterwards.

I can see the series with the below link.
https://patchwork.linuxtv.org/project/linux-media/list/?series=5826&state=*

Sorry for the confusion.

Steve
