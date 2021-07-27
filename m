Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5093D6DAA
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234865AbhG0ErB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234892AbhG0ErA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:47:00 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C8EC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:46:59 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id j1so16062089pjv.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ti5+nTjIMGmJGpw/z6LqKbHFp/KaMX3fxXfNJ8H49/4=;
        b=diXZU81t4iyvnv/18XGbkyNKsHyeTT9MhBeINHDsCaFjhj3nWJ+Rjt3mLI+jjXblu/
         MsWhavsHPf+L3BrTp4KG1nB9DENFuRXtgIl7F+eti+sB7higo79QsJAGV3StfU/AOJwI
         1LQjVuXldV3S5ZFqCm+iiqPFuli0bfz7aGmUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ti5+nTjIMGmJGpw/z6LqKbHFp/KaMX3fxXfNJ8H49/4=;
        b=JbguMjWgBouPnr/j/M3DcjDcYdgdyAwbBLRd63s8fJYT7eqLMmYKk/ytBtuWUffotx
         9wS9hR66FsdfbxQcYY6Q0pbIUfsAXWVyGHLp1WkYuTDmkhyl+MgNxY9muwDE1cOgq/Hu
         BNxhhuYzPzgEG27IkGKUm3IJFEXWpY5zsEhBiUsedYuZ7YfAdctg/ApD6CQodMqJXwam
         l7E2xhuAiTb6ElsQKa1mQ5HZTTG3pF/ZqkpVAgxfxSFr+OjsyBhpP6OHAGvSHYNeG7mt
         qa99XK9FB+6+sprfXHijAqbNXf3ugtlcc3rvpTnH2cYbzju+shb1JAg1i//utceecsLV
         EKkA==
X-Gm-Message-State: AOAM530zhMFfqPy1B3eWJX1XvksiYpnGaOSpLtFtZXa+49VRHRHNavbA
        vChRsOnHEd+QecieQu+0jGALsVhllpIyOAGWUMh54Q==
X-Google-Smtp-Source: ABdhPJzNMWhPWVTRIcWwCN3GmAc9IllPsC7xBOZ11CfMOfTT+kPcwdmug6nzk8s57FDGJfS0aOZkGmjiKvm8+NzOl8s=
X-Received: by 2002:a63:3601:: with SMTP id d1mr21382265pga.299.1627361219535;
 Mon, 26 Jul 2021 21:46:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-20-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-20-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:46:48 +0800
Message-ID: <CAATdQgD5EpUv-R7J8keHodbkBOeuQGxWQO-9HXsCFxDu4_916w@mail.gmail.com>
Subject: Re: [v14 19/21] clk: mediatek: Add MT8192 scp adsp clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:12 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 scp adsp clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
