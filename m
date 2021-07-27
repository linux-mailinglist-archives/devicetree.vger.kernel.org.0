Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 375963D6D96
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235113AbhG0En0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:43:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234995AbhG0EnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:43:24 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A927C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:43:25 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id c16so8792488plh.7
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8OgNNI/ZkkFCiDWQYC06fGQinvIGcARtCC3HkxPSNzA=;
        b=Q5D2/AyVMa1IWbGsysocOoq8QjOGrae5n6e9Q199iOQUX9WzJoez34mv9P/teNkYEt
         klKGHnai2cbH8VssVKLVQ+IhLy040E1J7bVziAzCleY+Getjb1NHun5CHSeiMYDlqzXe
         6Y8FaVfsMd70FaCepmZ0ibonK1bObtcY8uP+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8OgNNI/ZkkFCiDWQYC06fGQinvIGcARtCC3HkxPSNzA=;
        b=tOtGBR8HX043Ob2Wx8ed/sUFQB+6x5bWjEDlGi6O5xiIw+XCLNF8I6dmtw2Fe4/RrY
         3zExYIoA2fgICivwV+svlZpeN3DPexYFSME+DIK/fqB0rcbJ8ZAJh0KkBRyF7lHhHbcA
         oaxijih2K2BSGobw4mAew3i8itFSL2PRdC/PXhCkwfPqBEaZ4zqrqS/2nghRbF5/6XJr
         KlEK2yXwVGiA3RnvmPX1/mFx7XKi/cWUU2nklwX2NxIYDtwzz9cB6DBF+pnKVReh2RL+
         wO5qPakcIYc5USAeaQmz4YbZGvF1neOxeZ4fHw/NLN6Xg+eA9ADJ/oUG8fX4/LftHLno
         El6g==
X-Gm-Message-State: AOAM532X4Kjq2fiOIoRvbL0PO7qIE9y9Lf83Iu98DOJ+Nisq0QOYtro+
        SI3csyIMpe55KiNbUHXXIrVW5ji+AKKQQ0mgbxZmaQ==
X-Google-Smtp-Source: ABdhPJxoc5CSpPY3vQh7WBrophJ46+dx+Oemf64p8gEZ/MeteoctC+j1XOB9bhr65cib2vxfEoicD6FmTXf3GIPsuds=
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr2306339pjn.112.1627361005167;
 Mon, 26 Jul 2021 21:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-15-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-15-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:43:14 +0800
Message-ID: <CAATdQgBkdst+fVnQhoYzJgO8meaef+YCjcPgEMTLbECTxRC6tQ@mail.gmail.com>
Subject: Re: [v14 14/21] clk: mediatek: Add MT8192 ipesys clock support
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

On Mon, Jul 26, 2021 at 7:02 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 ipesys clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
