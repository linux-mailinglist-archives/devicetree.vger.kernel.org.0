Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51C1A426B59
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 14:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241993AbhJHM57 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 08:57:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241537AbhJHM56 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 08:57:58 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6284AC061570
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 05:56:03 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id y15so38995386lfk.7
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 05:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SxcONP4zerIk6DCHmdX7lnhsoemICqZWD19R4vNHLps=;
        b=UEYzs6P1v2evhYYtpcW7MzRTaa3q89FiXx0thtHS9FTnuHVxIC0cXx1fmTurIta5tn
         aIWVGHR9wqZt2g/0u+Fec8/iGJAodJ5im71oqR7kHabQ0srtJnUpkj9CFkfnXfsqdZ8/
         bM9aPqw9U8Lg51PmqCfdDcRaO0HDe3pbpmwBHCH0N6Glw4mwox0INYSvvatcgwojlozf
         QMkQovKh1NSr3aX+dCv4aYAZZfEmWuJIuEHF07f4okrZ7A8Zeb7rJMztKfh9at/Q9Lc8
         KmtOdAjj5p0Ziz+CNNd3Xh9kyTo+/aAeBZpW712RvajjhtXnJjCDrKUK9ux+0QpaS1BJ
         p+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SxcONP4zerIk6DCHmdX7lnhsoemICqZWD19R4vNHLps=;
        b=XKaFmUaEhzCLnyOnnaxC6p4c2jXC5QUmSPHK2V1WEVCLac26/r7TaJ2q3IorZk3Cqh
         7zKUsKRVpbrpR3gzkSpjRmo24QUTKRQ7+wj2OOSRYZVYYZcYeSqpgh/TmlTphxlMUPT+
         jcDijQqmO/CMRJLtqimBXl/LWkoAua8WKczQbVeBUNiyJQCQ/uxaSo+9fMVTIac7GpPZ
         zGIW2HVPnqcz+wALAtGfkjCwiQ3UehE9nyTGnt6f3cPViCc80JclBOnao295eZc9MwU0
         KqZLEUb+DLOpyrSBvPPcgvu0ZWH1fT1op08XZSUiWBiTn5xosXtycqh+A3H3ZUY36EBV
         IWiA==
X-Gm-Message-State: AOAM5300X7hAru0HoXQI20iKjLP4O+JKSmmTTcxzoMPBlkvlefdZheec
        tlZ1wGigVAMm0rfL6uo0b7pQPzpLVB8wbUM46ROviX68mX0mSg==
X-Google-Smtp-Source: ABdhPJz8exzMlBq2sC2QvF9flm6Pf+q5TB7ewUEISX8lXZx6bpyOvZDKfO2lLjVC/2EVpA9JxRxqcUlKk9QBF2oGF5U=
X-Received: by 2002:a05:6512:3e1e:: with SMTP id i30mr10142610lfv.273.1633697760433;
 Fri, 08 Oct 2021 05:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <12984255aac11a3edfc0e6278e1a1cac70ce97ec.1631021349.git.krzysztof.adamski@nokia.com>
 <YUkKCe7845uCqoy5@robh.at.kernel.org> <20210921125831.GB1864238@roeck-us.net>
 <CAL_JsqLo=inkKVKSU8N=_h90RfpDk6NNWPKdKyTXh-VvqXDCag@mail.gmail.com>
 <20210921205247.GA2363535@roeck-us.net> <CAL_Jsq+NXuF+F7OE3vyEbTUj6sxyMHVWHXbCuPPoFaKjpyZREQ@mail.gmail.com>
 <20210924002951.GA3027924@roeck-us.net> <YU2D7L7QMgCJZUeb@localhost.localdomain>
 <20210924114636.GB2694238@roeck-us.net> <CABoTLcQYHZbsgzXN7XXKQdDn8S-YsuE+ks9WShAEKcBJojEfcQ@mail.gmail.com>
 <20210925132631.GB1240690@roeck-us.net>
In-Reply-To: <20210925132631.GB1240690@roeck-us.net>
From:   Oskar Senft <osk@google.com>
Date:   Fri, 8 Oct 2021 08:55:44 -0400
Message-ID: <CABoTLcTKAn5TVs3wadZQiheeKA5kUGBtMRbFWprRWoqRJV=J9Q@mail.gmail.com>
Subject: Re: [PATCH 8/8] dt-bindings: hwmon: allow specifying channels for tmp421
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Krzysztof Adamski <krzysztof.adamski@nokia.com>,
        Rob Herring <robh@kernel.org>,
        Jean Delvare <jdelvare@suse.com>,
        Linux HWMON List <linux-hwmon@vger.kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Guenter

> Numbering in sysfs is not relevant here; the index should always start with 0.
Ok, in that case, I'll encode LTD as @0 and RTD1..3 as @1..@3.

> > In this example, RTD1, RTD2 and LTD would be temperature sensors and
> > RTD3 would be a voltage sensor.
> >
> > Would that make more sense? Is the use of strings acceptable?
> >
> I don't think so. I am quite sure that rtd3 is still a temperature,
> and I am not sure if other sensor types on that chip may need dt
> configuration.
Reading the existing nct7802_in_is_visible() and
nct7802_temp_is_visible() [1] in I read that RTD3 could either be
voltage or temperature.

I'll go ahead and propose another patch version on [3] for that.

[1] https://github.com/torvalds/linux/blob/master/drivers/hwmon/nct7802.c#L778
[2] https://github.com/torvalds/linux/blob/master/drivers/hwmon/nct7802.c#L679
[3] https://lore.kernel.org/all/20210921004627.2786132-1-osk@google.com/
