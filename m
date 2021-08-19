Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FFF23F1AD6
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 15:44:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240142AbhHSNpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 09:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238463AbhHSNpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 09:45:17 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51504C061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 06:44:41 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id i13so5991039ilm.11
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 06:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ug1OSGTt9qLTp56AgUL2RfL1TSKASvvRSNzqRc2tcqw=;
        b=XfvaZ7ZW98kSfzUdcrLY4dFpOgBvtifT09w0hvXSRHNg0WtGEFaTODfTsIuOxZs7zi
         vBeZ1DlAaHqzXB/EpOMgzPWPDgODvbSMzvLb0HVSicDgzWNojNr3tDeMY2HFyZQoBt9O
         XlrMazdrCg8Kz5EAqXZnxUn0g5BwvYEoLQZNDIR1/Xk/QlFSSfW8DBmCoxaigl6MIkdQ
         ICPu0Z4JFoIuVPMd/RrJomE9SqGH/B5eWSHbxytuM2S/n0XS9TvtgmJ0hT4KPqnD5ACp
         HHjXeUW7AByGw8JQZYmzTv10iV96woEDRmibQiowyvtN15cK34kkiVx4u6b7ZiNtrm/C
         Y1NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ug1OSGTt9qLTp56AgUL2RfL1TSKASvvRSNzqRc2tcqw=;
        b=Gf4NwuIl4pLuRXtoglpAmhDsr/Mm8OJaRiI7TF7H6NcZNeAG/jgawAiMQdKwhKGxOW
         FaVUyGaHvpmHT44hFxql6WU0xwJmGzYozwyHod/kASyPgmTGmQ83QC5ZgqHqAmWxGreH
         GHcrtP0UjFYE1oG/9Q5MaE5nahK/DCEwzH5KVTFgESW9gVYxAGWXQHFKY9N76qSbDlsi
         IRBFDEPrKzVm7zZ1SEpOZPNePYuCEVH3r+hu31NMAaHqDcjFUIwlaJfuSrZ1fQprD5HZ
         GBxjvCvwdZGA7bFFe+zw5Rl0dLH8qqJEoQahDHBH5nk4pPUYFutxXxPwYIn2TNWQV7aJ
         bBBw==
X-Gm-Message-State: AOAM532r9uGGsKj6X4Gx9D7F6Y2T1PmxFrbOoyYbWdByZf5lDyxZGYaj
        XfVrf1yI8GkPBKWfaQ2lxAX3rCG6GFAwoNATaK3KFQ==
X-Google-Smtp-Source: ABdhPJwmtqmWXSprK1vhwc2gg4x6OTwPqzsJkVqyF5yv9RgHlIUTV7TV6oYqT3ZY2f6S/bmRmGGnAfG82XXx36knYQw=
X-Received: by 2002:a92:d304:: with SMTP id x4mr9982073ila.82.1629380680491;
 Thu, 19 Aug 2021 06:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <1629132650-26277-1-git-send-email-sbhanu@codeaurora.org> <CAD=FV=UqFczZ6tLzVuXhgKG9teSNTGt_RdqAxP4eXBN_eDDAtQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UqFczZ6tLzVuXhgKG9teSNTGt_RdqAxP4eXBN_eDDAtQ@mail.gmail.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 19 Aug 2021 06:44:27 -0700
Message-ID: <CAD=FV=Wq-+Xzjc-o9p49pvf4A_q7L-THHp_wUQce47E+yMEgvA@mail.gmail.com>
Subject: Re: [PATCH V1] arm64: dts: qcom: sc7180: Use maximum drive strength
 values for eMMC
To:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Asutosh Das <asutoshd@codeaurora.org>,
        Sahitya Tummala <stummala@codeaurora.org>,
        pragalla@codeaurora.org, nitirawa@codeaurora.org,
        Ram Prakash Gupta <rampraka@codeaurora.org>,
        Sayali Lokhande <sayalil@codeaurora.org>,
        sartgarg@codeaurora.org, cang@codeaurora.org,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 17, 2021 at 6:58 AM Doug Anderson <dianders@google.com> wrote:
>
> >                 pinconf-data {
> >                         pins = "sdc1_data";
> >                         bias-pull-up;
> > -                       drive-strength = <10>;
> > +                       drive-strength = <16>;
>
> I could be convinced that this is the right thing to do, but I want to
> really make sure that it has had sufficient testing. Specifically as
> this patch is written we'll be updating the drive strength for all
> boards. Increasing the drive strength can sometimes introduce new
> problems (reflections, noise, ...) so we have to be confident that
> we're not breaking someone that used to work by increasing the drive
> strength here. How much has this been tested?

From further discussion internally, it sounds as if this should be
fine and fixes more than just this one eMMC part. Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
