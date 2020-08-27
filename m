Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D411A254133
	for <lists+devicetree@lfdr.de>; Thu, 27 Aug 2020 10:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727066AbgH0IwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Aug 2020 04:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726882AbgH0IwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Aug 2020 04:52:19 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17000C06121A
        for <devicetree@vger.kernel.org>; Thu, 27 Aug 2020 01:52:18 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id y2so5541672ljc.1
        for <devicetree@vger.kernel.org>; Thu, 27 Aug 2020 01:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yYacB22eYqjS0h2EHD7vpnW368MZpgmYVMb0jVEC+0k=;
        b=I4CqqHi8i6aZUgWVs79dQH94/DTsPWfoTtqiUAGLfoUuyChmrVFlCJt2xtstW36Y4j
         srvtiSanJALvFkGgcExhOsRLJbdHal2iROBeZUh3KvND7j42b6+Few3BMJlywvKTA7dk
         ybPUE3SK0t+TFNUTx8lqxIfifMsnc/xuZHJ1ZNs5saEACMpfE+DV06RyD4dc+tMEIecr
         I2BAxZtGiqRHJEg+8eBXUoM9SUQUsRKQoo5M6Pmfww7FbPgNKKtKPjTn0PNhRle64LMB
         waN3UegYTBknmsNPNhbhnfmpgGvCbM23phLffVIVJpeM8L3Z2wTYNWoWZ4Xe4xSgWSpT
         bZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yYacB22eYqjS0h2EHD7vpnW368MZpgmYVMb0jVEC+0k=;
        b=jjVRvdB/RhwJJgVdWGXdw0LjQEfWG2AAgL3q1qvTXh9n0808GIAqs9Ner+s5azUP4D
         KVb2Mufxla4ClkHgFJQWdaYUhjNEadGW6XQOqxnZHmGt39uV8FxLgEHbdeSw/SWApG7i
         T3VQmAjzqCKOXSIagwewL+79nv7Fpm/QY8qlU7DU3jkx1oa/vk4QbIXuoRNS1/pXRvQs
         5k02vY4Xngjs1IXFkOrvRe+HOIdGdri6ubSSE0R8WW57Amny4Ur1t3uchOeiSjRXYJx6
         v5DqqyQKUesbNaiAuRxsLN6jXN/je+t/5OsC8mM+Y+l87BvBkQZIQKzPr8FURpeJfZH/
         1VKQ==
X-Gm-Message-State: AOAM5301ZoJ0R7PCMZi203z4QPx7cEBbaDe0Tawx2rRfCGkDR1GDC3kO
        H+ONYuRagTRlL8nASGKwnweAs38z+Ct+VMT2R1xebA==
X-Google-Smtp-Source: ABdhPJzMK/QQzozGDxzhZ1ptVcFeOA7pCMf7o4BoinmpKAwFETGR2jOwjTUEQE5hG43D4uonIeuqoQ+98b/Uh0VfqsM=
X-Received: by 2002:a2e:8144:: with SMTP id t4mr9913723ljg.100.1598518336643;
 Thu, 27 Aug 2020 01:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200817001702.1646-1-zhiyong.tao@mediatek.com>
In-Reply-To: <20200817001702.1646-1-zhiyong.tao@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 27 Aug 2020 10:52:05 +0200
Message-ID: <CACRpkdYedyDcnL5DUD33Z2iT1jEJ_W1gvB_a8VaFnNAH1mKgzQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Mediatek pinctrl patch on mt8192
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>, srv_heupstream@mediatek.com,
        hui.liu@mediatek.com, huang eddie <eddie.huang@mediatek.com>,
        Chuanjia Liu <chuanjia.liu@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Erin Lo <erin.lo@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>, sj.huang@mediatek.com,
        seiya.wang@mediatek.com, jg_poxu@mediatek.com,
        sin_jieyang@mediatek.com,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 17, 2020 at 2:18 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:

> This series includes 3 patches:
> 1.add pinctrl file on mt8192.
> 2.add pinctrl binding document on mt8192.
> 3.add pinctrl driver on MT8192.

Patches applied for v5.10!
Thanks!
Linus Walleij
