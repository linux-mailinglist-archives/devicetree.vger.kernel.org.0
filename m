Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 090A5C98B0
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:55:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727247AbfJCGzq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:55:46 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:44008 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727242AbfJCGzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:55:45 -0400
Received: by mail-io1-f66.google.com with SMTP id v2so3006529iob.10
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bU7eEWTqDVJAzVoRac0rizP1WsKz1rzNUUO0iZVJmNQ=;
        b=E1EqupMg730dahrp+6/NFq2OamGjeULfhizL/aUqK1IMHs6JmoAZkeUxeqF1uwf+ZL
         eyQt8lAC4bfdpSCJComxGlNEy5LOrSZvqwfEcLDKooentutky+aiizYXAhwx2FYshOvy
         7A+i90ioBBDKtqAGAwHtOaaD7o5I8h+y5zez8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bU7eEWTqDVJAzVoRac0rizP1WsKz1rzNUUO0iZVJmNQ=;
        b=JhlK8ejHmkcw8QJPSQhMPzYHhK4yeSi8jTUxMNJoRlUktYero+b8uZNe8W6or2oZED
         w43VPl+nW37fd/+mMrGpbVDJaJgj9k1QCR4vZzQR4h+WzDLQdwhMn5sQlIL2gD2FXvk3
         at9tX3RlBFOxvYN8X153B8FP54h7wczOLfmVDfyBKJ22SZtHQf3lRdTmbie6RO8ab7eA
         7dVFBlbYz7NgEQz9zo6Ukvz6cIuSBst7ckh7m1rpmtus1LFBhWxG/ZQNehKAwkqzXhE7
         /LW1fhqg2CltIjdFczd0I4ENAqbUJwLFUFUSv5SDjTUk1DZ76YmBu37B5qoIXflLC0t9
         GYlA==
X-Gm-Message-State: APjAAAUutX6n++W/6UAChDO9W7j6J2bluj7bzFweb8bX0J8FPvnErkeA
        s5jLyRnkpW6QGI5oM0lblVPXIvretwpO866Zzpsi3w==
X-Google-Smtp-Source: APXvYqw/JqRqbQzudnEFtsSEFiBBZMcwV+TKk69UO/Ob6QYkQJ0sHL6YVsqN1DKW1le5yW1GE5acz24BJ2zaF85Yy5g=
X-Received: by 2002:a5d:89da:: with SMTP id a26mr6650973iot.61.1570085743213;
 Wed, 02 Oct 2019 23:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-2-jagan@amarulasolutions.com> <DB2FB6E5-E4B5-40F4-A05F-9A2303FCA1AE@aosc.io>
In-Reply-To: <DB2FB6E5-E4B5-40F4-A05F-9A2303FCA1AE@aosc.io>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Oct 2019 12:25:32 +0530
Message-ID: <CAMty3ZDZBctSRcgfMTc3moTzrJZXL_S-tKKNKyOa4jUKT8rW+Q@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v11 1/7] drm/sun4i: dsi: Fix TCON DRQ
 set bits
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 3, 2019 at 12:21 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
>
>
> =E4=BA=8E 2019=E5=B9=B410=E6=9C=883=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=88=
2:45:21, Jagan Teki <jagan@amarulasolutions.com> =E5=86=99=E5=88=B0:
> >The LCD timing definitions between Linux DRM vs Allwinner are
> >different,
> >below diagram shows this clear differences.
> >
> >           Active                 Front           Sync           Back
> >           Region                 Porch                          Porch
> ><-----------------------><----------------><--------------><------------=
-->
> >  //////////////////////|
> > ////////////////////// |
> >//////////////////////  |..................
> >................
> >                                           ________________
> ><----- [hv]display ----->
> ><------------- [hv]sync_start ------------>
> ><--------------------- [hv]sync_end ---------------------->
> ><-------------------------------- [hv]total
> >------------------------------>
> >
> ><----- lcd_[xy] -------->                <- lcd_[hv]spw ->
> >                                         <---------- lcd_[hv]bp --------=
->
> ><-------------------------------- lcd_[hv]t
> >------------------------------>
> >
> >The DSI driver misinterpreted the hbp term from the BSP code to refer
> >only to the backporch, when in fact it was backporch + sync. Thus the
> >driver incorrectly used the horizontal front porch plus sync in its
> >calculation of the DRQ set bit value, when it should not have included
> >the sync timing.
> >
> >Including additional sync timings leads to flip_done timed out as:
>
> I don't think attaching this error infomation is useful at all.

Since the error would be common irrespective of panels and it would
trigger from dsi controller, I thought this would be useful for
reference. I have had this conversation in previous version changes,
so I have added it. let me know if have any comments.
