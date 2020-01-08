Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C547133DB3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 09:57:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727139AbgAHI5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 03:57:39 -0500
Received: from mail-qk1-f193.google.com ([209.85.222.193]:39273 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727091AbgAHI5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 03:57:39 -0500
Received: by mail-qk1-f193.google.com with SMTP id c16so1959126qko.6
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 00:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=txHGvTmn6wHXPp2oQOJpqKQj8noXhF4VbGKRGRI9/tU=;
        b=Fmu2+rMdGH01pAOFv9xENu9HKyrQuitINAws5ePHXdMU3xruGlysnG5rLwZfvug1bU
         dvirjyp/LKV7X2OHq9BL2qNsJ1a4/Y5qFIHU4vq3gZwbU8TZRVu/ba5u0Xzk3Ec5Q0Ds
         WW27qghCc4Qi/QUT/ch/sBr5K/mGcq3oOsx10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=txHGvTmn6wHXPp2oQOJpqKQj8noXhF4VbGKRGRI9/tU=;
        b=KxQk0Ndor4NxIKGpst9QrjAUKK/uVuDVk1b2Ai8ag3jfO6/hOYG0/9A/uq3DZDLE7/
         28wbHmIT0WoQM/y/QoNNxmSHnhEtLspRfSt16EPIK0LQAVVewVuB/EOHxS/pxqpBzOFE
         ayYmA/HToEu4nTNMKl/yzxbnY2JOthl9l/SsYIbwjbFUIstWDv4PACRRYoaplzrNCYVd
         d1oB8tl13G8X7qL55S5JpwtkdtK9lVUCd6rQpXadVpS8KCJ3zG0pKQJ+U1CevixvCDrR
         N7DVbe9C2r2EUVN5KR32l9su4poJHR7IJxgI3xg283B7r0csu7sH1F8E5399nojLp9nq
         v+Mw==
X-Gm-Message-State: APjAAAUh46djOUpsu+YPfs7HKo1Fr4JG1I9psC4cmmTtRvuAFkHh+INP
        Skt7gCXpnAv6lQ+TdZXkUvUifHKPcuCGsXzV/oTOag==
X-Google-Smtp-Source: APXvYqyxg+WXfWADIYH7mp/FamID6msEFLooGtjXHNkGMJ3b/HHH7fES5RiF7qjZJrTUVIs9ZocSgYGBXQI6iIPX6GE=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr3269467qkg.457.1578473858520;
 Wed, 08 Jan 2020 00:57:38 -0800 (PST)
MIME-Version: 1.0
References: <20191227141405.3396-1-yong.liang@mediatek.com> <20191227141405.3396-3-yong.liang@mediatek.com>
In-Reply-To: <20191227141405.3396-3-yong.liang@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 8 Jan 2020 16:57:27 +0800
Message-ID: <CANMq1KBaE0OimRaa2tiQQYS2irsaNQR_7O8RCWYMpTGnnYNYEg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: mt8183: Add watchdog dt-binding
To:     Yong Liang <yong.liang@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, wim@linux-watchdog.org,
        linux@roeck-us.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Looks trivial.

On Fri, Dec 27, 2019 at 10:25 PM Yong Liang <yong.liang@mediatek.com> wrote:
>
> From: "yong.liang" <yong.liang@mediatek.com>
>
> This patch add watchdog binding documentation for
> watchdog on MTK Socs.
>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index fd380eb28df5..3ee625d0812f 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -9,6 +9,7 @@ Required properties:
>         "mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
>         "mediatek,mt7623-wdt", "mediatek,mt6589-wdt": for MT7623
>         "mediatek,mt7629-wdt", "mediatek,mt6589-wdt": for MT7629
> +       "mediatek,mt8183-wdt", "mediatek,mt6589-wdt": for MT8183
>         "mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
>
>  - reg : Specifies base physical address and size of the registers.
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
