Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7155841900B
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 09:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233197AbhI0Hg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 03:36:56 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:55942
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233165AbhI0Hgy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 03:36:54 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EE87040760
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 07:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632728110;
        bh=QW1BragpkRXGqpPQtCbMT32Uw58ORtzOcZAUH+jmJDY=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=sZMy6TRH+rXo69dNo6e3tns/3LrukOwbOAbi2XL/7DVKJLxZJkY9qTtszb0ppqTNp
         y/TX1ZLDcPw/2eLMRMzk41/z6o78zSeh1Uf6hXCo0yIWmQEV+KBjR+SNMgm0W2hlYY
         0CRlbP+uhPfNPulZP33djzxlXwDAXbC+YusCkdWFV7NAprC5Ij7gkEnWJ4ZK65iby9
         S3wuZJ+VhslNzDLCL5H8RMtDZqMpnxN0JE1MCWAoMryaNaYE5kOYKwjBlNQwF50sUE
         e4FdsB6B840ez1GagtCZs8F8Vfc71eYQJfPTO/YyuPdFzoPtxIhYjEdxfb/ZrX2yps
         s2O+XGd0rdgOQ==
Received: by mail-ed1-f71.google.com with SMTP id d11-20020a50cd4b000000b003da63711a8aso4838445edj.20
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 00:35:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QW1BragpkRXGqpPQtCbMT32Uw58ORtzOcZAUH+jmJDY=;
        b=tS+5WkoLcr5DT//yS7Ocky91fZbiPkcCodFCQZIDiCHb0uLTUHaH65l7BwSoc9LTvn
         le5M9AXqLUnuW7MYgjfHv/lsCRUYPeaf3reZONDfyB67vYfpqaBcGWTLBUUVEf1gEltw
         9aXPh2ZjhhFmZtFskhjxnqdrHW3HpKdEevq/jFV30APGLocsJw7rChIeGc13sOP7UGZt
         gbTcJa7IhxqzkR4zF9KKycaqa5ItkgzZom9DO6T1oq8+W7sS6UzH6r4K9DET146uSLYT
         FjnpVKtj+5kYbvJclAlwMuSzA8TQqbH/KeQ5Yr0gbd6M+b5MU5/aPg6oYqxO2pPALWTh
         PPTQ==
X-Gm-Message-State: AOAM531RO6i9bH2nDHK2lZlbyR6k2wkT2F8XySIsXyJ0GMH36X9yfGvD
        XPvWikx2tc1+j1775rbJxNLs2t6iTzppHPbYqGD444LkJqkUcKxnSEp0uLrUxH3qiRd6CXvlWBM
        ganBm24HlBtJYoXnHJYm5oLGS3jaXa/8HE2k5g3Co64b7TKHcRkLHEl8=
X-Received: by 2002:a05:6402:21eb:: with SMTP id ce11mr6169678edb.153.1632728108029;
        Mon, 27 Sep 2021 00:35:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJw4wrJGwWTTWYy7m6jHnl15+/MkdfpdVxqxe1RSoKdBcPdtYUwYT3UnN/VqD+B1h1FwqdsxpK7taJ7DhKZqQ=
X-Received: by 2002:a05:6402:21eb:: with SMTP id ce11mr6169667edb.153.1632728107888;
 Mon, 27 Sep 2021 00:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210924091439.2561931-1-andreas@kemnade.info>
 <20210924091439.2561931-5-andreas@kemnade.info> <a5ec87f2-7e72-9c23-e13a-75498287b451@pengutronix.de>
 <20210926203314.7c187191@aktux>
In-Reply-To: <20210926203314.7c187191@aktux>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Mon, 27 Sep 2021 09:34:57 +0200
Message-ID: <CA+Eumj50L-bbVBX99Q-6y1-o_R58JvJFsStck+O2-18qJSUT1g@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: dts: imx6sl: fix mmc compatibles
To:     Andreas Kemnade <andreas@kemnade.info>
Cc:     Ahmad Fatoum <a.fatoum@pengutronix.de>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lucas Stach <lst@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 26 Sept 2021 at 20:33, Andreas Kemnade <andreas@kemnade.info> wrote:
>
> Hi Ahmad,
>
> On Sun, 26 Sep 2021 08:54:35 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> > Hello Andreas,
> >
> > On 24.09.21 11:14, Andreas Kemnade wrote:
> > > Binding specification only allows one compatible here.
> >
> > This same change was NACKed by Lucas here:
> > https://lore.kernel.org/linux-devicetree/72e1194e10ccb4f87aed96265114f0963e805092.camel@pengutronix.de/
> >
> > I also think the schema should be fixed instead.
> >
> well, that argumentation makes sense. Feel free to drop this patch. I
> will not repost the series if it is just about dropping patches.

The argument of using a new DTB with an old kernel, therefore
prohibiting changes in new DTB, does not make that much sense, except
when caring about other systems which would like to directly reuse the
DTB... anyway it's not that important to fight over it.

Best regards,
Krzysztof
