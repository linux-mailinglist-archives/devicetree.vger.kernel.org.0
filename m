Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 169F2357593
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 22:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345872AbhDGUMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 16:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233381AbhDGUMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 16:12:05 -0400
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A215DC061761
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 13:11:55 -0700 (PDT)
Received: by mail-vs1-xe36.google.com with SMTP id r12so10343346vsj.5
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 13:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EXdgW9ChrKmdewwnery6En4MfPrzf/7Q8Ep2pcAMqUo=;
        b=HE+nrv5cu7TnTD1IfkoLvNgz6zakexccn0cKPSvik4Na3RVhOYykO4OkgPnxmrr8gx
         lIM885FJ4Y+eXBHVTfTPY6h3tqIs/Vtq7AxHG3QYbLpX2CzVnRDdawF89w7nGmtEfERi
         B1Q6Ld2nKCrNmlziO7N6UbSI+32yFpnOyy4EjwdfH0phzsozTj+KaJ4YWuUiBfHhEy5o
         cCssRoVWdzE8JK01WJ1InSkcRFMlxPBffm31kttZmzAemSNexvQXdFtRegFGytYloa2a
         /I7NTWTCnCJy4CgGuk9fU0loFJbda/wovnsOeKCRhOjxOZkI9IHhqG1oT8nnA9OZzWhr
         kw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EXdgW9ChrKmdewwnery6En4MfPrzf/7Q8Ep2pcAMqUo=;
        b=GUhU7id0qiMHSkyR7bok4eEzQ0l/LvMdDiYszfJJC8QHamyW9/Esze2cTGz1ezJtdA
         MLLLvWbGvAq5cbl/QW+D0L8wsfBy6YoU7A7DVMyL/DtGk7tB2ri0gDn3qR+0Mz67qrTX
         WYloNcFAWFu4Xmxb1EjTSwuXCrLqUjiQIQXGzqg4Jboq1m71j6VtZrGTjVgYB9S54pcE
         hAomk9U9zVk+B0P+/oNfhBSDTyMklJ772wjOouTgtA9thyP9MbfGCmnPsL9CMyBl2XfV
         vOKsoET9GETszxCBDlXubZQzK20KfbivpELttZ2dkGlJhMlg2p9qKj1fuFKbLNyi359i
         pGCQ==
X-Gm-Message-State: AOAM530y4lmbWxtjPZzO6ZfInMEpjvsYuczvmRHIO4FLAH47a/mymKYO
        NG+PxhHM8XUhIRb7rcGkp+ixHOyNF4IQWtCWXux09w==
X-Google-Smtp-Source: ABdhPJwLiht0i7lb4LXnE2b7s5mj3mQSnxgyZI/JTwKWf2LwwCm8dPnbhJAsUghNAxifvHVnXjJCakjs/P76gv1sV4Q=
X-Received: by 2002:a67:8c07:: with SMTP id o7mr3577176vsd.43.1617826314610;
 Wed, 07 Apr 2021 13:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210406013643.3280369-1-badhri@google.com> <20210406013643.3280369-4-badhri@google.com>
 <AM9PR10MB4134EC102F0017423E6822B480759@AM9PR10MB4134.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM9PR10MB4134EC102F0017423E6822B480759@AM9PR10MB4134.EURPRD10.PROD.OUTLOOK.COM>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Wed, 7 Apr 2021 13:11:19 -0700
Message-ID: <CAPTae5+j4JyxMEy2b4x9JG-GWAm4QokPb8nuODhewc3bwJuMQA@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] usb: typec: tcpm: update power supply once partner accepts
To:     Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>> The reason for this change is missing in the patch description,
>> or am I missing something ?

Ah yes forgot to state this in the commit description which I have
updated in V2.
Removed a redundant power_supply_changed as one was already made a
couple of lines before this one.

Thanks,
Badhri

On Wed, Apr 7, 2021 at 9:08 AM Adam Thomson
<Adam.Thomson.Opensource@diasemi.com> wrote:
>
> On 06 April 2021 02:37, Badhri Jagan Sridharan wrote:
>
> > power_supply_changed needs to be called to notify clients
> > after the partner accepts the requested values for the pps
> > case.
> >
> > Fixes: f2a8aa053c176 ("typec: tcpm: Represent source supply through
> > power_supply")
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
>
> Missing commit information aside:
>
> Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
>
> >  drivers/usb/typec/tcpm/tcpm.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> > index d43774cc2ccf..7708b01009cb 100644
> > --- a/drivers/usb/typec/tcpm/tcpm.c
> > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > @@ -2564,6 +2564,7 @@ static void tcpm_pd_ctrl_request(struct tcpm_port
> > *port,
> >                       port->pps_data.max_curr = port-
> > >pps_data.req_max_curr;
> >                       port->req_supply_voltage = port-
> > >pps_data.req_out_volt;
> >                       port->req_current_limit = port->pps_data.req_op_curr;
> > +                     power_supply_changed(port->psy);
> >                       tcpm_set_state(port, SNK_TRANSITION_SINK, 0);
> >                       break;
> >               case SOFT_RESET_SEND:
> > @@ -3132,7 +3133,6 @@ static unsigned int tcpm_pd_select_pps_apdo(struct
> > tcpm_port *port)
> >                                                     port-
> > >pps_data.req_out_volt));
> >               port->pps_data.req_op_curr = min(port->pps_data.max_curr,
> >                                                port->pps_data.req_op_curr);
> > -             power_supply_changed(port->psy);
> >       }
> >
> >       return src_pdo;
> > @@ -3557,8 +3557,6 @@ static void tcpm_reset_port(struct tcpm_port *port)
> >       port->sink_cap_done = false;
> >       if (port->tcpc->enable_frs)
> >               port->tcpc->enable_frs(port->tcpc, false);
> > -
> > -     power_supply_changed(port->psy);
> >  }
> >
> >  static void tcpm_detach(struct tcpm_port *port)
> > --
> > 2.31.0.208.g409f899ff0-goog
>
