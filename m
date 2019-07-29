Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C64C779B43
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 23:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388786AbfG2Vhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 17:37:48 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:37305 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388785AbfG2Vhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 17:37:48 -0400
Received: by mail-lf1-f65.google.com with SMTP id c9so43068625lfh.4
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 14:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N6SGKTpDBVf1QoMNMHV2QxgTIUw60sPAmgJMLuUozsA=;
        b=u8iapjwNjwnZ7jcCyKefFe+jgiBX5u5HsLpuFvT0Z1yV+9VtwjFOQcc8ZOMl6KvFPF
         M7QYUd9GHwY89FO/oIy6Vs7z2LpUu7VvpqsZcilOTsOKDmMpm2e5QMU1PO9cNUZZbgSl
         E7qc0BLNAU+W0cXByg1aaGz7e1qqPtAIKoeDdHRcuRXAV/U8FwFMO2v9GRT6O4lnbmv0
         STtsybUIKUHzspa5YXLLFmIVORmtDhBfSpcRz6FxasXB3ukoXv4J6Xx0nc1CqaS0brjS
         KAatnGipYKvOgHMS/jo0jJcdLtJrjGEIa+gqcxm6qIaCuw0UWtIpdSCMFAF/cUigb6S6
         L2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N6SGKTpDBVf1QoMNMHV2QxgTIUw60sPAmgJMLuUozsA=;
        b=R1uI9WySrQDwgh+9sf0FZrtnY/ZWWH0//cojIHrRB2upyV9nheuSAXaSJssYhzmKI2
         7c2VU1uVFbV3WZV111+OfMqW/DLt+6A62BDTGGgFJqvCo/dZ3MvQKCf0K8mYL82nQYSI
         BEN/Ri4Vww5H0G+Z0Lim4F1c/4HmCbv2PD72AcwqsbltFzd2+Lg15OefAcEGIHqgRBwQ
         o9/0yiQQ1gMmYA8G4ANa3WkSY+DiGD6w0itHE4j0shoAbKa8wVE5a2mqmsp6nIeZB9Ip
         Wm/vvl9mNA8wh+/78LsKbQv2oK96XxdfFLQg3zPXpT+AbSzCdMVcvSZefC1BW1hqKtVl
         j/5A==
X-Gm-Message-State: APjAAAVMBos2JaGsBROhzXbJlWkVRdYhfcxZ58pVNXRTrIuYN9bmtmBd
        kRCTZYiK0A7946a2bjll9nk6Ul5+zd/HBE3C2F+Tww==
X-Google-Smtp-Source: APXvYqz3UTZrxCuWCFpHX9xCUQzE7FgKee1vYyZDSUrGPt39sYEtKuROQUXJZ4DR6J5QXxct4aus6tuGSmQowU3As4s=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr54407619lfc.60.1564436266269;
 Mon, 29 Jul 2019 14:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190712061721.26645-1-andrew@aj.id.au>
In-Reply-To: <20190712061721.26645-1-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Jul 2019 23:37:35 +0200
Message-ID: <CACRpkdZxcRqV18tfcJHNVD=FUwDShwJsJm-v9+SVrxGPC5jvxg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Strip unnecessary quotes
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 12, 2019 at 8:17 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Rob pointed out that we didn't need the noise of the quotes in a
> separate review[1], so strip them out for consistency and avoid setting
> a bad example.
>
> [1] https://lists.ozlabs.org/pipermail/linux-aspeed/2019-July/002009.html
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied.

Yours,
Linus Walleij
