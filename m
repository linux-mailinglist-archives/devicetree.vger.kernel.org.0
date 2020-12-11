Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C30F2D825C
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 23:52:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436821AbgLKWvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 17:51:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436805AbgLKWuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 17:50:32 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 362E6C0613D6
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 14:49:52 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id e7so12707571ljg.10
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 14:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k4y03X5if1XIhZgssDAUjs/+vQ6RWHpZk2UmwYGGdtw=;
        b=Lgz9+bDaROIZRHfMTHXdH02ksShuIHLBdWEE3m7Z3+nTP5vQlCvWN5lTi4R5sjYGKE
         5OeA8pmSioO7Lf5GNsQ6IkY4uhk51xMqgr39ddarToj/0XCF1IPQqQpsWZn0jEgP4LTy
         fOhXNMdtRMyAn+Prb4z7l2fwhKKNM8B5w6Y8e4nzRUVE6du9II6n1Ibi2o3CkPMUB6Cl
         KCD36GL9lzsks/yIqOOCjM1W7EE7QP+OBrpRTH83ZNFOSnptwoRF3gEMtHO/mvD0FtKF
         3kydZvQ7+UJgks5LYFrkBCAKH7I9eFS9DtTusR0z11e1EGaK8B0w8akPkOXe2VuaIkt4
         gSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k4y03X5if1XIhZgssDAUjs/+vQ6RWHpZk2UmwYGGdtw=;
        b=t83p9gWo79ZDXCtqWftp6brhj1Ul3hc6awGjS4txoka7CG+StUHoY846NH+auO8VR4
         wmWjOgkXlL5nzkAPO7f1kMej7bd1y7wWwjAX6gEL4Gty0m8fqU9l9cMSaHxrD0mwPCms
         156CF4K/HdJXjSVcDcALUYdv205TrYN95zIW7drUEZyi1Vj9Qttd62JyHaEfLkE7pcNc
         hUbyVaWKdZQK7SVmZTqJGat6J2gVdBUlONbpb5xEzbmWdcYLPqKBqPjosgwerUR99BMk
         L4LY8idN0i4doW5dDgsDxdjeHZmYTPRqiMf1f0EOCwevJAzcKpnzyEGbSjIknXWVCw92
         /WUA==
X-Gm-Message-State: AOAM53278w/XG5OPEeIhSwWiZZnq+Lmd+cxoFdxg1hmttDP3/0xb6CyX
        cdHDlgHJoDzSJX4pzrqOssKF96mqjaJqrcKLSieDUg==
X-Google-Smtp-Source: ABdhPJwvQlk1LfRYHBQK/V3z9TruFoj0zaAqvk14ypJwqq38BGYXnruTZTxjTe+mYtSUw9CH1Lkgjsiz3s/GG/feFdU=
X-Received: by 2002:a2e:586:: with SMTP id 128mr6141673ljf.273.1607726990605;
 Fri, 11 Dec 2020 14:49:50 -0800 (PST)
MIME-Version: 1.0
References: <20201209142753.683208-1-lars.povlsen@microchip.com> <20201209142753.683208-2-lars.povlsen@microchip.com>
In-Reply-To: <20201209142753.683208-2-lars.povlsen@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Dec 2020 23:49:39 +0100
Message-ID: <CACRpkda2_BFDaGZxyHaOkRj2eAGku3xHoW9wmKuTxQf15hzXgw@mail.gmail.com>
Subject: Re: [PATCH -next 1/3] pinctrl: pinctrl-microchip-sgpio: Add irq
 support (for sparx5)
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 9, 2020 at 3:28 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This adds 'interrupt-controller' features for the signals available on
> the Microchip SGPIO controller, however only for controller versions
> on the Sparx5 platform (or later).
>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

Patch applied, adding
select GPIOLIB_IRQCHIP
to Kconfig in the process.
Because you're using that.

Yours,
Linus Walleij
