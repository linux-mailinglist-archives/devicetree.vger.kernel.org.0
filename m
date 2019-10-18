Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48772DBD4E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 07:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2442127AbfJRFz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 01:55:59 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:45920 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfJRFz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 01:55:59 -0400
Received: by mail-wr1-f65.google.com with SMTP id r5so4766175wrm.12
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 22:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0RX/eZVxJTs9fdKiBk/fJa6nhTLf1toXcxAcB3Pwujk=;
        b=sfw7CJKy5k8boS6JMeROudXdBBBjjIVKJrZYxCI6saAh0WDUnKZ5Gv4p2lUzQTLblg
         Pam9xKNx4ksKyqH8JysNrdhaGzWFxvLlxY23dPDalnzM6FAtgYVAUvv0V0yGWF37Ow1p
         dv5gGTgZomYK8VbHoXBLpDztiZFM/xIK+yGpq+q+l9icE0vv+DiNxPI5NBSB9ffDhKNY
         erAby/3GNgQBsoOlV6n9h8RDimV1kJhSW1oQ/FMQ5cuyd5rVG+l4ZslbC6rpw93MnIT6
         lyt/IPVcp73hXjs/W4fSd+SegGPzBmHOgJS7TtMa/S5fgEaxTqGGdp/r27xPuOVUc77J
         JsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0RX/eZVxJTs9fdKiBk/fJa6nhTLf1toXcxAcB3Pwujk=;
        b=jTJ9VXfVVHbOU/nW1nakfzSv9SJoGgm/AqFSAsEt9JG/Bb5hAZgIx+o9yULRE8Ohr7
         HDbGUtG6FmjxiUqxl0u+J0tren8750zSrYTeLQO3vh2hwP71WonMw8Ga2EQd7OB8VE5G
         13wfzJ0abneDrCDA+kXQU3jZuMB5Jqncf5GiOMDtgdnevOlQXpmk8TkpKxpIDxAfyZSq
         MFjFMG6SAUKRsSopxD6g8iODtg1y67hmVJ0JkWjb0K709m2aNJfr0BwQMZfDVS6Tmc+8
         Y3AAL0y2W+c6hcz8lbwxkeRVNqFGxu8CicecKvDd1Nu42o3VU7lLblAKoFK5Mad5vTzz
         Z3PA==
X-Gm-Message-State: APjAAAXkeYzD9k9EJT98TBV0pqwk3k+Wczoun8H6PHSoR3cFJvjL+fXd
        H2BwuBmQcVRyYtWQr+/OYkXuivwsQtlNI7wBxjKZIQ==
X-Google-Smtp-Source: APXvYqyVa2tdZUqgwmas2Off/KMa7do38JBAZiNLti1ibsNaD8x0PeLlp8nm8+4re5slTCw/ZLGPlAqydiSGFc9te/0=
X-Received: by 2002:a5d:50c9:: with SMTP id f9mr5917799wrt.36.1571378156662;
 Thu, 17 Oct 2019 22:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191002231617.3670-1-john.stultz@linaro.org> <20191002231617.3670-3-john.stultz@linaro.org>
 <2e369349-41f6-bd15-2829-fa886f209b39@redhat.com> <CALAqxLVcQ7yZuJCUEqGmvqcz5u0Gd=xJzqLbmiXKR+LJrOhvMQ@mail.gmail.com>
 <b8695418-9d3a-96a6-9587-c9a790f49740@redhat.com> <CALAqxLVh6GbiKmuK60e6f+_dWh-TS2ZLrwx0WsSo5bKp-F3iLA@mail.gmail.com>
 <648e2943-42f5-e07d-5bb4-f6fd8b38b726@redhat.com>
In-Reply-To: <648e2943-42f5-e07d-5bb4-f6fd8b38b726@redhat.com>
From:   John Stultz <john.stultz@linaro.org>
Date:   Thu, 17 Oct 2019 22:55:45 -0700
Message-ID: <CALAqxLWh0=GRod5ORpi+ENpWCkmY39mUw_=NV67sKY8qH_otZw@mail.gmail.com>
Subject: Re: [RFC][PATCH 2/3] usb: roles: Add usb role switch notifier.
To:     Hans de Goede <hdegoede@redhat.com>
Cc:     lkml <linux-kernel@vger.kernel.org>, Yu Chen <chenyu56@huawei.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 16, 2019 at 12:27 AM Hans de Goede <hdegoede@redhat.com> wrote:
> On 10/15/19 7:39 AM, John Stultz wrote:
> > On Thu, Oct 3, 2019 at 1:51 PM Hans de Goede <hdegoede@redhat.com> wrote:
> >> On 03-10-2019 22:37, John Stultz wrote:
> >>> Fair point. I'm sort of taking a larger patchset and trying to break
> >>> it up into more easily reviewable chunks, but I guess here I mis-cut.
> >>>
> >>> The user is the hikey960 gpio hub driver here:
> >>>     https://git.linaro.org/people/john.stultz/android-dev.git/commit/?id=b06158a2d3eb00c914f12c76c93695e92d9af00f
> >>
> >> Hmm, that seems to tie the TypeC data-role to the power-role, which
> >> is not going to work with role swapping.
> >
> > Thanks again for the feedback here. Sorry for the slow response. Been
> > reworking some of the easier changes but am starting to look at how to
> > address your feedback here.
> >
> >> What is controlling the usb-role-switch, and thus ultimately
> >> causing the notifier you are suggesting to get called ?
> >
> > The tcpm_mux_set() call via tcpm_state_machine_work()
> >
> >> Things like TYPEC_VBUS_POWER_OFF and TYPEC_VBUS_POWER_ON
> >> really beg to be modeled as a regulator and then the
> >> Type-C controller (using e.g. the drivers/usb/typec/tcpm/tcpm.c
> >> framework) can use that regulator to control things.
> >> in case of the tcpm.c framework it can then use that
> >> regulator to implement the set_vbus callback.
> >
> > So I'm looking at the bindings and I'm not sure exactly how to tie a
> > regulator style driver into the tcpm for this?
> > Looking at the driver I just see this commented out bit:
> >     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/typec/tcpm/tcpm.c#n3075
> >
> > Do you happen to have a pointer to something closer to what you are describing?
>
> Look at the tcpm_set_vbus implementation in drivers/usb/typec/tcpm/fusb302.c
> you need to do something similar in your Type-C controller driver and
> export the GPIO as as a gpio-controlled regulator and tie the regulator to
> the connector.

Thanks for the suggestion, I really appreciate it! One more question
though, since I'm using the tcpci_rt1711h driver, which re-uses the
somewhat sparse tcpci.c implementation, would you recommend trying to
add generic regulator support to the tcpci code or trying to extend
the implementation somehow allow the tcpci_rt1711h driver replace just
the set_vbus function?

thanks
-john
