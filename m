Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8BA82AD918
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 15:43:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730231AbgKJOnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 09:43:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730099AbgKJOnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 09:43:49 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0956AC0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 06:43:49 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id b17so2334713ljf.12
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 06:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MRd2Xo3UBkkW5RELiD7LTbLpibGIdJaMxfAUccfMlvI=;
        b=en14WHkyqaDQBt0d589qW+esLtOArMjqwYwr84ap6Qn7Z2Y4nmKhZ8gDrvMaAbU7wL
         6ez/pBgx4Rg4X4t2pAuQnJ3rk/WRj9RB8ih7s4oknB8p/D0ET30wsJ6EJNW4ftpWfkKb
         gFwNlb8fGj1YucCptgPL6E/n5SSAsXw2XKCVxoFVKXAarWi1fT2ZHbGCmtRWGyag92Nk
         VgKw4ZKwpaBTT2nLgfPkGW6rnDSpmU1tnNrNlk0IK2SxDWoMxdd97jSCIoBGcfpfLVdb
         uZAUEINQ6Xy9jvlN2kBN9kc/UMNwzRS5wG+im6oiSs/KUyxdd+LQyZmKGiOks/vy99dr
         Y9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MRd2Xo3UBkkW5RELiD7LTbLpibGIdJaMxfAUccfMlvI=;
        b=l19m0z2HTDQbirCssV4GJ9PBJZP8GKstYzdYEld3X/swq/kekfsauwkVIkYTryX4Cj
         0gbodfZvujrpqyxnW1O4hEgISFtwzaVG5iqutWXLFy+PjsXb7XadSWFLzbEDgmIPn1Kp
         FdonUQKifuyC1Ouktqha6N4SZ2QSwz9P2CkAZwOxACgklcMOKFWpivDGMi6i1PkLcWze
         S0IyGu1zaj44gOu1V3+lcif5LEKBXqw2RvU5gN/ncx/yF7SeLXKhSgdS9yoQvLpRj3kK
         IqLUaj9dhlCq8mKXd/+ZPiEhYqB2Ql7ZUfeJAVS8OMkgTRqimXj/iM6GPJGzoF2FkZVS
         DrSQ==
X-Gm-Message-State: AOAM531kx6yrmS6olL+V1quHowPGl52ij2t8XoD8DrUuc8RHMPQUR+9u
        wLojW+chwrf37OY0YtxbL/8uG6OYbWdmd1n1k4K1Gw==
X-Google-Smtp-Source: ABdhPJwNUGbbDXQVkuRINTuofHTC966zuYrupSA8k70m0FqDcK2bWqq2QOthBj1R/61M1NGbW7bqkaidMa6ksAoTtE4=
X-Received: by 2002:a05:651c:1205:: with SMTP id i5mr9059405lja.283.1605019427544;
 Tue, 10 Nov 2020 06:43:47 -0800 (PST)
MIME-Version: 1.0
References: <20201109170258.4a70c768@xhacker.debian>
In-Reply-To: <20201109170258.4a70c768@xhacker.debian>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Nov 2020 15:43:36 +0100
Message-ID: <CACRpkdbywjEaKORgS4GkWXkX9DOX0318hKoc0YY=o0NtBjyYcA@mail.gmail.com>
Subject: Re: [PATCH 0/8] arm/arm64: dts: Use generic "ngpios" rather than "snps,nr-gpios"
To:     Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Cc:     Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Saravana Kannan <saravanak@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 9, 2020 at 10:07 AM Jisheng Zhang
<Jisheng.Zhang@synaptics.com> wrote:

> To remove similar errors as below for all snps dw gpio users:
>
> OF: /...gpio-port@0: could not find phandle
>
> Commit 7569486d79ae ("gpio: dwapb: Add ngpios DT-property support")
> explained the reason of above errors well and added the generic
> "ngpios" property, let's use it.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
For all 8 patches.

Thanks for cleaning this up!

Yours,
Linus Walleij
