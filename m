Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A49B23B0CE
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 01:15:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729073AbgHCXO5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 19:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728891AbgHCXO4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 19:14:56 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A124BC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 16:14:54 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id w25so6042154ljo.12
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 16:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6sO5NzAYzF4Z7+StBc9QAjAlFS3zl2TpvbmSdZORkr8=;
        b=z3mDxFDCffCJcrBtd6tleopU1TkWZh7aIf5piB4S6ZbAN4vshkNGE2uM8a3EpXbNw2
         HDWKYIpfNu08ks/wAhjJSp/LvJimjZefCuNgsgnSMeyIewJMkiVXVxlX1xNqy8nLNG5Z
         NZmAtEMJGfoAAevVfsdO9E0grGTjgzgApZbQN/+ur1qVthzIYml5wMagKednsOFsUhq1
         iJ0sYxcMy14YYfnn8VyWp6+fJEqD/bVjN42PLNqDOIHSF32IYu2qFDAZzxld/8gehaDt
         Sn4/sNIROdjyaznE3SLVg3ig4zJCGvDYOp4HLpu9rrDt5UbbfP9UwP0ai6yMdSdg+VRG
         fulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6sO5NzAYzF4Z7+StBc9QAjAlFS3zl2TpvbmSdZORkr8=;
        b=Ah5KN3Y2EIlqWGR7IYj8eSShpPDFY4uPX+9nSR1Ia/jkN5H8GiVt8Wq6h0g096qraT
         HG8w9QvwTnLDYMGLeCDLz9DqRLOp7N44Bge9WQhMTLjJC67rjmo94teZdtdIcj4Vh3iE
         Hw7J4krvZbIjRphnWVK7nkTf5l+z6eXCqIk+CCFqbz2qoax6VuH1dLaYrpaEwW54cQPf
         U01ikTMt7fxxTbccptLk578ZWG5ljLNCvOnThSrDgEBvo4UGXoegMhNoaysraLx/2kLj
         BDrbWvm1g9j2bvWx3gBDmnKX1E4ip/k3dGt5R8XaPXZksG1Ge6iMK+B+afbol7p1X4c5
         am/w==
X-Gm-Message-State: AOAM533ygtxSVGG1ns0o/ZuCSIX6DlIcWej5SKdP1Pg2GpP6/Jddz1/L
        F+bGfW6S73YFabCjQL8X7E513IJAFKM8u4+eORvGjQ==
X-Google-Smtp-Source: ABdhPJyxwO/dplsY1goNzKqNCb1LxmqZzJk7lXk1oGBimGh1jlNZw3ndPPcXRNzyk/QX4Qc7VgsDZWF1sNLM37sXc88=
X-Received: by 2002:a2e:90e:: with SMTP id 14mr9048672ljj.293.1596496492990;
 Mon, 03 Aug 2020 16:14:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200722153146.8767-1-dmurphy@ti.com> <20200722153146.8767-4-dmurphy@ti.com>
In-Reply-To: <20200722153146.8767-4-dmurphy@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Aug 2020 01:14:42 +0200
Message-ID: <CACRpkdYGvPfHoEeTPs5R1wt4SzW0KVRxmwu_QEfLD99X_6f=zA@mail.gmail.com>
Subject: Re: [PATCH v32 3/6] ARM: defconfig: u8500: Add LP55XX_COMMON config flag
To:     Dan Murphy <dmurphy@ti.com>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 22, 2020 at 5:32 PM Dan Murphy <dmurphy@ti.com> wrote:

> The dependencies for the LP55XX LED drivers have been updated so that
> the child devices (i.e. LP5521) now depends on the LP55XX_COMMON config
> flag as opposed to the device selecting the LP55XX_COMMON flag.  The
> LP55XX_COMMON needs to be set in the defconfig.
>
> Signed-off-by: Dan Murphy <dmurphy@ti.com>

OK then I guess you have good reasons to have it like this.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
