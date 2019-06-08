Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9D513A033
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 16:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727053AbfFHOL7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 10:11:59 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:46934 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727012AbfFHOL6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 10:11:58 -0400
Received: by mail-lf1-f66.google.com with SMTP id z15so976841lfh.13
        for <devicetree@vger.kernel.org>; Sat, 08 Jun 2019 07:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z/Lc3GoSd97S4UlXfUe20NKseC9kq0KZ3QtIbR+UKdU=;
        b=C9izCbEPkC0U7LlS2yX/MM37xekbGe4fM1HSimFKsiQDuTQR76cxqqyyXa/43/3uxD
         Wwmi9TRwY/+y++1xaw+DeUEvIDIttHGs+5Kg1sohN8+qo6PQfzd/3RWfWxoa6q1UVkIO
         v+mSG1VT1hY5A0BC5Ua48+aRW9vBgCUQ5GeqD+w1/tnOnuXupWcvR8PNo9dX+hvfXfZt
         D03Q0KEn0MOg6ak2mUG2jzQCpWmKQZ5mcZDMtQnuxpKgfM7JG1bKfhq52rNzx3QPFPE0
         6L2SJ7wbE00qzSmSF3Gg5R/jdOcK/pMJabDUWqEdLyHcUM/79Iirvbn4n4mRn5c1Iqq1
         FqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z/Lc3GoSd97S4UlXfUe20NKseC9kq0KZ3QtIbR+UKdU=;
        b=GIL5d5kYnB3WwJ2yBcvJ1yrtauv/GGlVVFgF1W+ruA96mj8L9tDlLir5B53iTgJuiy
         9AQHTehT2UyFtRJTiIEwbosTemVyXpNlZFLN276x3yJdePo0cQlWogc0GhhO3XNkuMLX
         hGktk0L+aBYKoNppspG90RcQoymhKygpbFw940A3PCcAUbxV08lDj+hC8auuJxtQEm1l
         JtfqKoilMOWPkvfpUEHi681+RhNEctNGMH6Vw/L0TfOnF2xOKWEvhKlGqyn4utxLJusQ
         pyqqCWDTmzAawNv70KJrBJitKhgP0vl43SbKr2mp4ivbFfSbddAtHwcSnof1y9d4t0nx
         EkqQ==
X-Gm-Message-State: APjAAAWMXXBecQrKZtjbBm8j8DIOmMklsJuS3+F/vnjvq5iz/VcR6nFr
        jV8KwcZCRVF1BIOEiYhuKCuT5C84eSWChlKh8+TZsw==
X-Google-Smtp-Source: APXvYqx2u6ua04Y2DWZCjnRk0Yb4gA36ghvH787XRHzsYhxv4xxKaUG/0dYaDFteZbFlqHDjqvzEIMOYdrLEHwKPayg=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr17680496lfc.60.1560003117100;
 Sat, 08 Jun 2019 07:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190607110612.12625-1-geert+renesas@glider.be>
In-Reply-To: <20190607110612.12625-1-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 8 Jun 2019 16:11:49 +0200
Message-ID: <CACRpkdZp+dxGOKBm-puvuqC2kjhw8Oy0-8jjkBBU4EkRTDUkkg@mail.gmail.com>
Subject: Re: [PATCH trivial] dt-bindings: pinctrl: pic32: Spelling s/configuraion/configuration/
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jiri Kosina <trivial@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 7, 2019 at 1:06 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij
