Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F3540526BF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 10:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728309AbfFYIfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 04:35:34 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:33912 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726702AbfFYIfe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 04:35:34 -0400
Received: by mail-lf1-f65.google.com with SMTP id y198so12026870lfa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 01:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dk5hrs4C1tt/nglJSF3HRfZ1Bert/xei53XsDQtZv3U=;
        b=RJvMZ0xf0FFZturrGj3s8PD+dfTywtJeBO4V1p/DJyCQhQluUkFNKj08X91XvfwrJz
         LYTzGaCoqmE8kPTb/FJMJhMTMPB1Q1j0T7j9lwCyYuGYBX6KfVSuZC9k7UjZhIQ4YUzf
         Zzpe29mDXFXQjNGSPoelt2iWqCLm6UpMYgdCeoFj15fxzCaDsX4lsBug5NKZmS8x4lkF
         /oFtdAD2gyPlgBWu5ETHYX3IVyBg/2IUZcgY9dDvxlY6Id8TKd7JvCTqHbHu5GQ7xIZI
         ShCMiXk0NN3dKb4x2CHymD/nE+NsnXo1uivxDiLAMY9dab4IM1SrDQP0F95S2Z2zhQSr
         gKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dk5hrs4C1tt/nglJSF3HRfZ1Bert/xei53XsDQtZv3U=;
        b=AePPICHRaipMFmeLn7zc0os+da6dGmEQWJeqv1TGUvckT9tFHCXVbdoCo8OzQEx9E2
         cl1wOJweDb5CdbWw0HJ55wM2nvveb5jrQn7y042TNmYtuyvIKgJFlq6bKFJNr3RSTLQy
         BTDHLpKtw2A61CdocuIrrchLPrQNva/F9gTP3i6KPO6ztVItL3Hhk13osn13hLiq0rlK
         ckJ41Bn5kTlDr2g6lKYKpxSAPpLMvaFFseMfYjx6toNnJTX7dj8mEjW4Ltq20QQbmfDE
         qscrAf5rOdgYBNyQ96Q73twf9CX66v2gdLyUYG2ruBcpj6QSIqeasTsjQudk291rkL+X
         vQzQ==
X-Gm-Message-State: APjAAAXCQfreIDm3VpixCx1qEsleYl84q+ceFh7L9NX5MJJwuUH8L3Wn
        xMo1GuBRzcjLKzQjis/8qZCfpB1HUPQm3B5YtNkleQ==
X-Google-Smtp-Source: APXvYqzjF2ta5Anb3SRj80V5eALP3RJBskJMY6xQfTjbjhnPfmrbwahJYk02lH0NXADJ1BXJc7sI0CSzU2xDanIpddo=
X-Received: by 2002:ac2:446b:: with SMTP id y11mr73052242lfl.158.1561451732515;
 Tue, 25 Jun 2019 01:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <1561375453-3135-1-git-send-email-yash.shah@sifive.com> <alpine.DEB.2.21.9999.1906241421550.22820@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906241421550.22820@viisi.sifive.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Tue, 25 Jun 2019 14:04:56 +0530
Message-ID: <CAJ2_jOFaS4ZU4m8sE0SFM0sL32Q8fUbg9jbRoEKHU1U2Zqp3YQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Re-organize SPI DT nodes
To:     Paul Walmsley <paul.walmsley@sifive.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 25, 2019 at 2:53 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Mon, 24 Jun 2019, Yash Shah wrote:
>
> > As per the General convention, define only device DT node in SOC DTSi
> > file with status = "disabled" and enable device in Board DTS file with
> > status = "okay"
> >
> > Reported-by: Anup Patel <anup@brainfault.org>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>
> This is a good start, but should also cover the other I/O devices in the
> chip DT file.  The mandatory internal devices, like the PRCI and PLIC, can
> stay the way they are.

Ok, I will send another patch which will cover the other I/O devices
as well.  Please ignore this patch.

- Yash

>
>
> - Paul
