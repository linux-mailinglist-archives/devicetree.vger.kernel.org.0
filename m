Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4012F30A11B
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 06:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbhBAFOU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 00:14:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbhBAFM2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 00:12:28 -0500
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B342C06178A
        for <devicetree@vger.kernel.org>; Sun, 31 Jan 2021 21:11:48 -0800 (PST)
Received: by mail-qk1-x72f.google.com with SMTP id a7so15105933qkb.13
        for <devicetree@vger.kernel.org>; Sun, 31 Jan 2021 21:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=trNRKF7QOgSxeQPu6x/O8gmSAPcKdJAY3w7IjTKMviQ=;
        b=VT+Fn+M5fDaUa7hzPwDAxBtqAIdSsPOx6PmsKw/YbQvIDJMZEqmYhV5oZb0sTNk8z7
         OvqsQ7SlOl4H/GPWPnMOy1jCY/KmJc0mDTNpGJMMHeP/KHDTILPmE2nMd7YvWsqQNcBJ
         elc9nFo33yT2NLSQ/j/JRwPiWbFcav6NkejzfOOcexbNiWnc87KebStbTa/3j2NnhN5V
         wlxgfnmow5rR0323TKC/wxydmX6mVtcnWPssa4OffMzezA8nosVClKkBJgvAjrdyoP+f
         zWMQ9JinY72VqfG/TC77HS3RUwrXsC+Q3xM7pn6aWwH1cpmJFH0AdxUzozKaNsoREPvK
         HmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=trNRKF7QOgSxeQPu6x/O8gmSAPcKdJAY3w7IjTKMviQ=;
        b=lbB//5Egv8GY3kvyJpqSj/msaGpp3TBCLTRsYDk8kdTw0ZSDTTHzVEM7qixju8uvqK
         WO215THCcpYPJYZK1B4b0giNttu7YHVndi27tZOwkek7Ss+wn/XohDk+VlwHln0IkKAF
         gXFdQsL/SOlWbtIqu0XmvT73Imv2oAY4RBm5f6MkkkOqd52n3wW18Mmoxqm2UTNMVsLG
         FQFv6meUYHep11i/e0GWTTy8jXB9LvErevZTR5SlbNT9LaSJ+FUXqWunou/s87xB3Iyb
         V4Mp0J3mlPNOpB7heBK538vdpeyj39WnmIlnQh+Ii0nmo1s5VpB1xui3jyMiyFnRNCG2
         PEyg==
X-Gm-Message-State: AOAM532owSnCzyvt3fNn0IH0ZGjBbAADfcLH756IIqlHgTCXSH+bcAkr
        QYv9UMuthy8+DM35ZkNd7PihMAZpLdNImX7AMzMGVg==
X-Google-Smtp-Source: ABdhPJyswQ45iMOxwGnVC6PENPRcTaQ2sPFXnY1EMzdXGYKyxgIrmOkMZX8sknnF8kHc4a4njCE43xLCgSjPCMYJF/4=
X-Received: by 2002:a37:b346:: with SMTP id c67mr84406qkf.212.1612156306853;
 Sun, 31 Jan 2021 21:11:46 -0800 (PST)
MIME-Version: 1.0
References: <20210131151832.215931-1-kyletso@google.com> <20210131151832.215931-4-kyletso@google.com>
 <950a9361-4cc8-5c01-8c3d-80d812fd663d@roeck-us.net>
In-Reply-To: <950a9361-4cc8-5c01-8c3d-80d812fd663d@roeck-us.net>
From:   Kyle Tso <kyletso@google.com>
Date:   Mon, 1 Feb 2021 13:11:30 +0800
Message-ID: <CAGZ6i=3uUnPNDd1SbcNWG85Rv+jZqJEdFQ6uW2=_WRrhrJaP6A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] usb: typec: tcpm: Get Sink VDO from fwnode
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Hans de Goede <hdegoede@redhat.com>, robh+dt@kernel.org,
        Badhri Jagan Sridharan <badhri@google.com>,
        USB <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 1, 2021 at 12:02 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 1/31/21 7:18 AM, Kyle Tso wrote:
> > Commit a079973f462a ("usb: typec: tcpm: Remove tcpc_config
> > configuration mechanism") removed the tcpc_config which includes the
> > Sink VDO and it is not yet added back with fwnode. Add it now.
> >
> > Signed-off-by: Kyle Tso <kyletso@google.com>
> > ---
> > Changes since v1:
> > - updated the commit message
> >
> >  drivers/usb/typec/tcpm/tcpm.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> > index 403a483645dd..84c8a52f8af1 100644
> > --- a/drivers/usb/typec/tcpm/tcpm.c
> > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > @@ -5677,6 +5677,18 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
> >                       port->new_source_frs_current = frs_current;
> >       }
> >
> > +     ret = fwnode_property_read_u32_array(fwnode, "sink-vdos", NULL, 0);
>
> fwnode_property_count_u32(), maybe ?
>
That's the same and looks like fwnode_property_count_u32 is better to read.
I will revise it in the next version.

> > +     if (ret <= 0 && ret != -EINVAL) {
> > +             return -EINVAL;
>
> Why return any error except -EINVAL (including return values of 0) as -EINVAL,
> and -EINVAL as no error ?
>
sink-vdos is not a mandatory property which means -EINVAL is acceptable.

If the return < 0 and the value is not -EINVAL, it means that the
error is other than "not present" in the device tree.
If the return == 0, it means that the sink-vdos is present in the
device tree but no value inside it.
Both of the above situations are not acceptable.

> > +     } else if (ret > 0) {
> > +             port->nr_snk_vdo = min(ret, VDO_MAX_OBJECTS);
> > +             ret = fwnode_property_read_u32_array(fwnode, "sink-vdos",
> > +                                                  port->snk_vdo,
> > +                                                  port->nr_snk_vdo);
> > +             if (ret < 0)
> > +                     return -EINVAL;
>
> static analyzer code used to complain about overriding error codes.
> Not sure if that is still true. Either case, why not return the
> original error ?
>
Returning the original error codes is good. I just followed the return
value of other error handling in this function.
will revise it in the next version.

Thanks,
Kyle



> Thanks,
> Guenter
>
> > +     }
> > +
> >       return 0;
> >  }
> >
> >
>
