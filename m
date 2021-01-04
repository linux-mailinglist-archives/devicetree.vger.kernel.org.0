Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 160CA2E9771
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 15:40:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbhADOkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 09:40:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725840AbhADOkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 09:40:14 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 444BBC061574
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 06:39:34 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id l11so64882265lfg.0
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 06:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xaAhC2oWtPWkwgIj0AUJDvHlV3FXqovE+zexeAdrcw=;
        b=zdImf6wz6TM+RMClbtfU6hMMcLkJmsnsw/PrvYgzKH4gMaUBY+xWcOC+f7SMsqX3pe
         xWEhqObSyYcSMXFPPbdCjW8fE/QJtRTjsfhWDxnJnU97b84QVyk7FMDa56DYYKbHSRju
         HIvAZb1q3tUacIo1gdFsh7Sxmo6wgdm84aNiunEAo8+wLiPMWxUNGXn6ggBPm6bfExOv
         NMCV+yEvuICdK49b1c3R8mQLkOItxwVTDqQ9oW9eVnD0IIjRhOp++cGtCAYu7vCWsBmJ
         97xB6W2Z5mX4ZuBZzbkdhGUDxcO/JixuBlAG6WG/oLS9Fx7NWBCGfttrDzcEKIJQtQoN
         qL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xaAhC2oWtPWkwgIj0AUJDvHlV3FXqovE+zexeAdrcw=;
        b=SP3+YMHKhoQ7zDyI2HOYeuR2MH801CHJCgplYGOM0BwGivxoSTbkgSAxWz53fTLmbG
         nCfqoSnpXb080mjweVllLR9g8vNr15UH4QZBJ5YVq354/P+yjmRM5KMZel7EWxxTsVmx
         hMKN1k+1MX5y6MEM10i0UjBVol3k3+D+R5QjRM7CRmk6nakziyVCnvxO8cd1IG/dgNur
         1D7Vwdfo9zy1ZJdB8pSE56aaPDr/Mks6CHcnAD+GGGy03rmeD9lqTOHFREqdEG8Qlulm
         lZQlgW2dxUgsHrhJo9g4PLdCSUpqEjqFpnRRxL/QHPpy3eveqIYJB6R5Q41w+XXs1VHW
         oCSQ==
X-Gm-Message-State: AOAM530+pmOis9eS1vudDqxwmiylWj2OwOJGiMISt7+Lh2GLtV/FaZwp
        Ixl0QfV+n+PzOoGo1rdUh2oDwGgjwCgq4Vr9HQhUXQ==
X-Google-Smtp-Source: ABdhPJyDdb+bBSf9hNOWvM9AqwI7sDTSzkyeS0RBhGZAffZIzFxBqm3f2vqe9P+0EylP1406/PPdkPvC1oHPswbeS5M=
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr37267869ljo.368.1609771172818;
 Mon, 04 Jan 2021 06:39:32 -0800 (PST)
MIME-Version: 1.0
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Jan 2021 15:39:22 +0100
Message-ID: <CACRpkdb8z8su9HPkSdnRitVe0unuBDtg0azif19LGb84F=m19A@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Greg KH <gregkh@linuxfoundation.org>,
        Jason Yan <yanaijie@huawei.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 13, 2020 at 5:17 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> After this driver was moved from staging into pinctrl subsytems
> some reviews for bindigns and driver itself comes from Ron Herring
> and Dan Carpenter. Get rid of all the comments to properly be in
> a good shape before merge window.

Applied patches 1-7 to the pinctrl tree, patch 8 needs to be sent
to Greg.

Yours,
Linus Walleij
