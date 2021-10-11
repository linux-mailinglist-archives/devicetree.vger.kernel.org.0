Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA53B429360
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 17:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238212AbhJKPbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 11:31:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237765AbhJKPbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 11:31:36 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C25EC061570
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 08:29:36 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id kk10so13541841pjb.1
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 08:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k8atijS/+iEmLpEHHw2Pegmxv2DcWYYJPJdpIxxMix4=;
        b=Vrxtp+c7M+8e2l3FL7FJPO1v/t2Zq0exaMrNNv+5TwkIUrG2QTtOLJeTXjEfdETAnv
         qkUjEvy1FQFOXuIYp2Cg4PpYMXHuMOzqnkPxyxZQkyGV+sFRdT+87AkKARNHFpUDDr3m
         JarsmFyZlynYfm+fDz6wxY4Rn+2ln1cMFRod1OzI6YgPf8Y9dnUUVnRagOZTBEI+lZCB
         E07MGyR3xgt3XgHD7zQ+FgHqXdSgNZFlHcsxsw+VnMpa5hjE65b3BKGvZpQ4xUJ3zqRd
         2NyN8ZSL7zI9l3LU6hoOCnY5Y8QxHEdzSQmAl09ViavJWcCTNMWt7GP934culCU/0Gq1
         J0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k8atijS/+iEmLpEHHw2Pegmxv2DcWYYJPJdpIxxMix4=;
        b=cFmv6QfmNTNlovupL9+Mo3TBhl82+fOKhxv6Ch461joDzJR30Gfn4NB6ijuj0yjUyG
         C3Ua15nCm/qDHlmxhVSMh5VPsd0Ocht1YKNsrfZtr57jJLtv1oWOSk68kjV1R8EcXZae
         qPKFDVB+cSHQ393GSSnMpmIGrm/WKDa4vSH8J/8sPevVxmF88gBCFDo3gWxB48w0eAHg
         utlu4vT/CffbxhiwP6jL0lY3pD5g0Pm9tD1ftIvITc1ycZcVIvl7D4wBs+s15jK6jSQR
         T0lwqDtzcpXw0c4AngLDCcL0ospTAQJ6w6Rjt8h4EUv+D9h9765iC2Mn38Ry/NhKMaPl
         y7bg==
X-Gm-Message-State: AOAM533BoU2sbPBNf79MCGFE000FSHQZVtljqcjLGr/CAGjtSmtmK1qn
        8DElJsTFlr+4hc4E/qqbGqXU6XKkYH9HwJBin92NSQ==
X-Google-Smtp-Source: ABdhPJzCT79jpoEsIiK+BEe6D9q4lUZ8G6Lk7OpB6uQ1SPfMwLyjlWtWJh609WIls5YIP5wXqB9SVMOF70Iz3/n018k=
X-Received: by 2002:a17:90b:1e4b:: with SMTP id pi11mr31473637pjb.179.1633966175512;
 Mon, 11 Oct 2021 08:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210723204958.7186-1-tharvey@gateworks.com> <36070609-9f1f-00c8-ccf5-8ed7877b29da@pengutronix.de>
 <VI1PR04MB58533AF76EA4DFD8AD6CDA158CEC9@VI1PR04MB5853.eurprd04.prod.outlook.com>
 <CAJ+vNU1tgVsQWtxa0E8SArO=hA2K8OkqiSPrRSpx0Q5XS4gUWA@mail.gmail.com>
 <CAHCN7xLC1ob_nxRsZezgYQ9p-me7hNd+1MNFQt2wtcRqU+z9Sw@mail.gmail.com> <2eee557db84087acca4665603ba3d2716199f842.camel@pengutronix.de>
In-Reply-To: <2eee557db84087acca4665603ba3d2716199f842.camel@pengutronix.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 11 Oct 2021 08:29:24 -0700
Message-ID: <CAJ+vNU2MCV9oVru5wPqCMJUwAxHtS8ANv=K2kW4TryOGQXxybA@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add IMX8M Mini PCI support
To:     Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Adam Ford <aford173@gmail.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 11, 2021 at 5:30 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Adam,
>
> Am Montag, dem 11.10.2021 um 07:25 -0500 schrieb Adam Ford:
> > On Mon, Aug 16, 2021 at 10:45 AM Tim Harvey <tharvey@gateworks.com> wrote:
> > >
> > > On Thu, Jul 29, 2021 at 6:28 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:
> > > >
> > > > Hi Tim:
> > > > Just as Ahmad mentioned, Lucas had issue one patch-set to support i.MX8MM PCIe.
> > > > Some comments in the review cycle.
> > > > - One separate PHY driver should be used for i.MX8MM PCIe driver.
> > > > - Schema file should be used I think, otherwise the .txt file in the dt-binding.
> > > >
> > > > I'm preparing one patch-set, but it's relied on the yaml file exchanges and power-domain changes(block control and so on).
> > > > Up to now, I only walking on the first step, trying to exchange the dt-binding files to schema yaml file.
> > > >
> > > > Best Regards
> > > > Richard Zhu
> > >
> > > Richard / Ahmad,
> > >
> > > Thanks for your response - I did not see the series from Lucas. I will
> > > drop this and wait for him to complete his work.
> > >
> >
> > Tim,
> >
> > It appears that the power domain changes have been applied to Shawn's
> > for-next branch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/log/?h=for-next
> >
> > Is there any chance you could rebase and resend this series?
>
> This wasn't about the power domain series. I also tried to get i.MX8M
> PCIe upstream, but the feedback was that we need to split out the PHY
> functionality, Richard is currently working on this. There is no point
> in resending this series.
>

Lucas,

Thanks for the update.

Richard - please Cc me when you submit as I have several boards to
test IMX8MM PCI with, some with PCI bridges and some without.

Best regards,

Tim
