Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A09DBCC34F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 21:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730018AbfJDTGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 15:06:54 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:43050 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730090AbfJDTGw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 15:06:52 -0400
Received: by mail-lj1-f196.google.com with SMTP id n14so7540368ljj.10
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 12:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JYj5Vuu2wwz5/1bubcaD27zMhmuUTtHi+dTrlxCeEQo=;
        b=WkdazjxwXwGBBU0OPmDk7Htn7m2xKTQ8eGPNzHJur5HfrO6gY6RnZ86tbKbx2SW/F5
         BUnxhc6enI1bM/H5poFAxSYKQikJ7b17bqABQoX0xtYthyQlS1HTquO4Qnu8Ez13SNbX
         7YkCztFJFieyUhqsJEhpRgTensIzMriCnhTpaSnccvzTPdlCZ/KnCNeooScFZ5gkT+xg
         u1KL3MHvokRekQOYKIfy930xlNX0cT2cdRoWgTexquyGdFCzmOGjbfm0JfEMJAxYbHic
         NkWXe0+sjVoGs2VTv3q/8N4Sua45qNVNyIma0u5499juQTId9Ov3oIiTyFVgCZ+YNnC9
         /zeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JYj5Vuu2wwz5/1bubcaD27zMhmuUTtHi+dTrlxCeEQo=;
        b=LtiBoMyEZsNUStCjBN0FrDPVrCxgoHjK8ecGiPY0jz5hx3L/E5VVgggN3g+l/lrynj
         av94g6optooifIi4YXF+UNVz+qInphOb7u2kWhJEl3xDI1HU8EaByWtQh+DlIof6W42x
         Wh9bVTnIQGdkVhIfOSxuu9CGWlcguV8HbscfNn0sn6N+vSnKs7PiifBeFNzN9IJn6wtT
         HJmUHhti7bSQzSBTU3Ppx4XHDdP9v/RB4c3frvC4oHGxtladzfN4nq/hS+yzNc33dOAe
         G90gfIHxMAYx5HB3h3/gmkKdh1d8ThSvLw2scb+JJpxFkdZP6/wokF7E7yb1V/mXoA43
         6Z2g==
X-Gm-Message-State: APjAAAUvWbvPLjm1McymWqaaXk+Gf1X7zIjE0AqTke4hRfbGpt233xeV
        1EBmOVyNlG3G4Lz+WZJinqS3OSyCjA9AKwP9ZZqzPQ==
X-Google-Smtp-Source: APXvYqzV7LwLHfUN/uOof+1pMQj65BBC/djNC3BS8vZC+QuB1i0JvUK986VyoSTMIAIDmGIg0K85ux9PRsidtiGsiOI=
X-Received: by 2002:a2e:80d3:: with SMTP id r19mr10234333ljg.41.1570216009077;
 Fri, 04 Oct 2019 12:06:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190917105902.445-1-m.felsch@pengutronix.de> <20190917105902.445-2-m.felsch@pengutronix.de>
 <AM5PR1001MB099472B4C90EF215134EF5AB80840@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM5PR1001MB099472B4C90EF215134EF5AB80840@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Oct 2019 21:06:36 +0200
Message-ID: <CACRpkda_RuK_UfAVd+m5PZwMHUv3G-vSYdu+LWL2BG2HQqim2A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mfd: da9062: add gpio bindings
To:     Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Cc:     Marco Felsch <m.felsch@pengutronix.de>,
        "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Support Opensource <Support.Opensource@diasemi.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 24, 2019 at 12:53 PM Adam Thomson
<Adam.Thomson.Opensource@diasemi.com> wrote:

> As mentioned for your other patch set where the regulator driver makes use of
> GPIOs for control, I think here you should probably have pinctrl to define
> alternate functions of each GPIO. It seems that mostly pinctrl drivers support
> GPIO functionality rather than the other way, so maybe that's the direction
> to go in? Maybe Linus has some input on this too.

Usually the both functions can coexist but the simplest if often to put
them in the same driver.

drivers/pinctrl/pinctrl-stmfx.c
Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt

is a recent slow bus driver doing this.

Yours,
Linus Walleij
