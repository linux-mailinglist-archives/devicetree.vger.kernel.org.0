Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6BC444B957
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 00:25:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbhKIX2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 18:28:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231805AbhKIX2o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 18:28:44 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5AD1C061764
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 15:25:57 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso1111885ots.6
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 15:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nL261LfEnE+lH5hQroZYFitjsNXa1tK6YPPcrVYv6c4=;
        b=N1HvdV99468q9bEv5q7ellPorYQd/W8mpCPrWLqn8S4ksJv0XInlTz/z79o91irx8F
         IBinuVJR+3dv3ohTcMOjoLOjds8IlTm/Ay2TbcpMEIQb7TPl2tCqAAaonqYywCgsr4kN
         ZCEWZuQ1MSmhqlppYjbvItwe0X/k2DasKrpK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nL261LfEnE+lH5hQroZYFitjsNXa1tK6YPPcrVYv6c4=;
        b=qKtj3480AhyikVOvoo+Cv+KPwzR0PmYOaaShQ9bK6bscwtYkowXbbeHBr9ztnCZGVy
         +0BQTxXncijbgkrxX8ahQcBvcG0KtxAfDGMZB4vaLwx/O70uqluaX9SMF0oTLZQvWUEI
         0BlJo7SgcDm1NFb7YLO4MUVil+EfSlwlT7bayYca/56PMVWXrG7HE27ooJNnXJ9u54y+
         78IWYzKh0CHEaRA/ysfH+s87UEcaBDrKkRP3X6uL5eczdNfCz31Yyn0JyNbu8jpe/zBe
         MyIAjBxrW29zy8ImDlV4+cmuKlpODxub8sAcaqt2YjiRU6aim/i4i8S7HkUcJhbEyGoF
         Wlkg==
X-Gm-Message-State: AOAM531BK5O8VOqn7gt3XpMN9q+6k/c4roTq0IMX7lv5mno4zPySRZVz
        nN9X8TqLlXhmEQLEteF8CmwaEmwddCqQHQ==
X-Google-Smtp-Source: ABdhPJy3VW4GsylusRYc181Be1xrszMDp6v+XRqV44KL04N03vP3nQCbZvaNRoFwbnVApfU3kZY4Bg==
X-Received: by 2002:a9d:2923:: with SMTP id d32mr8858303otb.149.1636500356622;
        Tue, 09 Nov 2021 15:25:56 -0800 (PST)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com. [209.85.210.51])
        by smtp.gmail.com with ESMTPSA id r36sm1085617otv.68.2021.11.09.15.25.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Nov 2021 15:25:55 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id h12-20020a056830034c00b0055c8458126fso1201217ote.0
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 15:25:55 -0800 (PST)
X-Received: by 2002:a9d:734a:: with SMTP id l10mr9337755otk.3.1636500354735;
 Tue, 09 Nov 2021 15:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20211109221641.1233217-1-sashal@kernel.org> <20211109221641.1233217-17-sashal@kernel.org>
In-Reply-To: <20211109221641.1233217-17-sashal@kernel.org>
From:   Brian Norris <briannorris@chromium.org>
Date:   Tue, 9 Nov 2021 15:25:39 -0800
X-Gmail-Original-Message-ID: <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
Message-ID: <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.15 17/82] arm64: dts: rockchip: add Coresight
 debug range for RK3399
To:     Sasha Levin <sashal@kernel.org>
Cc:     linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Leo Yan <leo.yan@linaro.org>,
        Chen-Yu Tsai <wenst@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
        pawel.moll@arm.com, mark.rutland@arm.com,
        ijc+devicetree@hellion.org.uk, galak@codeaurora.org,
        catalin.marinas@arm.com, will.deacon@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 9, 2021 at 2:17 PM Sasha Levin <sashal@kernel.org> wrote:
>
> From: Brian Norris <briannorris@chromium.org>
>
> [ Upstream commit 75dccea503b8e176ad044175e891d7bb291b6ba0 ]
>
> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
>
> This IP block can be used for sampling the PC of any given CPU, which is
> useful in certain panic scenarios where you can't get the CPU to stop
> cleanly (e.g., hard lockup).

I don't understand why this is being backported to -stable. First of
all, it won't work because it's missing dependencies (specifically,
around the RK3399 clock driver). But even if it did, I don't see how
this is a candidate for -stable.

Methinks the AI has gone too far again.

Brian
