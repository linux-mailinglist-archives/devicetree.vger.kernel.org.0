Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF79A6C09
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 16:59:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729277AbfICO7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 10:59:49 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:33303 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728576AbfICO7t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Sep 2019 10:59:49 -0400
Received: by mail-wm1-f65.google.com with SMTP id r17so243335wme.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2019 07:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CqMvdMuRx1qQHVU6PsmLAtqbm2AbeFoogKgqN4O+tSA=;
        b=f5zi/b698/9ce0EI/0V5aE6hF/KZbZrznmm772xUFPscWQ5AbEAsN04/9GLV4caC6C
         OU3jz7W+RqTX4V2EjDf//x+SAmuaXx/xoqARkHje20dPb6HeUlkBmuKNug4qdILB+w2w
         fKu7QYfe1O7EGsARq8M2/eZzbkcECKULQOllc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CqMvdMuRx1qQHVU6PsmLAtqbm2AbeFoogKgqN4O+tSA=;
        b=OOWEvgdqZhMI1oH2R02RVNCqh/Rm/cqRfPa64jHK8L5E6fMF79+115oyundcXQKqQI
         YLMYS2ZhlI6VdrXLWvzXY9Mm7B90V3ixqBp8Ea8TAxyO0UdhFY3hRp7x0Kvl7inGW3Ib
         +SzXTeS8bm6V7Ai40hhifUuoNPObe2YK1CPucIQaFBdfbj4yiv8X72shjuGG+lshbsdt
         v+hxY41Rm2e8QLHLKq7yQfwndtx/T2rU7KRG66WQdwcuEFWmbXWLv8klT9MFUUi3Tf/o
         NYdxcyXn1JvwStzCvYDKnjblZA8vqsOmNkE50QkHdBmySlAeOK45Y+hVFA9SfOdPfdQ5
         ztPg==
X-Gm-Message-State: APjAAAU04AKo72CZNF6wKC6IamnnGmjqFtAneBAhlfZfvD2GMbuYguG0
        Gf0+e0n3W4hqonhqXgHx75PJIwjdFYukHLeTGPHcOQ==
X-Google-Smtp-Source: APXvYqyMDrC72Rn8SGS9zV3V1JTPQD8z+XJgk2vmjSjqKrUk9al9ywXNHTlnAeCv+NEEzalejtMsFou6QtPU8/C8cNY=
X-Received: by 2002:a1c:eb0c:: with SMTP id j12mr565277wmh.132.1567522786724;
 Tue, 03 Sep 2019 07:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <1564568395-9980-1-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1564568395-9980-1-git-send-email-srinath.mannam@broadcom.com>
From:   Srinath Mannam <srinath.mannam@broadcom.com>
Date:   Tue, 3 Sep 2019 20:29:35 +0530
Message-ID: <CABe79T7=Kat6DjUDmOvfA79Ex0tzuU7ov4aoZodbeB=UO8DOZg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Reset xHCI port PHY on disconnect
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Linux USB List <linux-usb@vger.kernel.org>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mathias,

Could you please help to review this patch series?

Regards,
Srinath.

On Wed, Jul 31, 2019 at 3:50 PM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:
>
> This patch set adds a quirk in xHCI driver to reset PHY of xHCI port on
> its disconnect event.
>
> This patch set is based on Linux-5.2-rc4.
>
> Changes from v1:
>   - Addressed Mathias's comments
>     - Modified mapping of HC ports and their corresponding PHYs
>   - Addressed Rob's comments
>     - Removed usb-phy-port-reset DT property.
>     - Added quirk in platform data using HCI compatible string.
>   - Add phy ports in phy attr structure to have enabled ports bitmask.
>   - Modified #phy-cells of sr-phy to pass phy ports bitmask.
>
> Srinath Mannam (4):
>   phy: Add phy ports in attrs
>   dt-bindings: phy: Modify Stingray USB PHY #phy-cells
>   phy: sr-usb: Set phy ports
>   dt-bindings: usb-xhci: Add platform specific compatible for Stingray
>     xHCI
>   drivers: xhci: Add quirk to reset xHCI port PHY
>
>  .../devicetree/bindings/phy/brcm,stingray-usb-phy.txt | 14 ++++++++------
>  Documentation/devicetree/bindings/usb/usb-xhci.txt    |  1 +
>  drivers/phy/broadcom/phy-bcm-sr-usb.c                 |  9 ++++++++-
>  drivers/usb/core/hcd.c                                |  6 ++++++
>  drivers/usb/core/phy.c                                | 19 +++++++++++++++++++
>  drivers/usb/core/phy.h                                |  1 +
>  drivers/usb/host/xhci-plat.c                          | 10 ++++++++++
>  drivers/usb/host/xhci-plat.h                          |  1 +
>  drivers/usb/host/xhci-ring.c                          |  9 ++++++---
>  drivers/usb/host/xhci.h                               |  1 +
>  include/linux/phy/phy.h                               | 10 ++++++++++
>  include/linux/usb/hcd.h                               |  1 +
>  12 files changed, 72 insertions(+), 10 deletions(-)
>
> --
> 2.7.4
>
