Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52E80358F47
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 23:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232265AbhDHVgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 17:36:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232236AbhDHVgM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 17:36:12 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 290DEC061760
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 14:35:59 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id b14so6368057lfv.8
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 14:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z8TlNQzjwY+e3eQo49/nxDRl9kQ4I8qHfrJKe3hE6K0=;
        b=qn6O/pRGzJYGjjvYJ5RkpwSzjkRSkHF2R+9hnx435hNzJjX2gPJa77KXbYH6VcQK3S
         1DhUMd1Flne8NOb6h2RA8ICY0P8UR9DlqLt3vqFgs4GxFyQ5TvTPV8yCPFN3OnWiPCPz
         k4p2QTcNbV+58EnOk8dtXyAJ7nQ5qUJUVHXCy1YJbGtardZ5toaX4tfyRza9xJeam1lv
         TOD9kkb8VNf5zDuryw/7SSGcyyBuYAUGXhGCxB7pOUIsPa7ux7m+rcccMPuAqdFLr+to
         tbpC03huGuwX1zBOt+sz3UGvDU7WBQ3mfmKd1WJHP5hUaiD4ZTpd3ENE5rrhyww0ruDD
         pe3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z8TlNQzjwY+e3eQo49/nxDRl9kQ4I8qHfrJKe3hE6K0=;
        b=JImWyeSMa9jhm3u6nzMQkj2O4q+CHiDslTwbSla6VBEjRKGe/IkxzxYmWYvVgRC8NK
         EuHNn3x307ZXGysAV1pLpCeY6a7p1iVw2Uh11Vsc5uKr3rITGN5+D0A4aRx8/zshgKCl
         IyhGrOfBjHhz2ndRGSoCCxJyE/H6bVCgLyBAU5ImqrSoNEcvdwu7slTEDteMXf9m2XvR
         oCxWi9sEmGAjLhvbEWJYI0CHrPs/liNCuutlAxyQwZLp05WX1bAq6v4PNWG7mwWZ+mSK
         UTPeEZkdbdixXXx3JW6CFpSwSRMgeKrFlVkGgS8J1LysexvGCMwTd41a7VKcL/iWBfrq
         2OLg==
X-Gm-Message-State: AOAM530yOc+4zrGUYGZk6xw67GHl4xNQOiLqJceBBQ5zUaKGirbt+jxX
        3Ni8exnos5uND/GxtNQ87aJZUtazXLAw4rm7VKrbhA==
X-Google-Smtp-Source: ABdhPJzDMfqSKWlR/YXeaNn0JCru/668Jjn8/WGD12+iy0vSDZTGd2bhvSRxks9c8e+vra+bmO29y6HnwSUOEd5MK+4=
X-Received: by 2002:a19:ef18:: with SMTP id n24mr8043129lfh.291.1617917757674;
 Thu, 08 Apr 2021 14:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210405200259.23525-1-petr.vorel@gmail.com> <20210405225222.GD904837@yoga>
 <CACRpkdZQ8qiqFPa0X8deVjZ7nLn_E6s8fmJdr5Ji8AuyJms1ug@mail.gmail.com> <YG9TWEJlpDmNeeit@pevik>
In-Reply-To: <YG9TWEJlpDmNeeit@pevik>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Apr 2021 23:35:46 +0200
Message-ID: <CACRpkdaP-yr6oAEpmDDqZUYcAd+-3vJRORepOtsRR4d2GsuqmA@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994: Reserve gpio ranges
To:     Petr Vorel <petr.vorel@gmail.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 8, 2021 at 9:02 PM Petr Vorel <petr.vorel@gmail.com> wrote:

> The real problem is that mainline kernel compiled with defconfig resets really
> early, thus v2 of this patch [2] is needed.

Ugh OK I get it. That's a firm regression.

Yours,
Linus Walleij
