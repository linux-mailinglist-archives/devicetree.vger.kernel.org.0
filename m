Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D01A216C94
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2020 14:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727995AbgGGMNv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jul 2020 08:13:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727981AbgGGMNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jul 2020 08:13:50 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22EB9C061755
        for <devicetree@vger.kernel.org>; Tue,  7 Jul 2020 05:13:49 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id q4so13882352lji.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2020 05:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vRs0vqTtcKOe6iuhTaAboQBZmkr/ZAx4R+4R2j3NA1g=;
        b=LnRTG/fz9Nxmgx3Uqr8/fpbZvF0cKzCLrfWVPVvaZjetMKZRFv0PpATNgAdxq5rCh1
         +8rfonIDDbWIo4CDoE9g8YmLX2N5I/fjgLHJHkFz5/x67aU1VULXZOhYOZ3CyU9vSBAE
         P7S9O788Mrq33sy/2A+9BvfshrX8OZ+/uL+WnQ9dNIxbAmeBXv3Gy4XWAlWBc6v1sDwc
         kt2j7A1vhTiUTaRuiHGsX2uGZTi3rnkyRIcLrFw9YMwX4a89bUJAHlBzUYLnNlKUCI7c
         KaHdwn9yqqoIcQYYlb/aP59fbD2Yzmo9MN/zM+jUootXWfCI42hrjWCdjGOMW937kVDp
         faZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vRs0vqTtcKOe6iuhTaAboQBZmkr/ZAx4R+4R2j3NA1g=;
        b=ewVIOTV7MnsrJHGDO2HxLg0G9burWS24fZGPgv4l2Nh6NUMUe+pnKGNA6yDN/dFlLm
         WhLdkZ4LIEJaT3h8Z+55Uxd2RzV5RBRYqjmLwHeWODjByPt7JI2PZkaPqhowyKZUAQb2
         l8WkPZqOtNWthOyGjUBeyhlWvL7FiYXAaKgSRHEBdvpp07rjmHxdt0qHu4Dl6il/0ri/
         wr3L6zdORyXwvc8Be7JQsB7u/azwajp6sz7zDeCDPnAdy8cFje6xhSEn5XL+y46HVa9V
         syIscJj6bOuMEafiUJB3JF/OeiAfRq6RCUaqSGitXDOcuqSEC8oFGlPQc2mjFQc8q29T
         wkzA==
X-Gm-Message-State: AOAM531eyfxkPqZTj8mFbJ/CjaIHUfTXizTJBbgRaR/s+KcO5GA88Gru
        591ECoWXCH4h51d5mdEDIUtOmcKK9KfNaI+w/8LBYaeTd2E=
X-Google-Smtp-Source: ABdhPJxn4RD6igqlSvsQriRUqPOYS7HAyKnmJnFCx8cmJ+6yrCVZFhGvTAd2kb0QKf1EVcZFaZUhK3eZAqgv5UZbqOI=
X-Received: by 2002:a05:651c:1291:: with SMTP id 17mr28931353ljc.286.1594124027598;
 Tue, 07 Jul 2020 05:13:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200622083432.1491715-1-lee.jones@linaro.org> <CACRpkdbco3Us2aFS7bXj=W2dPK3-KRonix1dPcGariLptUsLJA@mail.gmail.com>
In-Reply-To: <CACRpkdbco3Us2aFS7bXj=W2dPK3-KRonix1dPcGariLptUsLJA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Jul 2020 14:13:36 +0200
Message-ID: <CACRpkdbfHw5SOYa8K-7CAq_tkYZ7bRL=nnQZH9O35QmbmTFqeg@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: ux500: Supply nodes for the other 2 AB8500
 PWM devices
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 7, 2020 at 2:11 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Mon, Jun 22, 2020 at 10:34 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> > As per 'struct mfd_cell ab8500_devs[]' there are not 1, but 3 PWM
> > devices on the AB8500.  Until now, each of them have referenced
> > the same Device Tree node.  This change ensures each device has
> > their own.
> >
> > Due to recent `dtc` checks [0], nodes cannot share the same node
> > name, so we are forced to rename the affected nodes by appending
> > their associated numeric 'bank ID'.
> >
> > [0] ste-ab8500.dtsi:210.16-214.7: ERROR (duplicate_node_names):
> >       /soc/prcmu@80157000/ab8500/ab8500-pwm: Duplicate node name
> >
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
>
> Patch applied!

BTW shouldn't we also patch ste-ab8505.dts?

Yours,
Linus Walleij
