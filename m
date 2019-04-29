Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22A61E65E
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 17:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728469AbfD2P2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 11:28:41 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:37132 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728517AbfD2P2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Apr 2019 11:28:40 -0400
Received: by mail-wm1-f67.google.com with SMTP id y5so15482853wma.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 08:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=II8KXmgk5i2NI+d+OagAFbqz1kgwsgIr5Q0TCse/uaE=;
        b=CTLGlgkPaxWr00QsI3EOFLETyybraZIKbHkfyMUTo/ZDocD4Sw2Nqc39Xgs1UNJ1hg
         hheR5rMt/LQfKRWtrvhjdLaUri/Lf/GpPsDs5SFlS+Np5vWAn5wSLozHtB0M4L5/g7LI
         WzbHpOfFSGEL1cqLgs3AhBIS+hhXqXVyFX0+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=II8KXmgk5i2NI+d+OagAFbqz1kgwsgIr5Q0TCse/uaE=;
        b=M1+sWsasPlcR4BG3/1PiHGHq0gVDhNC1W/r07W7w4/Qj9zukdT6BIyBEkk6CM20X+7
         vimeoy+GmPB3B+W0YUBOx0bb9b7c0LqXF8wcWXCcBbNIKgzJFR9+Fagb0FpFGqYD2GFt
         AldPtDInpaDOMIhHOMRuDgrwwa2I1GSAbtTm8Sr/TOjNeqUsB+HBTJqT3ashzjHpgpPw
         0eJ4pEkxOFbK4r4L8uJzOtYNTkebsHfQWgSCl6w7xj0MmWxem+IMBES/pfziiVVHJkm5
         oWrA1f3uPNKgxBa5uO9qsmMpimaGdEzTZX0DTp9ygkZ/KzneSEzXlpU14gEBNTexdjH8
         fRgw==
X-Gm-Message-State: APjAAAXdoUHfKdcGCUbiA80eO/k9g2tVaejFBf5Fj/+bk3r76JmZDyg4
        OCI+TnNtDxhGAiEFpekgoQJhoL5QG0UJTwtN10fXPA==
X-Google-Smtp-Source: APXvYqwjIP2ogzCulDTCoRN3zD+FONRuAk0p0ylTja8E7VBHXTiVcX/G42pUFehblUT4AwAaMZ+onJuC040kZpbr+Qo=
X-Received: by 2002:a1c:1a85:: with SMTP id a127mr4020287wma.139.1556551718099;
 Mon, 29 Apr 2019 08:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <1527486084-4636-1-git-send-email-srinath.mannam@broadcom.com>
 <1527486084-4636-4-git-send-email-srinath.mannam@broadcom.com>
 <da76e12f246c3f10bfed28d8b91a3575dc73f243.camel@infradead.org> <20190429152422.GC17516@e107155-lin>
In-Reply-To: <20190429152422.GC17516@e107155-lin>
From:   Srinath Mannam <srinath.mannam@broadcom.com>
Date:   Mon, 29 Apr 2019 20:58:26 +0530
Message-ID: <CABe79T4MYf65QM+OHTPa_F8uG6_pd-9VLMQOHb9EPRyj2mEx1A@mail.gmail.com>
Subject: Re: [PATCH 3/3] thermal: broadcom: Add Stingray thermal driver
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     David Woodhouse <dwmw2@infradead.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Eduardo Valentin <edubezval@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
        Pramod Kumar <pramod.kumar@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi David,

Thank you for notifying..

Hi Sudeep,

I will send a patch to remove ACPI support.

Regards,
Srinath.

On Mon, Apr 29, 2019 at 8:54 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, Apr 29, 2019 at 06:07:12PM +0300, David Woodhouse wrote:
> > On Mon, 2018-05-28 at 11:11 +0530, Srinath Mannam wrote:
> > > From: Pramod Kumar <pramod.kumar@broadcom.com>
> > >
> > > This commit adds stingray thermal driver to monitor six
> > > thermal zones temperature and trips at critical temperature.
> >
> > This matches an ACPI "BRCM0500" device but then calls
> > devm_thermal_zone_of_sensor_register(), which AFAICT is going to fail
> > on an ACPI system because the first thing that does is call
> > of_find_node_by_name(NULL, "thermal-zones") which isn't going to find a
> > match.
> >
>
> Thanks David for bringing this up. I hadn't noticed that this driver is
> cheekily trying to do thermal management in ACPI using crafty
> acpi_device_id match. ACPI thermal objects/methods must be used in the
> firmware to do thermal management.
>
> Pramod, can you remove the ACPI support or I can go ahead and post the
> patch to do the same ?
>
> > How does this work in the ACPI case?
>
> It can't and shouldn't work if one can make it happen :)
>
> --
> Regards,
> Sudeep
