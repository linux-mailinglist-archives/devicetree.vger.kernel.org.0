Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6451B3AE652
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 11:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbhFUJrG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 05:47:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbhFUJrF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 05:47:05 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7293CC061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 02:44:50 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id l64so15001390ioa.7
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 02:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B1TJ7i7KgvD4fdVHGJRMyrwZBOAJHAbvbRMumj5+UHU=;
        b=oEH8oXFU370Br9g3znCrw/jxIio1QtFBa5A6CP3kUeuS19QSTY3vKt9nrCSZuKBVTi
         5brliEyrr6r8ljXgjJMpyq43ews7qe56KFUuDJxzbJcL9WSPWymyu7oXKRvhk4GiAZ+3
         bLG9WD/aVpzce5J7dH9/+j18PKYirkUpWvUcEIhoSXGcnRXKncDUz+2KoxSQHajjMtrh
         Lj2MfwxZGzKGt4KClbBqfBPz1ThE/6Od+9F61Wqk66CGQnRf+k+tV6cvO/iQ8cWlxUWf
         12ef7wufrr92vtA4YaUgHSigOr78dB94tlRU6ur0x/lc4ColXAz8QnaAIRXtcVd4jLQd
         Knbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B1TJ7i7KgvD4fdVHGJRMyrwZBOAJHAbvbRMumj5+UHU=;
        b=aQtDvRFQ+GYZ+QNr1FSh45v4HoxbepS+69LE7C0ZqC8eBOkGo3smO/XJHyxUmpSCay
         7mTkvv27/UAYuGFzOftaODJEXvkScy2zxpIXQNr1LNarKgiF2HGuePJtHRFEJWm2bAt1
         TwhjCDDvKjgd1E16ncj7AwfsMO7IIJ8Pf4XjUOB/JJ/NxucXZeM09dNXyzBiOE11uKVE
         vFPILMvJP3Kfn9abjpe2rO6pf5AAD5av7n6UqnfwQUCtpN8u5PC/X9JYuivF88HdBkMu
         EG7CHEPJF3UGDG1yfD7Ot5IxOuVlk+NSySIU6OdN/G2FHpBTEXOOx5gfLN8uFo9k6q7o
         thbQ==
X-Gm-Message-State: AOAM533OxJDR5ZLXvsAcN/2XNFR38I5YfO/MLkVxsA13fK4R0Hq7zj/I
        trNQ5gdsHbPetk2uqvr/DM026SK4yXu3Tn6dy42R2w==
X-Google-Smtp-Source: ABdhPJy2/hr3Yxo3hr85EvZD23OIDokym52uhxrGItyfkdlVu4ZgoBws3YJE2JUHydA3ekG2826MMN/wIxMICXR4ifo=
X-Received: by 2002:a6b:5908:: with SMTP id n8mr1139742iob.185.1624268689710;
 Mon, 21 Jun 2021 02:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <1624266114-21539-1-git-send-email-kewei.xu@mediatek.com> <1624266114-21539-4-git-send-email-kewei.xu@mediatek.com>
In-Reply-To: <1624266114-21539-4-git-send-email-kewei.xu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 21 Jun 2021 17:44:38 +0800
Message-ID: <CA+Px+wXx8eyh2QFRHbkf3ESdXzBw8LNqP=jMihju+jV0TpQvhw@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] i2c: mediatek: Isolate speed setting via dts for
 special devices
To:     kewei.xu@mediatek.com
Cc:     bbrezillon@kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, linux-i3c@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
        qii.wang@mediatek.com, liguo.zhang@mediatek.com,
        xinping.qian@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 21, 2021 at 5:03 PM <kewei.xu@mediatek.com> wrote:
> @@ -1293,8 +1355,8 @@ static int mtk_i2c_parse_dt(struct device_node *np, struct mtk_i2c *i2c)
>         i2c->have_pmic = of_property_read_bool(np, "mediatek,have-pmic");
>         i2c->use_push_pull =
>                 of_property_read_bool(np, "mediatek,use-push-pull");
> -
> -       i2c_parse_fw_timings(i2c->dev, &i2c->timing_info, true);
Looks like the patch removes the line accidentally.
