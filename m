Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB40E4199E1
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 19:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235648AbhI0RE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 13:04:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235687AbhI0RE0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 13:04:26 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 786A4C061604
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 10:02:47 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id 73so37637464qki.4
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 10:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tNPetvOupXqRGUiN551DEoj5v4Vq3J9M2I/AbCZn9/s=;
        b=DaJH5fJcZaPTWSS82pjbCuzrmgUbbbI8rDumgBGUwFhl/oYhvIG/pZqFDRqj3etyng
         gynjZU/qESEM03OCs4i9F0KxLfb9njtq1177Zhh6o5nIU4Ak6ZFaHDvNbgLrAZMWuX+7
         /vo8yFf6ik5YAvsKvs/gkABlt5Fb5DP5jWTCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tNPetvOupXqRGUiN551DEoj5v4Vq3J9M2I/AbCZn9/s=;
        b=kJd8bXEtb0h9OJ7ilegKBnun1hC2Ydzq2IdLexF/2En7uK1mJBJo5T5CRaS9TiC87J
         7/ldMBXke6MRp1zBs9epS5PkK/4NKNRwk3bnQQcyQeBTAQcqHe1a0jK6gY1H2XM/WM4x
         vD/tsTm/cA7t5crmrbli14WDDsusenVc8v3C2+JXCg+1VsvjMUFMHULglH3WXIClD3dt
         ZC8kSumgKIk3FyHP1bmypEppNJnrZguS7bcpuJP1tiz3EVTsR58w5dky3MXvYvi5W1XP
         abPtJ+Sg0umMCr/q3CU2yGyFsGU61v7dh1EjpXWjlSKVPtYGO5shFfR7/byypI4u+RBa
         B0rg==
X-Gm-Message-State: AOAM533opNbjup9cZVogCeZjSAeL/eezX3Juvl0acVqYL95mVtClwi2X
        arGN/hpjk8yetDD5rIgg3nd1fstsJkv+CiGZHrVwsQ==
X-Google-Smtp-Source: ABdhPJwBRvTBeyV1410Jpc8AMLHK25Pf6f0uExAdgdt+d7oQNAG2MpwCW4ToDnxi98Sln0HasYsHB8qhK0klEJITwTM=
X-Received: by 2002:a37:a087:: with SMTP id j129mr979840qke.253.1632762166561;
 Mon, 27 Sep 2021 10:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210901083215.25984-1-yunfei.dong@mediatek.com>
 <CAAEAJfDOt_GyDPojcj5P6Wou9HC2GC8YzRt2wYyqdrCOjfeOog@mail.gmail.com>
 <3b9463e88d88ce85205da08f8263252da7726ade.camel@mediatek.com>
 <aba7fb4ffe6e45ac90869b5017468386bce64d28.camel@mediatek.com>
 <b7ed8b71578a98704e9b8ca29cac63c67cc14b3f.camel@mediatek.com> <CAAEAJfCHEBFc8B7C0bu7UxtJdffvDarqgA-rset1wPjLOiV01A@mail.gmail.com>
In-Reply-To: <CAAEAJfCHEBFc8B7C0bu7UxtJdffvDarqgA-rset1wPjLOiV01A@mail.gmail.com>
From:   Steve Cho <stevecho@chromium.org>
Date:   Mon, 27 Sep 2021 10:02:36 -0700
Message-ID: <CAC-pXoMR=mOwnKqP5SFAfF3Ka5UrG0F8Mj=sJuEziU=uOKftoA@mail.gmail.com>
Subject: Re: [PATCH v6, 00/15] Using component framework to support multi
 hardware decode
To:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     "yunfei.dong@mediatek.com" <yunfei.dong@mediatek.com>,
        Alexandre Courbot <acourbot@chromium.org>,
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

Hi Ezequiel,

Thank you for reviewing these series from Yunfei!
This series is one of the main obstacles for us at the moment for MTK
so please continue to help & support reviewing this series.

> > According to google's suggestion, it's better not to use v4l2 async
> > also.
>
> Hum? I haven't seen such objection on the mailing list.
Maybe coming from Tzung-Bi?
Yunfei, please let us know.

Steve
