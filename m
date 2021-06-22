Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 101E63B0A97
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 18:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231288AbhFVQsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 12:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhFVQsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 12:48:38 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1A16C061574
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 09:46:20 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id f16so8713247qvs.7
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 09:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cX1+N3znKheAWMZ/uIaQ9Wu1I4c8xfSCdEid5XXgYUU=;
        b=YOPMkgmgYEaJx78lKXGLKjEtNH7hC+lgi844pNliJkG4ti5vrqjMc+oYAqOQD7H2jS
         2qqrRzjl9eiZPl3/CUfCvP3bVN4outKo6a1WsV8JSRjLD6PAeSIZDztM7Khj3cxdCfUR
         p4PY5N5SmT98GRvCrjoWP2IhcR9X54oRBzFtZo7yU7KpcGXTDGBCgT8U5Q8nDCvkcL4f
         6GbkWOcfKD4uaLMwk1sYQhUHbquWuh76GcYII+D/ew4UZBKFK7T3YXQcj7bP5hirphRr
         woN0x87w5h9RppF3feOaRx2qlmXznUkTQwOi6hGFBXBK1pENgf1bTy7VU2Y8rcRZSYMs
         TeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cX1+N3znKheAWMZ/uIaQ9Wu1I4c8xfSCdEid5XXgYUU=;
        b=kRP1imEykDalPDVMfhuViAQUfcrClyICKT0aFyYzafBcUjOLrACzFic3TY74Nc41pM
         6CyIU6VmyBc59anwSiuX9SAdcWsQ6C4C28ynhuj27VDol05dPvIAbChFo2Z6IKlrXBwK
         g/KpUYqDSdFpZ9usShEuD17lyQpVid0s05+4x624zCdGI128m5ZCe9SOB/L6RzLent8y
         V1TTmbqiRJt8ODlT2wcx4K7834Ao9WCL5V+2CofQlrD7voX47kxZaFO9WeOyJLFDqoz9
         9R/037j8eoYGLMPGd4bk5MeIWW9Zh1YFfWXE0pKicq707hEDQ9qN22vLh7SbwMl2uojO
         9j6g==
X-Gm-Message-State: AOAM531O+hhEjgTAeresCc4BmBwgAT5BvXzSKNmlOBDNtANzvkfZW07H
        HLadhPogPgldG7gDVnEPSDShbitPtcZnZPUON+xXFA==
X-Google-Smtp-Source: ABdhPJzISR/1moqz9T2VFK0No/teqAwV9c5ubfc0VsheSSZ5WjW1a7WkGDxsHNNpv4HDu3/B1wo2UFlinPyOenYwBYo=
X-Received: by 2002:ad4:55eb:: with SMTP id bu11mr26378298qvb.2.1624380379836;
 Tue, 22 Jun 2021 09:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210621223141.1638189-1-dmitry.baryshkov@linaro.org>
 <20210621223141.1638189-3-dmitry.baryshkov@linaro.org> <20210622112843.GB4574@sirena.org.uk>
 <CAA8EJpoTdg3O6dzpTaNS5fJRbtb1Fndv0mEuO+e4b6XCmuvzhQ@mail.gmail.com> <20210622143812.GE4574@sirena.org.uk>
In-Reply-To: <20210622143812.GE4574@sirena.org.uk>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 22 Jun 2021 19:46:08 +0300
Message-ID: <CAA8EJpoeYUOPLKca5oJNKdyOvOmoLX6FvsTbdmC7W9mLsyyVmw@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] regulator: qca6390: add support for QCA639x
 powerup sequence
To:     Mark Brown <broonie@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Jun 2021 at 17:38, Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Jun 22, 2021 at 05:17:28PM +0300, Dmitry Baryshkov wrote:
> > On Tue, 22 Jun 2021 at 14:29, Mark Brown <broonie@kernel.org> wrote:
> > > On Tue, Jun 22, 2021 at 01:31:36AM +0300, Dmitry Baryshkov wrote:
>
> > > > Qualcomm QCA6390/1 is a family of WiFi + Bluetooth SoCs, with BT part
> > > > being controlled through the UART and WiFi being present on PCIe
> > > > bus. Both blocks share common power sources. Add device driver handling
> > > > power sequencing of QCA6390/1.
>
> > > Are you sure this is a regulator and not a MFD?  It appears to be a
> > > consumer driver that turns on and off a bunch of regulators en masse
> > > which for some reason exposes that on/off control as a single supply.
> > > This looks like it'd be much more appropriate to implement as a MFD or
> > > possibly power domain with the subdevices using runtime PM, it's clearly
> > > not a regulator.
>
> > First attempt was designed to be an MFD. And Lee clearly stated that
> > this is wrong:
> > "This is not an MFD, since it utilised neither the MFD API nor
> > of_platform_populate() to register child devices." [1]
>
> Well, perhaps it should do one of those things then?

I don't think so. BT part is just a serdev sitting on top of UART,
WiFi is PCIe device (for qca6390). So using MFD API (which primarily
targets platform devices) does not seem logical and feasible.

> Like I say this is
> very clearly not a regulator, it looks like a consumer of some kind.
> The regulator API isn't there just to absorb things that need reference
> counting, it's there to represent things providing supplies.  This seems
> to be very clearly not a supply given that it's grouping together a
> bunch of other supplies and switching them on and off together without
> providing a clear output supply.

Ack.

> > I've tried following Rob's suggestions on implementing things clearly,
> > but doing so results in too big restructure just for a single device.
>
> I don't know what that suggestion was?  If there's only one device that
> uses this why is it not implemented as part of that device?

One device = qca6390 (or 91). Because it is still a device sitting on
a PCI bus which is typically discoverable, while adding power
sequencer to the device driver would demand making the bus fully
descibiable (like PCI bus is on Spark).

> > > > +static int qca6390_enable(struct regulator_dev *rdev)
> > > > +{
> > > > +     struct qca6390_data *data = rdev_get_drvdata(rdev);
> > > > +     int ret;
>
> > > > +     ret = regulator_bulk_enable(data->num_vregs, data->regulators);
> > > > +     if (ret) {
> > > > +             dev_err(data->dev, "Failed to enable regulators");
> > > > +             return ret;
> > > > +     }
>
> > > The regulator API is *not* recursive, I am astonished this works.
>
> > It does, even with lockdep enabled. Moreover BT regularly does disable
> > and enable this regulator, so both enable and disable paths were well
> > tested.
> > Should I change this into some internal call to remove API recursiveness?
>
> You should not be implementing this as a regulator at all.

Ack

-- 
With best wishes
Dmitry
