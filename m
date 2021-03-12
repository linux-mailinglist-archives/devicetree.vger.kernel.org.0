Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C0033384E2
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 06:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbhCLFJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 00:09:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230243AbhCLFIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 00:08:46 -0500
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com [IPv6:2607:f8b0:4864:20::92d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D1DC061761
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 21:08:46 -0800 (PST)
Received: by mail-ua1-x92d.google.com with SMTP id g5so1370737uan.8
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 21:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uHOpvLhtcBHbawIEfPz5vAJeY+3oJDGose4sCS14ksM=;
        b=ji/rHHnMPcSm4WLA9naLB2j+Vp4jtFUnVlqAWZEb7g4lwsK4w50Xo8CivItnD5kt37
         c33wqWjZS8uyoKoAQGWSGJwnyF9wCNK20JXj/C8yBTDDYC8L9Nbypb8x5qt59fhwhQX7
         yX7PvrP4JZCusZRmRYRXk8z8u9QIzHh+nQWzAwhgkpQeFcbwuwpp0VESgEfh2SyMmTZx
         4JtQ/Hnq1MPahG1u+aqLi4vdRZM/E47Ihqq8NCHGLEj+jmIdhbSNrFDToO28vHWvaI3A
         TSo4lpDddfbemVh1dSj+n29yNhnmeQlmw+A+lVnJOYGSyGBFAzGWATfuS4mYPFlJO8C8
         ft2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uHOpvLhtcBHbawIEfPz5vAJeY+3oJDGose4sCS14ksM=;
        b=qQHSi4n03aaEbnuXjg2W5QZLFh9eyGdEh00oODpFDTGhQfDpPFRD0Dm/XAOm50ylA6
         OlIft4ZxPU8xE38eYJNTXeyq6Eiqe2PeU/+qHAJIVoHv06EdMSaGS5Eu7mdqEToJ7HNG
         DVQEADK0ymiVSvD20h3KNW+4hQoHPqfj0xwIr1TJrUOkWpapv59T/0M1KJoCuQyCynm1
         AnEYDRfxdcqjZKknRjVfrzaWdyA+qBEib/1daATEK8RwbkO1n1gXCslVbAm6sQ1BW/Xi
         z3nfFs8vSenOrv21GbndGfn5Mbg5sWVuqeYdAoS7rcdKZ2DXxazSGUfAHkS/dcO5B9a3
         zKrw==
X-Gm-Message-State: AOAM531ePXsrDk2ix37Vm5fYn2VW//TEg3Y4OWgvvEnAPGA9cuWj4ROe
        rgKEizW6dxFLqiK/wTROULyq5bEQ1DioptJ+aDX6Pw==
X-Google-Smtp-Source: ABdhPJwihHID2NqIizK1UVSvkKIlg1hQtMOUGnX9QgjjQuWobQoLMA4beT9qvQURge0Xfa+UMUNJnIsYo+zLxN3ygF0=
X-Received: by 2002:ab0:4d6a:: with SMTP id k42mr7030498uag.69.1615525720433;
 Thu, 11 Mar 2021 21:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20210311100313.3591254-1-badhri@google.com> <20210311100313.3591254-3-badhri@google.com>
 <YEocMN1aSdDZ2dl/@kuha.fi.intel.com>
In-Reply-To: <YEocMN1aSdDZ2dl/@kuha.fi.intel.com>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Thu, 11 Mar 2021 21:08:04 -0800
Message-ID: <CAPTae5KNXK1M1L134RKj6QPr1NGv5uo-43NVZ+cM5otsxjvMOw@mail.gmail.com>
Subject: Re: [PATCH 3/4] usb: typec: tcpci_maxim: configure charging & data paths
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        USB <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Kyle Tso <kyletso@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 5:33 AM Heikki Krogerus
<heikki.krogerus@linux.intel.com> wrote:
>
> Hi,
>
> On Thu, Mar 11, 2021 at 02:03:12AM -0800, Badhri Jagan Sridharan wrote:
> > This change allows the driver to configure input current/voltage
> > limit for the charging path. The driver sets current_max and voltage_max
> > values of the power supply identified through chg-psy-name.
> >
> > The change also exposes the data_role and the orientation as a extcon
> > interface for configuring the USB data controller.
>
> This looks wrong to me. Why wouldn't you just register your device as
> a separate psy that supplies your charger (which is also a psy, right)?

Hi Heikki,

Looks like that would pretty much make it reflect the same values as
"tcpm-source-psy-" exposed
by tcpm. So experimenting with making the charger power supply a supplicant.
However, noticed that the "tcpm-source-psy-" does not have calls to
power_supply_changed().
So the notifiers are not getting invoked.
Trying to fix that to see if just "tcpm-source-psy-" helps the case
without me trying to create another
one which almost would reflect the same values. Let me know if you
think that might not work.

For now, refactored the patches to only include changes related to
data path and sending
them in. Will follow up with patches for the charger path once I am
done with the above approach
and some validation.

Thanks,
Badhri
>
>
> thanks,
>
> --
> heikki
