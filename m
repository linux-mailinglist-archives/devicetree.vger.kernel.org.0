Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6F99310130
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 01:02:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231440AbhBEAA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 19:00:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbhBEAA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 19:00:27 -0500
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2470FC061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 15:59:47 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id w204so5036886ybg.2
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ajugGFTO/TRAW2sAnJSAPf8Ya7Pzauh522ocLH7i6ok=;
        b=ohGfycmdfrxRyY1lmPjrmZyS9N6dc3YFK2yib5ANdl8uFdVdopsh9roTcJt4ov0P5y
         xHO2VpN0aJTR09TZ0hBvwgZkSsYfhUhZTZQtgiXOXWvwazqR7Vu//O0+4cku3m7DE+oR
         HKCEz3OQjvvpg2ZAlebzRVR8TNs6A7zesCsXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ajugGFTO/TRAW2sAnJSAPf8Ya7Pzauh522ocLH7i6ok=;
        b=d/gQa8ch/ysH7XuJs8SsBljfHMSITUdUg//6cBaE1mtHTJtP9TNiNlMRjZjTNGjdYm
         aCwrlXywq6USAElVcZl2Tdh5X/f1DjRMMWjGlbNx8pE6/54cHucpFWtvY/LLXaZW2nvH
         YqGsrR5mlCAcJeaTcMV2o4uN243aKbHGYQVOT8aDxd6U20oXIQFr2NWImKthRcXqztYr
         nVl8vNPsCl1dy0YIqkgex9OyAd3rA8eArsDwV7yfJYAmV1n9ZIPuXUw6zMU0jb+SAYsd
         fBVZkOoMCYu1EHpofVcZ+eW3gdcL7E6+BitTvpOwz4qEaWpWUARSIo6U5Y+F8GanY3oy
         7lfA==
X-Gm-Message-State: AOAM531EFNAbE/ofd14g5rkn3Cft2qNlyz75c/YfHe4iBLH3Gjf36enM
        ZN/1GgpPLER1RwbiaMAuc0YlOg3EyqCdjnlEneZF8g==
X-Google-Smtp-Source: ABdhPJw2rGyC8Vdna/CSOxDku9YLve+1PHezgBkzuWIEdYSJwFeii4IvU2L9spsPyc3BoeaM/6XobrMWuZNBDeHBrm4=
X-Received: by 2002:a5b:38c:: with SMTP id k12mr2570869ybp.441.1612483186593;
 Thu, 04 Feb 2021 15:59:46 -0800 (PST)
MIME-Version: 1.0
References: <20210115143555.v6.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
 <20210115143555.v6.3.I96134907488f41f358d03f3c1b08194f9547e670@changeid> <161075035048.3661239.6086252465678815045@swboyd.mtv.corp.google.com>
In-Reply-To: <161075035048.3661239.6086252465678815045@swboyd.mtv.corp.google.com>
From:   Philip Chen <philipchen@chromium.org>
Date:   Thu, 4 Feb 2021 15:59:35 -0800
Message-ID: <CA+cxXh=tPNRxu_XvYZ7yEBj+HdadS60amXCa7_OChhzTwRnmaQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] dt-bindings: input: Fix the keymap for LOCK key
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi maintainers,

Friendly ping - can we actually land patch series v6?
Or do you expect any update from me?

On Fri, Jan 15, 2021 at 2:39 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Philip Chen (2021-01-15 14:36:17)
> > Decouple LOCK from F13 and directly map the LOCK key (KSI3/KSO9) to
> > KEY_SLEEP action key code.
> >
> > Signed-off-by: Philip Chen <philipchen@chromium.org>
> > ---
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
