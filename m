Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87F0B81676
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:08:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727928AbfHEKIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:08:19 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:34690 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728111AbfHEKIQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:08:16 -0400
Received: by mail-lf1-f66.google.com with SMTP id b29so50225375lfq.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VmJocWvsymOdQ7NU7/6yMlP4/6K5DwEx+usK89GVi9s=;
        b=kyJZW7fZfdLgtDs2aKngH2TyuWTJjTeVTLZyRgxZRY9MQ56FWUw3A52lCdt4c4YJ+1
         3TgWOde1fzdSqgTWIgbjzvsDeaFtKgXf6SuYKrrM9YK82qK7s6dWcsjao4CGSwv8Ahlt
         Crwmv8+ySmVuExNcK9irfRd7xd4YEh9epWXPM2OVxpgaQ8bRFBbu/lNMcWXb245BCABI
         /yNpf25WGiE15uDcA+a++0LXluCfysTo88g0q7Hcvunkj67HSTRYbpqtQilt8t8aWCuR
         NoBItyc2gaayKuIzBJdFKFHEpFkdC+iXQWdc8it3UQcFXi36FqTMsdYN8t8x8xKnWrM8
         44vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VmJocWvsymOdQ7NU7/6yMlP4/6K5DwEx+usK89GVi9s=;
        b=aE3fPjJ2eQPZ3qQzm5hdAWyVEKZrXAtbyR6SblaijxXw33BUsUb751texEvUHiA1Ih
         YrsBcTcC4/sXglWu35+8Rk/a3iTba2FrSiM55kniYtrDn3UfF22z3/eaJKBRodGVQzI4
         kP5KPzTtjKfq5xgeT1IIN7CWjKF5P+aRbipxrKVAZmfaOTJU+uHkp2QUEeoFp1IOMRdc
         4yLNW8fUKtQopW286VInnYpzt4JOREoOPcXpP92L9TxxhlW44mDUo0IZrHMJgTGlkYDO
         l8LDNHQkF9W7RpLzClU5wYbiZUdr9e9KsxdE0CWdNIpwlpGfnGkgzZKQo4At8uqZI5MD
         0y7A==
X-Gm-Message-State: APjAAAWH+9F3S2KSnh45PGMG7hLFbQODXTWqquXMXETqH7gBSRZJwzFo
        lgdSUsu6DGb1ncjx2qe2czM0TpSbDXijy/qRcBhlRg==
X-Google-Smtp-Source: APXvYqxpqm0yndDdT3beIa5MGWi8lTPoZhzSa/lWFiqq6Dn3b88/pHlyJgXWVtBOlC/fjyLdOtrrqUOtG4JGHdovYiM=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr60787048lfp.61.1564999694066;
 Mon, 05 Aug 2019 03:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com> <1563958245-6321-4-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-4-git-send-email-chunfeng.yun@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:08:02 +0200
Message-ID: <CACRpkda5OUEfZRSMA-8H5jnhSan+VJ_3KB5CvOaRdZP1NeJQ+w@mail.gmail.com>
Subject: Re: [PATCH v8 03/11] dt-bindings: usb: add binding for USB GPIO based
 connection detection driver
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Biju Das <biju.das@bp.renesas.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Li Jun <jun.li@nxp.com>,
        Badhri Jagan Sridharan <badhri@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Min Guo <min.guo@mediatek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-usb <linux-usb@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO, and also used to enable/disable device when the USB Vbus
> pin is connected to an input GPIO.
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v8 changes:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
