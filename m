Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E4C9137455
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2020 18:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726131AbgAJRFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jan 2020 12:05:47 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:43700 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726024AbgAJRFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jan 2020 12:05:47 -0500
Received: by mail-il1-f193.google.com with SMTP id v69so2294825ili.10
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2020 09:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P79x9K14eJzNJIAEvO9N1GVK52JW7FS8fTo6U5mtEGI=;
        b=vuQ7Q5FLfnHpT+uAZM9i8bVxaYqaOYNcjTqL+mC+WFQLramWqV11SGCpGk4scxDXsl
         OOJNnIjvLL5pysvLKUQRyHHFPTzOupZVsfHjkq2Ppd7ljF8jBzZeiikoYZQoD6iW9FGw
         dosDs78LvoZwWFZecyzdgLgY6F6E9DlJjeab6+7u4kdApiSww6GMWawGTRMjqBw3RG3r
         NMaD4wDpT+c5fTjmLqdfqUgiVoSv1uQMo8aHGaq0N+pQB34MJ2iGtn2WKw8EZJVcSvk8
         Prh6ApJC3nRKKyqqfkf8OwOwXDyaVqIC8sN9oJyO+9Ieq8BJdgHf+aRGSDngm4z56iDf
         Smtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P79x9K14eJzNJIAEvO9N1GVK52JW7FS8fTo6U5mtEGI=;
        b=VkVFoOxkUmvoneyr6U7juP5GwHzyJZp89Ya+mpmKAiiNzHOmB1AiKdBhN6tOqWDoq2
         Rcd0kMj8PXHqGS6eebZI+NxECC+WnS+IwiBepV/CvC6XEJeq3OXNfuRVb8bP8wo4DZxG
         KHPCOG15tOLKVVK4qfQ0CQIlaNALcIDxwo/QmUGj5yGsFmVdeyqfZpI9LPUfhfXDN3Eg
         Sdv5rNpZQDrfyomjBV7tE5T+nFgwNnquQiP7fBt15RX0yOMMOmpx2K70FvV0Rv6RCtck
         XDnUQFLxKjv5ZfTrhvRC1e3nrteyCTtaKypHtvXAnYIsYX5Sszt4VKQpKK6DHQDkpjWu
         NzTQ==
X-Gm-Message-State: APjAAAWOLHvCyWqtvYbD44j3BlqvgaJjUOuxVz0/UOIQmbl4qrRXgRgW
        V1v7Ua9A67Az2zUihDwxYLM0pb/i22uZIgrkosf7fg==
X-Google-Smtp-Source: APXvYqxPmWQR2WBHSl0G0RqnbscifyfX9p3jXXDhLckarRBifM62npqEJAFZKBt+I42Cfqt9FdgR8x/w9JFpVyJNXvo=
X-Received: by 2002:a92:1711:: with SMTP id u17mr3529002ill.72.1578675946291;
 Fri, 10 Jan 2020 09:05:46 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com> <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
From:   Olof Johansson <olof@lixom.net>
Date:   Fri, 10 Jan 2020 09:05:35 -0800
Message-ID: <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     "Z.q. Hou" <zhiqiang.hou@nxp.com>,
        "bhelgaas@google.com" <bhelgaas@google.com>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
        Leo Li <leoyang.li@nxp.com>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "andrew.murray@arm.com" <andrew.murray@arm.com>,
        Mingkai Hu <mingkai.hu@nxp.com>,
        "M.h. Lian" <minghuan.lian@nxp.com>,
        Xiaowei Bao <xiaowei.bao@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 10, 2020 at 7:33 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Tue, Dec 17, 2019 at 02:50:15AM +0000, Z.q. Hou wrote:
> > Hi Lorenzo,
> >
> > The v9 patches have addressed the comments from Andrew, and it has
> > been dried about 1 month, can you help to apply them?
>
> We shall have a look beginning of next week, sorry for the delay
> in getting back to you.

Note that the patch set no longer applies since the refactorings
conflict with new development by others.

Zhiqiang, can you rebase and post a new version of the patch set?


-Olof
