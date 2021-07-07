Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4FA3BE351
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 08:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbhGGG5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 02:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230305AbhGGG5M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 02:57:12 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC961C061762
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 23:54:31 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id g10so1080855wmh.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 23:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tUE8wev4VkWfjOiCPCyu/GqgRwGG7gs7uHBEzTIZe3c=;
        b=HO5A4MDpkx13VC3Yw2cptgr73MkV2G5xH8GcIHQMD2ep1iOn3CS8VoF9o3sz43+71+
         +R3aWRgRdYsGc6k3/64PPRrYJD21oDybN4rqEhpKo01JhMlzSsZO7a8AA9DtJ2BXuujx
         c0clc8S636KiUYaSY0FYeM3+kPfaJyglcf4WULX91rK5G+Ro3gKLyhZetCrXWUeVW75Q
         9BgGYbV10cmt9K9NMzE3gPVjlh5YklXD5+L+dtzEhOS+JPnIYcUslFn69z82ZRbmriW1
         ljQbYX9t34JqSYy11CaSfLUYiyr0FBIn0f9gUvE74yfUhGspGvfKQP7V9EeJRc8IrIQb
         0ZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tUE8wev4VkWfjOiCPCyu/GqgRwGG7gs7uHBEzTIZe3c=;
        b=glHeD17jr/8W8GiQLFKEEP8NJEflExqVrXR4rBa/zCWcbIuiud46snd+mNkiRGWEDn
         FpPaDPA1FLP3sPjhWhfXEejy5eO2BcMIhj694LSU7YkXxxLsZqSVUDervwmasUxJYtpB
         hG70WhqnQfyeea5gTwDnr3mmkenmQK4Thfj/5D25SISD90nHf6mfXDmsRVJB8iKQ4QSd
         hq6LwWL6ib29WWQPHpcNt/m9Mqw0dM5XnHmu4/epcaR8fPhkz/4cxVbPIHweHVw90yku
         Yki65jd+K2Vl7r+mXI1gT2CM2WWnuLQgSxcOKh0YQNobfbhjlGMPX/hQ0EOqhcvskOK7
         Y/ZA==
X-Gm-Message-State: AOAM533Mw3lvN3RLtoRa5xv/fPLJ7zjUr27c2VKPYDNo0V32cU3Uy/px
        05UvVbCWNgCGyFW4ev4FEe1ucJ12kC9RFyPrQrYaVw==
X-Google-Smtp-Source: ABdhPJystGdZsA+nB5gQafyHzssXeyJUm/HUE9cWQIs/s/XU88ED35qV7XIB+cBbpx80emEOfYRUo2JXYOLR4W96FtE=
X-Received: by 2002:a7b:ce82:: with SMTP id q2mr4888352wmj.60.1625640870431;
 Tue, 06 Jul 2021 23:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210616103649.2662395-1-jens.wiklander@linaro.org>
 <CAFA6WYMrxNfR09doWQgYKCQSYKyUMVKqSTPuRYn=-nueY9pSvQ@mail.gmail.com>
 <CAHUa44EeAENHv+CxtXeLuqX_NGWW6w-6P8D-BLsb69+XmGaqEQ@mail.gmail.com>
 <CAFA6WYMSAM2MDOXnhjuZFov3BtF8-nihZRUpR8ciUWsL4_nCWA@mail.gmail.com>
 <87czrv91b2.wl-maz@kernel.org> <CAFA6WYPVA5yP3trumfz=_oXzxKtfobQXRzDwZ1og8UXwaA1rkQ@mail.gmail.com>
 <87a6mz8vaj.wl-maz@kernel.org> <CAFA6WYMsjxYBw_0xzWMtHf=LtXzG+D113WSFuHCR7KhC1RuWYg@mail.gmail.com>
In-Reply-To: <CAFA6WYMsjxYBw_0xzWMtHf=LtXzG+D113WSFuHCR7KhC1RuWYg@mail.gmail.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Wed, 7 Jul 2021 08:54:19 +0200
Message-ID: <CAHUa44GEPDYj6A9jOB8sHbbs_mSk1oiREywP6Z8s0vOhbpajpw@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Asynchronous notifications from secure world
To:     Sumit Garg <sumit.garg@linaro.org>
Cc:     Marc Zyngier <maz@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        OP-TEE TrustedFirmware <op-tee@lists.trustedfirmware.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Jerome Forissier <jerome@forissier.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 7, 2021 at 7:52 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Tue, 6 Jul 2021 at 18:16, Marc Zyngier <maz@kernel.org> wrote:
> >
[snip]
> > > > - Is there any case where you would instead need a level interrupt
> > > >   (which a SGI cannot provide)?
> > >
> > > I think SGI should be sufficient to suffice OP-TEE notifications use-case.
> >
> > I don't care about OP-TEE. If you are proposing a contract between S
> > and NS, it has to be TEE and OS independent. That's how the
> > architecture works.
> >
>
> Agree, here we are not proposing a common contract among the S and NS
> world that every TEE (based on Arm TrustZone) will use to communicate
> with REE (Linux in our case) but rather an OP-TEE specific
> notifications feature that is built on top of OP-TEE specific ABIs.
>
> And I can see your arguments coming from an FFA perspective but there
> are platforms like the ones based on Armv7 which don't support FFA
> ABI. Maybe Jens can elaborate how this feature will fit in when FFA
> comes into picture?

OP-TEE has one official ABI at the moment, the SMC based one. It's
about to get another one based on FF-A instead. The two ABIs will
never be used at the same time. It's a build time option for the
OP-TEE firmware to either use SMC or FF-A based communication.

The patches I've posted here concern the SMC based ABI. Asynchronous
notification in OP-TEE with a FF-A based ABI will use the notification
framework provided by FF-A instead to implement that counterpart
provided by these patches. So the OP-TEE driver here in the kernel
will use the FF-A framework in the kernel instead of registering an
interrupt handler directly.

Cheers,
Jens
