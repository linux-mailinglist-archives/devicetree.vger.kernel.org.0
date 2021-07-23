Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94EF43D3CB1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 17:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235582AbhGWPFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 11:05:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235579AbhGWPFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 11:05:08 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A706FC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 08:45:41 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id y34so2772417lfa.8
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 08:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GvAXOXhERIFR7lj2ShQ2Stgdwb2QaVlP0niSxQOcbrQ=;
        b=mK+7226Fz687r/Nn9T07Az1MI3wnxIfZLhRcAWCLqQ4ND61PmRHYsMDTLcO9I0GR6a
         eHQ3Qz8YyEMeYYq0wzZydM1vtrJ/ZlRaUzJR7dWU2EI4RrISOFZNPwwUQZyvCE5SRz7k
         qn8oNodlZNwtp0Drmbpx4WI6kK4dPm+dVkkILCdizj5N+qatl1xqwK/pbK0vjKn4MV9n
         6LByGxEp66l4IXaISCY3TzQ8kfD/OTCYXPTu5uAYco6rDXcvjJYdQFMbziUPW8L2xipz
         dMaUIG6dSa0vPyxuzhPYHLVqeoZB7k6aoOYqueNB01LfzAi6BWnUuiXhfADf5LzlY1RG
         8pNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GvAXOXhERIFR7lj2ShQ2Stgdwb2QaVlP0niSxQOcbrQ=;
        b=lG0Pc3jgwI2MhVz8Gp2yr1WS9Ufv+cfg960KogP6Qs2XyyStkLJgy2O5cxlUA3t4EE
         S9GowodZwRyXKvrBvmhmlvfLnIpYnEOKehFcOFAKz8IJ7Gg7biMyUIv+SeVuHaolO8vg
         +wCa8tPbqPID1hN6K8mciHofk9dXd8Pe/FdYKkUvfhv+u5BjK4DZpVer5WJ1Zsz5ofN8
         QDtGkFmrqpjrY6HaN4d29OS5OZ/KdfwvniyDEib4d79IVUC30Iz2mFH7HNw3Vk37XYWw
         yqYQ67inbnhvUekWGh3lNvqC76pV2hh+2Gvxm3G82S20ScGjdQU3QQDCaJV2RtLniICq
         iYfw==
X-Gm-Message-State: AOAM532WEFituEXSZYd4yCuxW456XiiVOICQ2EY1ltN0CcRHUHhL2ZFB
        5cA5+qN3GsI+dYgCFNDJuClgTkEOV3lnQQaZ336fsQ==
X-Google-Smtp-Source: ABdhPJzgYGWvpxX1KZqSptUUyR70nnvRpc5qqg3N8PkcKpCxHDL5PgGdL/kppRgpMzW27kImhprl27rgPNOXLk+hGH8=
X-Received: by 2002:ac2:4c4c:: with SMTP id o12mr3400945lfk.157.1627055140061;
 Fri, 23 Jul 2021 08:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210624191743.617073-1-konrad.dybcio@somainline.org> <20210624191743.617073-2-konrad.dybcio@somainline.org>
In-Reply-To: <20210624191743.617073-2-konrad.dybcio@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 17:45:29 +0200
Message-ID: <CACRpkdbySWhcxL_YeYr1R6Tn=3fDZCvqQFvmEULSW8dg=421fw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] pinctrl: qcom: Add MDM9607 pinctrl driver
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>, Andy
        Shevchenko <andy.shevchenko@gmail.com>," 
        <~postmarketos/upstreaming@lists.sr.ht>,
        Martin Botka <martin.botka@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 24, 2021 at 9:17 PM Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:

> Add a pinctrl driver to allow for managing SoC pins.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied!

Yours,
Linus Walleij
