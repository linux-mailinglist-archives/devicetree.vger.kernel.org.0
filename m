Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EBA602FA7B
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 12:46:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726527AbfE3KqF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 06:46:05 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:34729 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726768AbfE3KqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 06:46:04 -0400
Received: by mail-lf1-f65.google.com with SMTP id v18so4651281lfi.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 03:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FdyLDySyY2SfWb2BuTzN6z4FCYV5XabX9rJWqR8bNUo=;
        b=dH4UjsVPdRxIrhyFCWNDyKaIpXukZkvi4I4GP/2IQSxsiAe0eaPC6XdSkLv4NRZ3hb
         I+vouiLDA22w6rl2t9eKwt8BemL7XWPQEb7AB1rNTPZ6OQ5yc8dRW0oN14V+EPAH+vwg
         pAJBiYG1dcdfsbmE5MGGnzmfIGuW6XzJbhTi7vVH+4tLZn1cBOxIl2SEnsM7XHLR4vPi
         CX2xpKPLSFXEJN/8RxYldcfIWpG+QZewkznMcvBGfl2vyiUbFIRmdrRlTE6NwIrXX16w
         VxLTi/zD3RUPHvjfMNAu7lnhqivZxxFcwMLX18VckKwGGBsdKSv5pU4cr632quMPVhfc
         9RiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FdyLDySyY2SfWb2BuTzN6z4FCYV5XabX9rJWqR8bNUo=;
        b=Hg4kZY7BpE8KancEzVfdvMrZA+1jLtC7udIORmoR4FCxJ8MA+7wPfeO8EJUKnLkuH1
         z37IeAWMSw7RAvjq7eUBuKnHdWfmCCZkm7dcyLxkiYiaUkXaikCk0eYx8UU793A9gURl
         gi36wf913xTijc6DzD+ZpPZcLLL3DuFfebzp0URXD8xLCYAwmRIzQUCG4vL5JJqdO28L
         BNejiwhsmuovS4uhe100A7XlWYqWLRzK8JoMeLKzpHFdK44AOKeEJbu9WsO4+vOqycAm
         oSLCh70Z3wH0lC8jaXpxsXHF4EtzwwR3KDOK/JJXMrhjrlll7i5r24f55A/P1NiFSbXg
         oGzw==
X-Gm-Message-State: APjAAAXCc+xoaAX9oFkQgA4I/rbkqGdU+GqE6xrM2j76oRF3sePj63hz
        pdTpy+4xgfiBvvRbiz0x6CaBknLIWbPOx6avJewpZg==
X-Google-Smtp-Source: APXvYqwoiY05tkLHHnJ2HYytNusIfN5SM0hIi0igtjTMShzhp4Mv+LI9yhd+aacV+lEOVqWj45vv9O6aNLEknR4ze68=
X-Received: by 2002:a19:7616:: with SMTP id c22mr1769026lff.115.1559213162732;
 Thu, 30 May 2019 03:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190530091156.11693-1-sudeep.holla@arm.com>
In-Reply-To: <20190530091156.11693-1-sudeep.holla@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 May 2019 12:45:52 +0200
Message-ID: <CACRpkdZi3GPjkzyPAXBx2Ffc7DbgLfVhxpBW2q+iMWV5Rfz_4g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vexpress: set the right partition type for NOR flash
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> We should set up the partitions in the right way so we will find out
> what is in the flash.
>
> The ARM Firmware Suite now has its own compatible and proper device
> tree bindings to trigger discovery of the flash contents, and Linux
> supports handling the new type of AFS partitions.
>
> Based on commit 7f8e78ca90e2 ("arm64: dts: juno: set the right partition
> type for NOR flash")
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for fixing this!

Yours,
Linus Walleij
