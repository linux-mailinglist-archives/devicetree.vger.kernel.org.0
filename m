Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE9489AAAE
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 10:51:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405053AbfHWIvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 04:51:19 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:36673 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389529AbfHWIvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 04:51:19 -0400
Received: by mail-lj1-f195.google.com with SMTP id u15so8152514ljl.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 01:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FXtQDuMScF/1nReve4eretX2TO/jfCiedtGuRQR2hjM=;
        b=p6SBn6sDUBeFLX9nMJmZGZC+PTQMLkZJ8aTvGmL+qINEfOstq/jNuLob/ghlirv1KJ
         cZRyeXtQ1faKYUnTHuBCVNy/y+gs5O1Ob5u1hV9AU5ut4mXZX+Okq3HmZsxsT+DBbIGs
         J7sCK51VUU3lrdn3m0sttx9PyWO3QwemGQnd1cRnP0eZPC4Pa8fqdl0xMWR23wDeqeAt
         FBxKNcv/H0DFEFdPjz9wsTwbnCzc2Hnz2I0UXU6Qlf1/20m+dC5NojBZhY02m301Xx20
         8SBl2+ZAWxgHnmt/joknqH100+Al87qai/W4q6tyFUZ1rvjBxGuZwVUWExcs1/CQ4lLY
         4fhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FXtQDuMScF/1nReve4eretX2TO/jfCiedtGuRQR2hjM=;
        b=V6JvGZ9f5Z3mTQMdNdAHibU8C5+iClmiM9mUD5AuzM9uxVSyaAwLHJvBd9iO7eqBpm
         8GT8JSHAXn9+lmCqJ4Odsba8Te7SdgHII7hAvLjzSTZFXOgVv3wXf8ADFT7OLe1a2ZGa
         4GjUn2fiorqJH2RFRi7CnjYYwIOB+bhlFgxIzNa4JydHFXOAUyAnvJRhRDCyP1wqWVbx
         +U5YZuvTVId6RpQt8ubG50gzbjyAc64gmRAbT4V3tuOR0dgLu4MzW3eyrxI/KRAWOqs+
         4v6kEkeN9c+TFbiZhgaUJZF08nbgOMjvzY1osDzyOBSExD3p0FNpAnxGtPVB8xBIu7xH
         9IlQ==
X-Gm-Message-State: APjAAAW/49EZ4RSUbs1lWzlk9qb5SONtCBzEIre229CPofQOPCE5aLbH
        dAwKrjtBtQcAnnboU8UFeFktq83HtApOASQe5qRmIg==
X-Google-Smtp-Source: APXvYqyppYyNq83SxxmmRdWOnL0oOzeUD0rB8qh3X7YKYtXA9sxXcXqHi/9iYmrgLahKeTty/OM4UHWE1xxoqpX3Dgw=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr2124440ljg.62.1566550276856;
 Fri, 23 Aug 2019 01:51:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com> <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 10:51:04 +0200
Message-ID: <CACRpkdY4sVV5oyFa+a30dY2A9tsKpzTeuQ8ChmnXcm-5_eZkVA@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] dt-bindings: irq: mtk,sysirq: add support for mt6779
To:     Mars Cheng <mars.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sean Wang <sean.wang@kernel.org>,
        CC Hwang <cc.hwang@mediatek.com>,
        Loda Chou <loda.chou@mediatek.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, wsd_upstream@mediatek.com,
        mtk01761 <wendell.lin@mediatek.com>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:

> Add binding documentation of mediatek,sysirq for mt6779 SoC.
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>

I'm relying on Sean to review this and ACK when he's pleased
with the result.

Yours,
Linus Walleij
