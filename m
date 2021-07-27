Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 226B93D6D89
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231932AbhG0EjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235030AbhG0EjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:39:17 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B32DC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:39:17 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so3152432pji.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PXqkOOR1pOtYMzsgwXDzf42bCaKreSWxIwhWwvEeqtI=;
        b=AG59QGBYG2d8MJl+DmYb3WwVZKqVqgzyq3bnKbAV3gdhJeC91VtLz4113YUwJCoQO2
         Ct39sGCQGldasZApaM/KRIgysBJ9pVrgbJOVYVEgnlU1m/CalsRwAnIXsQNVX/lFkB+N
         bLBfyxvcMlkA0M8Dq7eyk8XbnByWU0n/wYTRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PXqkOOR1pOtYMzsgwXDzf42bCaKreSWxIwhWwvEeqtI=;
        b=PB3DU/sBENLfr4fzNuV/zvavQk9XmOx+nlsPLGlg3ZtwMbpfUXgyPi7LSPzAW6ctR/
         HYGUr1ZIkRT5lOX7YJGqR3OsGVD6VMYE/JYWwz9QePkg/GGEkoGnhfz2IZKI2OsFHqI6
         szplxVXcz1OqIeR53D46ALWnRqJevpSLIedL8Pu038TeCnNpHJEOwmZ3bMKilKLP/m6D
         f1HczWSDEJ8XYz5GYuZPdGZU3+QWew3IgkJ+xitk7olBxjUcq+khozUStm0enfNEUW4e
         wX9dxOR7Npg0N+YWQ0eUOcBoYzOFGjuW3xIMyOjEtDtx0FzxK1KYsg9+inav7aTbbOt0
         FI9g==
X-Gm-Message-State: AOAM530UQO4Ibgv7ohgOyK3S2zxgcS5vmt5PpBtFd0HLfrEccrfOVGW6
        wAmZmyINvbxjq2pbs+khsMGqna+IBk1SyVKwXlfVGw==
X-Google-Smtp-Source: ABdhPJzk2XckOwQ6RCK2+Om3VQvLRLUz2rIVS0DubiOZfADOQ28pfm6zggkraLwAfixhBtKFGDUi7GmMyCICb0wLD1U=
X-Received: by 2002:a63:8f04:: with SMTP id n4mr21076455pgd.317.1627360756729;
 Mon, 26 Jul 2021 21:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-10-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-10-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:39:05 +0800
Message-ID: <CAATdQgAGEqDyPJ7bnPsCow+BAFYJMdOs_mk8XCkz5Yy66x07mw@mail.gmail.com>
Subject: Re: [v14 09/21] clk: mediatek: Add MT8192 basic clocks support
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
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:03 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 basic clock providers, include topckgen, apmixedsys,
> infracfg and pericfg.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
