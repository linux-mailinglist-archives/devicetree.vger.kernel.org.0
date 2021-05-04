Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07B1D373125
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 22:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232710AbhEDUDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 16:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232697AbhEDUDj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 16:03:39 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48058C061763
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 13:02:43 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id g1so7326595qtq.6
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 13:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OQZCBZa+DL4hkqaW8G2In/CkuXl76YVF2oGiLQ+6dDI=;
        b=Wpq5ejVrP9YM1gsTemrlmMP7Q2mn0VOB7h7YsWC+mn5e4Jr4jHi1ngCnhAIF1BYNNR
         Zk+DJuuRFBwEGDQs1HwsXKWJVLDV6goV8+IRs7tBG6I2okLDGOHw+33AEGkaf8rEy3lM
         NZIOE/q+miK4dIRqYiD5L0RLPiT3NDL1+4MKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OQZCBZa+DL4hkqaW8G2In/CkuXl76YVF2oGiLQ+6dDI=;
        b=XgzGeKduAw+JNgU4gO232CFu+kIVHjXrmXNnugVNbb9qhsZIGR53pu5LuJuC8HI/0c
         M6oprnJUXENSM6tZtfnz+0/svgMxgNCURcPWUmTL+0vOtdL4q0MJl4l2Fx6C7ctBqEHs
         1KmvCWefFyjLEJQaNCcQ87pmcisciZlKHomsGiqQ2/sOpsv0WxNgvoKG5IDcR8Tq0/RE
         oo6EpqzuiVhvXIcoVOKu4Ldh3HrL46DIftsRENFjWn16d12vcxmpGOM3SjstNzFzUxLZ
         82Iu33cN8pW8VpMU3dDRhQojIx6rE3Kh75aWhIRwM8bGOmL0h+r2U6C5mfk+q+lonvcY
         7B9w==
X-Gm-Message-State: AOAM532Qbfjut2deg0mE80sbKreu1fSM4RKmcqNuAaUto7O5FYC+gNLN
        BkwWXLoQ2KqaLTXnxGhHbgQMGh6X4s6CTQ==
X-Google-Smtp-Source: ABdhPJzuO4w4Vtz5SpXA5usgFi5JywEiXnQ9CVbk1gA6jL7aA1pvMLNXBpZSsbta5bkuDQ7GrRSztQ==
X-Received: by 2002:ac8:744b:: with SMTP id h11mr9404498qtr.199.1620158562012;
        Tue, 04 May 2021 13:02:42 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id u64sm12303949qkc.127.2021.05.04.13.02.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 13:02:41 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id v39so13841457ybd.4
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 13:02:40 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr34873607ybp.476.1620158560412;
 Tue, 04 May 2021 13:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <1620111510-31455-1-git-send-email-sibis@codeaurora.org> <1620111510-31455-3-git-send-email-sibis@codeaurora.org>
In-Reply-To: <1620111510-31455-3-git-send-email-sibis@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 4 May 2021 13:02:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vng40b05F2_i7qqXC+yN=ZBgRXsio-86sBA+QdoMMGaw@mail.gmail.com>
Message-ID: <CAD=FV=Vng40b05F2_i7qqXC+yN=ZBgRXsio-86sBA+QdoMMGaw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Add cpu OPP tables
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 3, 2021 at 11:59 PM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> +       cpu0_opp_table: cpu0_opp_table {
> +               compatible = "operating-points-v2";
> +               opp-shared;
> +
> +               cpu0_opp1: opp-300000000 {

It seems like it might be nicer to give the node labels a less
arbitrary name. How about?

cpu0_opp_300mhz: opp-300000000

That has advantes:

* If, for some reason, you have to mess with some operating point in
another dts it'll be less fragile.

* It'll make diffing easier between SoCs.

* If you end up putting a new operating point in the middle you don't
need to rename everything below.

Other than that, I can't say that I'm a huge expert on the
interconnect stuff and whether those make sense, but I'm still OK
with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
