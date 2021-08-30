Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5561D3FB9F8
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 18:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237523AbhH3QSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 12:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231725AbhH3QSn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 12:18:43 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD73AC06175F
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 09:17:49 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id h29so16699955ila.2
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 09:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nfzNrOmv2YiRjvQswBNc4WHEh4DSAzBWkoHqRjK3dy8=;
        b=d9/QBDnEGBQ72Erph/eIdUiV6qrcStrNFk8vsZVfX/3Ti4YujTKIU7L4Sh+1jCUi4R
         xUIMFcBgjHUznvgSzlDZQc1yEssjRtTBDNP4lnZpsbamDRPpqAZ9zdtlwRcHZkUgkaYe
         c+EdQRM7fY/JuLvJDKePxSHQfa5jaf4m3UvFNax4Af3yLDgHnuv8zCKbMOgJQif5PX4S
         IQLX+jo0dNI5vkJyZFAZ0++JwYOHnhUuRCfImdwMJwa3Dn2B3ZvxzAduNIOByKS86GQt
         KYQccZyCgVBRnHCaeTidrfMo7q5B15T9GSOlArFmRe2oQsPxyW4CJkXF6cBvU570u4n3
         CwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nfzNrOmv2YiRjvQswBNc4WHEh4DSAzBWkoHqRjK3dy8=;
        b=fSOk4bpnGfOx6yXWBiBnONsB3yzDFFYLBTBoVAajTKNkz9QIZT9ncWkvRfBFS7A9vk
         AYfdlSh7QJc5QFh1Dm20SfpYX/ppqKuc6S0jwD+A+THmGVWuhz8pTyuyvKHFU+qxkB40
         tIlDeCqjKhwb71ngIVMpJcWHA0iL+I5sE+OTTQhSmXwYnp3YRy15Are5k4lXHUPVIX69
         GOwjhy7lKu8FYe6PmmkalIEEsohjhNX/1xVuIh8s9JBlKlQRTUG+xq61FWc13is2InJA
         jzY8aFF7+oiSPWGzjSehZ5gAviwbP6IjZT1W48vEL2Tl5mKrzPx+pYuBs6GJlucV+DRZ
         9J0A==
X-Gm-Message-State: AOAM530Cs9aj9HVXtSRG37sRwFGY1NWydHkur9ooSb/wELj04zVxtacV
        EBQXQwe8VHVCgosvJTqK5hZCSqI6Ky37v0xDOGWdyQ==
X-Google-Smtp-Source: ABdhPJxLPJaQvCs6nLDT2CD5K46HzLBsxGup9E2eQR5G9BwCq+36P/T25Gy8JNWJbkdm2pmzlGqOEWHmYw7KDSK8JDc=
X-Received: by 2002:a92:cf4a:: with SMTP id c10mr17367601ilr.269.1630340269053;
 Mon, 30 Aug 2021 09:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com> <20210830023849.258839-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210830023849.258839-4-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Mon, 30 Aug 2021 09:17:35 -0700
Message-ID: <CAD=FV=WcvanAAjWix=qv=irMr_KfhTNQW+Hgauwcs7=03510FA@mail.gmail.com>
Subject: Re: [v4 3/4] drm/panel: support for BOE and INX video mode panel
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Aug 29, 2021 at 7:39 PM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Support for these two panels fits in nicely with the existing
> panel-boe-tv101wum-nl6 driver as suggested by Sam [1]. The main things
> we needed to handle were:
> a) These panels need slightly longer delays in two places. Since these
> new delays aren't much longer, let's just unconditionally increase
> them for the driver.
> b) One of these two panels doesn't support DSI HS mode so this patch
> adds a flag for a panel to disable that.
>
> [1] https://lore.kernel.org/r/YSPAseE6WD8dDRuz@ravnborg.org/
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 915 +++++++++++++++++-
>  1 file changed, 912 insertions(+), 3 deletions(-)

This looks fine to me now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'm happy to help land this series or for others to land it. For now
my plan is to let them sit for a couple of weeks and if there is
silence I will plan to land them in drm-misc-next. I'm happy to land
earlier with an Ack or I'm happy to step back if someone else wants to
take charge. ;-)

-Doug
