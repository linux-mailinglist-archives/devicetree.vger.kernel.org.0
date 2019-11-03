Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3AAED646
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2019 23:35:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727870AbfKCWfz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Nov 2019 17:35:55 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36818 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727856AbfKCWfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Nov 2019 17:35:54 -0500
Received: by mail-lf1-f67.google.com with SMTP id a6so7401381lfo.3
        for <devicetree@vger.kernel.org>; Sun, 03 Nov 2019 14:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EHtdTbqBxd9JTKBkMBRWhQaNOyW/MKSbbKYTSzXac2s=;
        b=RW20B4HiwisBi+QgKxV78+/7ahWabvD2Ujxzw9C0QLTzC4lFBaXW/aDjyAQ4YzYlJm
         f3LfHiRVzK5cZLHWD9MeQlwlfdoZAjS0ICQyJePB3LKjdzNjnECwfLNrAWcp5S+jkwtA
         WPDyoXQ9ItnxCrxoSpzzcO5bYucDWQQTO87rEgzoli2PkRZMdJK111r8tuZVp0oFLzQK
         DftFukh3yFDXJqncuJ8LLANgiTMpNxAgOfEBLnDayf5GlGhIxOjJZGUaRg2AW3zSvU5V
         2xdXlUKsIfdOzrVQ1iVZG87Be66/5/OwWDKbuMP0yL9EO+wmE6Qz/J/7Ur7JDRTiaP9v
         RHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EHtdTbqBxd9JTKBkMBRWhQaNOyW/MKSbbKYTSzXac2s=;
        b=or91bBFCZZMsLa4m9HDtcGBHmjoJHSaoM+ZoPLb1dNi9Rbufph6hTyRm1nmT4Bavfh
         XjJV/bM1TShn9+bX2XAQX3oLZNCKp7QArq+LeI4VvZbaHOqbAA7Hg/90WxkE8wpcQRp1
         foGNwpAq0+08di6yNjVoGigaFOfKXjt96iTKiVvcD4No5+b2MvIxI9KCCvW8IvdkS1Ct
         AaTH8Bx/ERLYqZrO+QRC19XU+tYWI7t/KSIHAtKuTn/27RPRk9P5lhXMLPaI/Z2u/+2O
         JR7Q/IVuAEcfr/ZjQumk2B3namqIGaPlJGbAMSU/xVvqP32n3fa3rmvcQMlHqqL+juOt
         SHzQ==
X-Gm-Message-State: APjAAAUDICDPzx61ocVQm/34q0a93AG3ErcyFyXMhL/XN3rokCCqA/UK
        Ij8IGBFFBit2XIYVgrFSfbBVdc9RnAZEvU1SaNof0Q==
X-Google-Smtp-Source: APXvYqzgwn2ea3wgkeAplcvs+z5xFC8B7B9ZgEIYnEjFBzdQK4niVCmNaMSjFFIdFzKBhXKld0V8HRZoBmyNEWVxAhg=
X-Received: by 2002:a19:651b:: with SMTP id z27mr14242065lfb.117.1572820553199;
 Sun, 03 Nov 2019 14:35:53 -0800 (PST)
MIME-Version: 1.0
References: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 3 Nov 2019 23:35:41 +0100
Message-ID: <CACRpkdZh-gV8T6cN2R9DrLE32EPGk9g07z_K00W9n+kbiSW7Wg@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
To:     Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 1, 2019 at 10:20 AM Codrin Ciubotariu
<codrin.ciubotariu@microchip.com> wrote:

> On SAM9X60, slewrate should be enabled on pins with a switching frequency
> below 50Mhz. Since most of our pins do not exceed this value, we enable
> slewrate by default. Pins with a switching value that exceeds 50Mhz will
> have to explicitly disable slewrate.
>
> This patch changes the ABI. However, the slewrate macros are only used
> by SAM9X60 and, at this moment, there are no device-tree files available
> for this platform.
>
> Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>
> Changes in v2:
>  - updated commit message to reflect the ABI change

Patch applied with the ACKs.

Yours,
Linus Walleij
