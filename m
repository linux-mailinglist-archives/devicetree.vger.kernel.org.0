Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C62462ADB46
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 17:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730681AbgKJQIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 11:08:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729909AbgKJQIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 11:08:07 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E418EC0613CF
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 08:08:06 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id y16so9266272ljh.0
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 08:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IdXpjX2fMBvN29YoOyMaOI1PARSVc0VzhKJzQ6c/jNY=;
        b=RejgqHVrBZZu4n1N0vlVzMwLbdbQEz7KDOjszF61G4q8FnDRgS6MlMMKiWMrZXVwRi
         C8H+ONHnQK3GJnpwFCGrj7Fjjj5F4RE4KtWhAayffxNUeXtlvMXbToJGo2vgtLLcaJqY
         peRHc6Z8Ayw2KbWU+aISfdBvaP/YrBNtZpBsI0qEWF4/hqkHjLL4F8T+mRom6j/cota6
         TQSbE1NjoQJKPX856Cxow92rdGCYIcyrktxvr8p8+99382ZchOXMvY62mC+8arBWtKey
         5U+z/S5+mUycsJXW9CjMbci8JwbcUuiXsjlR3nZ4kRBOE4I8I+YIImyCVntI7tSyibnb
         GUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IdXpjX2fMBvN29YoOyMaOI1PARSVc0VzhKJzQ6c/jNY=;
        b=DqIOl0NZFwkRQ0lAxdG2Q+Cshg3drkKvBtj1sgTuchhfkFXBV8ZPa1Ro8Gt6fNpWCg
         oLSPs0dgg+jP6SQtVikrPgeK6divG0+fVtx5LlRBxCBaiWOad0EyPaedSzb3sJPPtxyx
         6VMN/ORPtVssBh/Ysiob2OEU66LuWWl8sOAGi4hAenBA0MoBU63ZG9sqUkvFgYf5dE6Q
         v5adjWjIc8jYGQ1Z3cZUBHzTcAUre+TEXCBBxb/m7yo1b2nylOE+QYklJYrbcVaqFGqp
         I65byKL3QKBmpksR5gn/Q7MU2b36HuDeUPRHjm435RXIGHYD5i9shd2zFEem346i3pHX
         enFA==
X-Gm-Message-State: AOAM5326wTclNc1A7h6dlc//rjIA6wQsxIEocSaUZD5KYxCX7/dZbV+l
        SIPb/mm82PiiB+77a0CRREw/h2VCkkoQIC+nuhv2HA==
X-Google-Smtp-Source: ABdhPJx+3OPv/DyILoTWnWz5YCDXJQRkrl7b/kpZjceXJV8+4bcdHjQXNz+aJr98/86fydWiNskQFSAqwT5vTI8Eyk0=
X-Received: by 2002:a2e:9449:: with SMTP id o9mr8049890ljh.457.1605024485448;
 Tue, 10 Nov 2020 08:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20201106061433.1483129-1-ajye_huang@compal.corp-partner.google.com>
 <CALprXBZCthdkxGbJBZZ+ESJRDBHY879FZMpB_4Mgpq1YAJun2g@mail.gmail.com> <20201110115631.GA5957@sirena.org.uk>
In-Reply-To: <20201110115631.GA5957@sirena.org.uk>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Wed, 11 Nov 2020 00:07:54 +0800
Message-ID: <CALprXBZKnJGzFCLp0=UxJQp423QuaiPiaPzyY3-662k1gHUk-g@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Modify documentation and machine driver for SC7180
 sound card
To:     Mark Brown <broonie@kernel.org>
Cc:     Ajye Huang <ajye.huang@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Cheng-yi Chiang <cychiang@chromium.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        ALSA development <alsa-devel@alsa-project.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,Mark

Thank you, I already understand, sorry for causing you trouble.

Ajye

On Tue, Nov 10, 2020 at 7:56 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Nov 10, 2020 at 05:40:40PM +0800, Ajye Huang wrote:
> > Hi, Mark
> >
> > Could you please kindly review the series patch v6? And may I get your
> > approval if the review is done.
>
> Please don't send content free pings and please allow a reasonable time
> for review.  People get busy, go on holiday, attend conferences and so
> on so unless there is some reason for urgency (like critical bug fixes)
> please allow at least a couple of weeks for review.  If there have been
> review comments then people may be waiting for those to be addressed.
>
> Sending content free pings adds to the mail volume (if they are seen at
> all) which is often the problem and since they can't be reviewed
> directly if something has gone wrong you'll have to resend the patches
> anyway, so sending again is generally a better approach though there are
> some other maintainers who like them - if in doubt look at how patches
> for the subsystem are normally handled.
