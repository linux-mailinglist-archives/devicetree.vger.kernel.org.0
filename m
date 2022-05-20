Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4800452E991
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:03:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348024AbiETKDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348025AbiETKDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:03:11 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C16CEBBF
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:03:10 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id q4so6952858plr.11
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kPDr2d9+6sr9lCyWq7WNBoRvBQxorjF1e30W8kRss44=;
        b=WtkN6qR9mLXwX5J+02dBVs103/z9HbD0uTfUEmErMVHDJhdDK5IQ6d25M9w58GTzR+
         X/VUrWaJjeKoFmbpJvWmqOWQJDiMfqZBGDgSkS5qZ29cvXRcKD+bX92ZZdvBBamlW12D
         tqUxEIkfWl8XjVS0IAoyXLqmfCvAfJZ7l3gn7FkEz+mF1919qtuUax9y3BOl8yrABq5p
         U4TJaMGM0PgDJqxNhGbleQszDn6sXJJXYsWAMnCyv68IFPtAWTbw4Y6wC8UMUMxTxcXa
         goNH8SgpC6j74ztPP8oVp05xpc8ePy875D72S+2RJIFuB385Z3Lun1avyq/tke8iVz0u
         kMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kPDr2d9+6sr9lCyWq7WNBoRvBQxorjF1e30W8kRss44=;
        b=XrZ/pGFs1kmDDbIBlkADbGnK9GvuHWYiJ1/Mza8qmM01EnzId3KAoxhKEJd34+NaqS
         uMxpHoazbYztBr20h0yIF09kVBFTZ5f7vr4Iz1INdDNFCPZ77+T8iNzxg6rrQm7AOX7b
         c0cXVkhrXWJD5c6BGNBckv+WNxbz+DSoVmbXvy/meX3jPoR5CqzBvYxh6HCgusGqZkTb
         KAj8BiJWPR7Zn2LfI5NV0B6pIiEr6V//KcQcbtIYzSssRxkS4dqEhtIS9lCVe99cxzx5
         tvCshXvjCzKbsWiCliZS2ZA+q3IxYNOU2tyXQoY83dSV1phrMSxxH+iTK+q/6pjHnPPj
         tVSg==
X-Gm-Message-State: AOAM531N8Qug47c2UiWvfbVoKnDYcBQJnxYi6CrtH36FUpdDRo10lULF
        CAvQnBbSvaP1AwbVUZivEeXx8EFX51bw2NIKTNk=
X-Google-Smtp-Source: ABdhPJyaUo5/8pAMO+rImvZojMftnGDKz35IDQMdVoew1yS276UO3vJMNfKLmkL7kfOMCpSbrXcEZFcNL9AE5q+Qs8M=
X-Received: by 2002:a17:90b:180f:b0:1df:cc0c:bbfd with SMTP id
 lw15-20020a17090b180f00b001dfcc0cbbfdmr9913118pjb.84.1653040989493; Fri, 20
 May 2022 03:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de> <23894515.EfDdHjke4D@phil>
In-Reply-To: <23894515.EfDdHjke4D@phil>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Fri, 20 May 2022 12:02:33 +0200
Message-ID: <CAO_Mup+SCgeK9rBjYqnnOpJWUNXyJdXV9pjWXqi571sznS9-LA@mail.gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

wt., 17 maj 2022 o 20:28 Heiko Stuebner <heiko@sntech.de> napisa=C5=82(a):
>
> Am Freitag, 22. April 2022, 09:28:17 CEST schrieb Sascha Hauer:
> > It's v11 time. There's only one small change to v10. Discussion seems t=
o
> > have settled now. Is there anything left that prevents the series from
> > being merged? I'd really like to have it in during the next merge
> > window.
> >
> > This series still depends on:
> > drm/rockchip: Refactor IOMMU initialisation (https://lists.freedesktop.=
org/archives/dri-devel/2022-April/349548.html)
> > arm64: dts: rockchip: add basic dts for the radxa rock3 model a
> >
> > Sascha
>
> I've now picked up everything except the hdmi-rate stuff in some way.
> The driver changes will go into 5.19 and the DT-changes into 5.20.
>
> I'll now move the series out of my focus and would expect further
> hdmi rate voodoo to start a new series :-) .
>
> Thanks to all involved for working on this.
> Heiko

What do I need besides this patch series, mentioned before IOMMU refactor,
and DTS changes for MIPI-DSI support on RK356x?
I'm working on mainline kernel support for a a RK3566 board with
a DSI display.

Best Regards,
Maya Matuszczyk
