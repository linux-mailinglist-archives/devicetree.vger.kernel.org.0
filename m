Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1389A9F3D3
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 22:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731001AbfH0UMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 16:12:50 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:37921 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728233AbfH0UMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 16:12:50 -0400
Received: by mail-qt1-f194.google.com with SMTP id q64so358023qtd.5
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 13:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Le7/DPty+666pMSSFBSolUxx7aiRXx8yMy4J1BfqBIQ=;
        b=khzN1WCc/Ap3eg9LoZjxQfszKdGqKsflWjiUYBi1oI9XlbIxsNQxFoS9D97g8uu22G
         KfUZwHVCZW8BVVD8RH7CXmpV27gBzAMfexGjaMHBQMb/w3mJmLlxkG8pjMIp9uwPyRmW
         h8rpOOUmB9a3YctwbrKtEgUx03Gf/r4Iyldck3YmDO87jNVwIfoo6H16fFhbnqdGTgQU
         qDEYBipYjw0FfELK8AVa3jPpv8PQB1ouKTN2zNasoDoPQRhUzEBEm/b1DyQN3MR4+E/+
         DclNRaIbhJqM8K7jXXuGz0tqGxvN1vXEzhw9JN4Sk81WuyM6y3gh/99LH7oLVu9/kLCg
         eVUQ==
X-Gm-Message-State: APjAAAUA6bFQH3ANINMu63wWh/t3fEJ078uJpSWZA5JNmLJEqBRALMbd
        vPQxFO19I4EWJ6c7AT5gGE2gsvLVaQNnRI9TUKwpWoGk
X-Google-Smtp-Source: APXvYqyEurgHAvSLKroxFOuP9U5ayE6Ghq9iJgArGFYndN0YDBGMpGHoMWmlrrisgnTI8voyhgeUAwkLXq8DOartowY=
X-Received: by 2002:aed:3363:: with SMTP id u90mr689168qtd.7.1566936769088;
 Tue, 27 Aug 2019 13:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au> <20190821055530.8720-8-joel@jms.id.au>
 <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com> <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
In-Reply-To: <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 27 Aug 2019 22:12:33 +0200
Message-ID: <CAK8P3a1Dgzrw7nuQR_YJYXSF7Owop2Hpd80bAL0OPhzHMHcbPg@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
To:     Joel Stanley <joel@jms.id.au>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 22, 2019 at 6:43 AM Joel Stanley <joel@jms.id.au> wrote:
>
> On Thu, 22 Aug 2019 at 02:07, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > +CONFIG_MMC=y
> > > +CONFIG_MMC_SDHCI=y
> > > +CONFIG_MMC_SDHCI_PLTFM=y
> > > +CONFIG_MMC_SDHCI_OF_ASPEED=y
> >
> > The patches haven't yet been applied to the MMC tree, maybe we should
> > add this later?
>
> When enabling drivers in the same merge window as they go into the
> tree we will always be in this situation.
>
> If the driver doesn't make it in this merge window, or first has has
> changes, the worst that will happen is the kconfig name changes and I
> need to update it later. I think we're safe to include it as-is.

Yes, that's fine.

Please also enable all the drivers you need in multi_v7_defconfig
now, preferably as loadable modules.


      Arnd
