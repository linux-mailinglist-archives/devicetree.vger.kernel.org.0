Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB0633688A6
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 23:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237048AbhDVViw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 17:38:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237012AbhDVViv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 17:38:51 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF10C06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 14:38:16 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id u20so15707988qku.10
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 14:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=17RfyaTeIokTgRDeo35cefRpLMh7tU98i8pYpROElO0=;
        b=PqX7Wx1GDjMnldVpYXbkC66iKUtc3CNsfbF1O4XgF7ZthMmuTr3QPfutSPuJ/3q2QY
         NN0ALoFEZgT3ePeNb10Ef7gWTVkDSuzNNOYenQC5VbcG5Vi230kHb+qrOFT5eJKQdupy
         VLY96TSiQ57Q9yYVA4NbLheuJrPqYlXQwhwtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=17RfyaTeIokTgRDeo35cefRpLMh7tU98i8pYpROElO0=;
        b=HMR8ELPCQnJ8RcbOxqlHhi6t61Xakm6D78bNynMUuMd3sOthiwf+Kr/qbV45OC1wst
         fl15IGoLh3wxPoSZhPs6SEPJtkUgwv9/JHofcN2PkluJi25IZMi6NKyJ89sYqQKcE/5N
         0hKkoXMPzgao1xfItXS/fqGfNsUXDwZPGnLtgZTJFMc+Ig565q0fhw+HW6Hp/ZRGnNm/
         9xahjNlj3GHN8yAdfWA554vu4W40u72Tj3BprWPqwhMybdU4B4wu1wkG5cm8xTzLoquV
         XNjnc2a9w7EOFAe0F35Al0v5mtfEnEiQrSxBEva6gbHwj6hXr48B11a1aQpY/cOZEanB
         at7g==
X-Gm-Message-State: AOAM531NcW3NUH7EDWqmJ/g4j33zmhCwWJJyA3JRoq6JBWRKcFjH2mf6
        AOmY4kL9BeczFfmqQ653wVZO35WSH2BQkQ==
X-Google-Smtp-Source: ABdhPJwSiwP5YHvtJ3LLwn7Mo2q57GLcMC5ojXtbrW9MfoN+iYUcoM/N4HlJOsKPqM4jye14HxZ+tg==
X-Received: by 2002:a05:620a:1350:: with SMTP id c16mr834074qkl.105.1619127495486;
        Thu, 22 Apr 2021 14:38:15 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id b23sm3190151qtp.17.2021.04.22.14.38.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 14:38:14 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id t94so32161ybi.3
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 14:38:14 -0700 (PDT)
X-Received: by 2002:a05:6902:4c3:: with SMTP id v3mr1207135ybs.276.1619127494005;
 Thu, 22 Apr 2021 14:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <1619112931-2144-1-git-send-email-sanm@codeaurora.org>
 <1619112931-2144-2-git-send-email-sanm@codeaurora.org> <YIHBzxN/9O9a98Xd@google.com>
In-Reply-To: <YIHBzxN/9O9a98Xd@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Apr 2021 14:38:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vzx29E6hH+L8rZyyrOjt2JLzS8ho1Cym6bNY6gt5dO9w@mail.gmail.com>
Message-ID: <CAD=FV=Vzx29E6hH+L8rZyyrOjt2JLzS8ho1Cym6bNY6gt5dO9w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add USB related nodes
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Sandeep Maheswaram <sanm@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


On Thu, Apr 22, 2021 at 11:34 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Thu, Apr 22, 2021 at 11:05:31PM +0530, Sandeep Maheswaram wrote:
> > Add nodes for DWC3 USB controller, QMP and HS USB PHYs.
> >
> > Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> > ---
>
> What changes with respect to v1? Please always include a change log for
> versions > 1

It looks like this was here:

https://lore.kernel.org/r/1619112931-2144-1-git-send-email-sanm@codeaurora.org/

...which I guess is a "cover letter", though it's not really formatted
properly (it should usually be listed as "patch 0" in the series) and
also cover letters are discouraged for singleton patches like this.
Also: even when history is added to a cover letter it's usually
friendly to reviewers to also include it after-the-cut in your patch.

-Doug
