Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEFB524FA0B
	for <lists+devicetree@lfdr.de>; Mon, 24 Aug 2020 11:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728183AbgHXJwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Aug 2020 05:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729547AbgHXJvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Aug 2020 05:51:12 -0400
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98450C061574
        for <devicetree@vger.kernel.org>; Mon, 24 Aug 2020 02:51:11 -0700 (PDT)
Received: by mail-ua1-x933.google.com with SMTP id k18so2406804uao.11
        for <devicetree@vger.kernel.org>; Mon, 24 Aug 2020 02:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yz4RpUPjXN0rEe+NPaAYtjgKBt6C1RIGXkmwJF5jkgs=;
        b=gwrOQjkEr8mU7KaaAvaiAAA8NJOEM2J2XPF4XkiF+0H6mxM41bqjeC1vPUm2mW9IJz
         KOT9xeXVIyu378YvF2B9Rs93IfbrxYXfv1oayDOFnZMkvzT4x6Kfc/m/o8grcb/8HbAM
         eyclKodQAUqKuqfmsZxu4VUXIpwYETjjukZB0rdaJ36LcEwXMyg4drimpgUfcNlTWSga
         bfCkhvAynwO/2Ski6Zv5OAneGpSfq9VM4NSg/6W5pRnXItzF8JgWkAkt2FAlA2VeVst7
         OjhIro8DJJrNScCsMmkYGkj88TE2ZesRBFAumz3N32QjeJIy85KLWfzLeGjOlTyl60gg
         G1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yz4RpUPjXN0rEe+NPaAYtjgKBt6C1RIGXkmwJF5jkgs=;
        b=czkxwBn4WEdsXHd4lCNwkSAhi9T9mXVN4Ag/NJauB+5kxv5/U6MNFLoj76pD3iarfk
         WNaAxK2/8pITV5IcerSYRjeIkXBtjlPHoZ4X9e4MOMFlE9qFiRXz+I1k9bgODnTJC8lx
         UNZi0dSjHnzYP8CqKLumctSZtAjhEMLds/LMdpfDouDHnkgedqwBwwGcHTaIYoyFYdLe
         vvCe1JNb1iCKp6bVTn3yVxV9tBWyhW3qPIVZEP94bzP3HSpHqNwtd7hkuBW21J9b1OXp
         e2ljp5CpkF8k8uoB3bam0Ed5R/DqUjLALcSLZVOvAD/sodyACdmoNHWLV6EraPH3Hx4X
         kzzA==
X-Gm-Message-State: AOAM533cXDtCB/g397DUGIC7pM1mXuzoINej+Mvi/i2sFpIqZcPiP/DW
        StENvBWWHcSmyt//a07/rQPQC+hLuYVNmfq+Xb2a2Q==
X-Google-Smtp-Source: ABdhPJxyr5RXxg7nVYL9oxZZLdid026evyd0F8roxZTLNu3CVL/h1TKDQxL9idB3zXmgept7Yeod85ZsHcTA6BpWWHk=
X-Received: by 2002:a9f:2190:: with SMTP id 16mr1745320uac.19.1598262670146;
 Mon, 24 Aug 2020 02:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200814014346.6496-1-wenbin.mei@mediatek.com> <20200814014346.6496-2-wenbin.mei@mediatek.com>
In-Reply-To: <20200814014346.6496-2-wenbin.mei@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 24 Aug 2020 11:50:33 +0200
Message-ID: <CAPDyKFoTi91bqvosSvk4ALB7HobVf4aOjDoKkP9GgyteMfOQuw@mail.gmail.com>
Subject: Re: [v5,1/3] mmc: dt-bindings: Add resets/reset-names for Mediatek
 MMC bindings
To:     Wenbin Mei <wenbin.mei@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "# 4.0+" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 Aug 2020 at 03:44, Wenbin Mei <wenbin.mei@mediatek.com> wrote:
>
> Add description for resets/reset-names.
>
> Cc: <stable@vger.kernel.org> # v5.4+
> Fixes: 966580ad236e ("mmc: mediatek: add support for MT7622 SoC")
> Signed-off-by: Wenbin Mei <wenbin.mei@mediatek.com>
> Tested-by: Frank Wunderlich <frank-w@public-files.de>

Applied for fixes, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.txt b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> index 8a532f4453f2..09aecec47003 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> @@ -49,6 +49,8 @@ Optional properties:
>                      error caused by stop clock(fifo full)
>                      Valid range = [0:0x7]. if not present, default value is 0.
>                      applied to compatible "mediatek,mt2701-mmc".
> +- resets: Phandle and reset specifier pair to softreset line of MSDC IP.
> +- reset-names: Should be "hrst".
>
>  Examples:
>  mmc0: mmc@11230000 {
> --
> 2.18.0
