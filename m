Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8419DF1D
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 09:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727138AbfH0HvB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 03:51:01 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:43541 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbfH0HvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 03:51:01 -0400
Received: by mail-lj1-f194.google.com with SMTP id h15so17509457ljg.10
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 00:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L9Zh3GrxMUIZygrm/sqB7uRawwKNOmPmv1C0mbC/aHs=;
        b=kAEowIBMqlOiQbXMCtXM6absLiz1V6Xiyw3B8NCBPEyEmirQQBDYiTQF8BY1AjPNsg
         arEECZFILxQqVnSBMFJU2lh4X0rJrrloauZLDPGRtdSx/GjuYl11BxWuWVmaHqKzRaia
         VvhBh4LM6zfMEAj4YoCbxnraby9WnHWRZitbl3UkiwtvUtG1lgiAnGQ8P4MEenhW6Ydy
         KSi/3aZ/0MsCZmNqZsjgbUhNsvlczfuL7mAEea7kjx6IUii6bBJiMN1x4FPTZmo31HUY
         1Rlb4wv6essdGhd5GfH1gx4e7uVdK755ydDcInQ2qBo/sTLj7cD+i/qknk/XVsioj90Y
         N9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L9Zh3GrxMUIZygrm/sqB7uRawwKNOmPmv1C0mbC/aHs=;
        b=qEXsjQWUQATOqnHNxfBJBH4TSb7Afgz+UYfddW06EBNU94FPzFfeE/fgBW4ulzMzXx
         N9Ko40er9xcYA9uHP/yuwkUFE0ks96JP9xZQQ6k9T/H7UDjT0RbkOsqakmu8ARLuv5Cg
         sDvoJ0Y5S+7QWk1qoi+f0MwA4kBJLYL7aeyVBL94TiIVMBwSnNBajwm2zNLXb5NYkjqi
         WFNQle9XF95lvDbyG52lTwWiV+7SrKMC5t2/PC8OMHsXc7X6oOCtfyZypjPa2zqWJg0v
         bGKl4h5wjBAc1r7tgfwAEA00acr8HUI7DhGriQCgH44NmXvc3Q7CJRLCK5tFR/dJrDQm
         AYNA==
X-Gm-Message-State: APjAAAVheXT8rm4XHv1wqg2hLppulaHgj/jLne5WbNe3mwjlLo3zHP7e
        dKYMRVV7VNnInU4tkA+ZfA5jsdOPXQbBjUqPP+AnkQ==
X-Google-Smtp-Source: APXvYqzvGbIyA3LLknq2G4rbQ5Q7mx7t5yXqkOE+0yokVI69BeNEdJn00m2LbQgCn4KXb7+dQBM1CRBb9cVJArd4arA=
X-Received: by 2002:a05:651c:28c:: with SMTP id b12mr13180755ljo.69.1566892259461;
 Tue, 27 Aug 2019 00:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
 <20190814143457.664b04c8@windsurf.home> <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
 <20190824133317.371dec4f@xps13>
In-Reply-To: <20190824133317.371dec4f@xps13>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 27 Aug 2019 09:50:47 +0200
Message-ID: <CACRpkdZ+zSCSc9Q40=_+K0kfZ4evuOTAShVYWYvuSeOfgkxZng@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Yan Markman <ymarkman@marvell.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 24, 2019 at 1:33 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> Linus Walleij <linus.walleij@linaro.org> wrote on Thu, 15 Aug 2019

> > OK then maybe I am a bit impatient.
>
> Actually Gregory is on vacation until September, so if we still are in
> time for this merge window I suppose you can take it.

OK I applied the patches.

If someone is upset we can always revert them in the -rc phase.

Yours,
Linus Walleij
