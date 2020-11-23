Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07FC82C0BBA
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 14:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730529AbgKWN3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 08:29:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730508AbgKWM2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 07:28:53 -0500
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com [IPv6:2607:f8b0:4864:20::941])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E5A9C0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 04:28:53 -0800 (PST)
Received: by mail-ua1-x941.google.com with SMTP id q68so5596200uaq.3
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 04:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IMrDSBRZ+BrQ7IeHtOwZdwbcJ4Pv+oUEuoNbzrU6uKc=;
        b=Drj+eK7hkAME0UZZLujX/V8zmRw/3UY95f5P2X9PZV/s8n/74Mch82IWyPSn0ruL1j
         DFdQwzjxW+nBZFpvdc4eOkzxaa+Xfed/oAcYHGrQVUOGpjPfVASJtyQibLYPWCoNAocE
         lS+SvY5rkcTNDvQWJk0ui6mJ+3oYBBbLXhlDt8h7tuma6YNk8v0YZzOSfdv0DSVh1fHx
         KAKxUiFDqnPOoajBuMMoP3IBufZeBLIzG7Hz7nvqWP/5KsB03L82Rjzn/qQoB2a1iNGn
         h+NRt3ee3VO8Iumb/PsHka48vTgMWC0nkqIxEOrLluq/x6wW8dQ56Rt/VnVUnq2HK+2N
         aF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IMrDSBRZ+BrQ7IeHtOwZdwbcJ4Pv+oUEuoNbzrU6uKc=;
        b=hTO5EM1IJ4ouEudgKoC2IWwz8j4hkcn7DE8ReU+o7rO4W32S32Oom9oaTHgZZjdSJk
         GZcuKApuBKdWQxJOuSRsPTlDQ9/FLyFXYmdnt36QPaG18RXcjWI7pKB10Ngr4CWQm6G8
         oh2vaZ2oxccA5xGg+Ai2bsXs/K8ye2QaAznj2zwW5M44pPKRtOCxkCIY3bXNHr67SIbc
         onJ2TIstbeXf8DqFngIvu1kvGinTsyQMBMDKSsYgV4YiOExJmtkopBsz+gncxJcqOD6H
         rbetuJL1b18NOpWjmiH+nJL8n15jCKZ+TT7Vx4UpyOs6+WZl0A2xblPfJbuplebxYX/u
         ZqrA==
X-Gm-Message-State: AOAM531seNRURpg1LYoZuZYCokNDXmowaxohp9GVn22mESJwWwW1x10r
        RdQXGk/akm2D569Kogj1ELLGEjLVZXg+BmDBj7NA/Q==
X-Google-Smtp-Source: ABdhPJz7vYzOTV67myWhhRTgaBDXcXPu8RnLR6NqSvVbMutDb0CzrqOVlsiqjvhYCXdDOuMLfOtYC7kyyknGi09T8x0=
X-Received: by 2002:ab0:c12:: with SMTP id a18mr17291520uak.19.1606134532749;
 Mon, 23 Nov 2020 04:28:52 -0800 (PST)
MIME-Version: 1.0
References: <20201119125304.1279-1-aisheng.dong@nxp.com> <20201119131720.GA348129@kozik-lap>
 <AM6PR04MB49666B9100F4CE87E1AE23D680E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <20201119152535.GA386850@kozik-lap>
In-Reply-To: <20201119152535.GA386850@kozik-lap>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 23 Nov 2020 13:28:15 +0100
Message-ID: <CAPDyKFojf65BA40Ju3s8voOwHT0NU2wpcrnHuCfGrjPQMFwMKw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: imx: fix the wrongly dropped imx8qm
 compatible string
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Bough Chen <haibo.chen@nxp.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 at 16:25, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Nov 19, 2020 at 03:21:59PM +0000, Aisheng Dong wrote:
> > > From: Krzysztof Kozlowski <krzk@kernel.org>
> > > Sent: Thursday, November 19, 2020 9:17 PM
> > >
> > > On Thu, Nov 19, 2020 at 08:53:02PM +0800, Dong Aisheng wrote:
> > > > The compatible string "fsl,imx8qm-usdhc" was wrongly dropped in patch:
> > > > 80fd350b9590 ("dt-bindings: mmc: fsl-imx-esdhc: Fix i.MX 8 compatible
> > > > matching") Add it back.
> > >
> > > Although the compatible was dropped, by why wrongly? Please describe it.
> > > The compatible is nowhere to be found, it is not used.
> >
> > The DT patch using it is still under review. So we need it.

Where? Is there a corresponding update to the mmc driver?

>
> It looks like other patches here follow similar process of sending
> and applying dt-bindings separately from patches with users of these
> bindings. Please don't do it like this. Send the bindings as the first
> patch in the series implementing the users (so usually the series with
> driver and DTS changes). The new bindings then are applied by the
> driver subsystem maintainer.

Yep, I fully agree, that's the preferred approach.

Perhaps it's simply better if the series is reposted to linux-mmc
(including the DT doc).

Kind regards
Uffe
