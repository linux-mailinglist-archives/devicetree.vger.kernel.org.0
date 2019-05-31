Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD3A306D5
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 05:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726546AbfEaDDx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 23:03:53 -0400
Received: from mail-it1-f195.google.com ([209.85.166.195]:39868 "EHLO
        mail-it1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726535AbfEaDDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 23:03:53 -0400
Received: by mail-it1-f195.google.com with SMTP id j204so7593868ite.4
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lXjk4EabF/9GMSniDWqhkev/Ug2c+H2S6xMvNNJvkwQ=;
        b=f3c17J0AtgoyyRvbpybHCpV33bB/WEVV8YwAmFT2jPPgdL82rAJQ/4VkEf7Lqtc2Ac
         +FgCbJBBGdT5maUBEu3V5MxvtOqbL13K91mBlwibsGN7bt2IKmLxyubDYVrxeEavrfea
         1ilH9xSJ9DMDp9vADgxz6q1NeZSpV8BIoG9njnfI73RI9oYcm2RfXPLTXHv9btajyBQg
         5Vs0s4EToNbvpRH76pT7mF1xgTwqq4r+GSTSVydo/xkHVGL08AhCnT2W1r4rFSPDomsh
         unBsqvvoL4AnSU0hIKRN/shpYjnLB1CTOIZDh2EjopYBn/3c8Rw3Qfq3FUyjF80VEfjq
         Va8g==
X-Gm-Message-State: APjAAAXlnUjnj98Vphhoaf3NKgEIMg0TLrLAwZW9nfx3ttzEsI6YKQ2j
        DIMRZsD5JguCuW3q9gGn7KbOis9m7NY=
X-Google-Smtp-Source: APXvYqyT1GJ+JwTrLzimRHRQUUUmPXXmHK/DYIT6RzX+flLP8QrAqLVTcRomrF9xMuuPiw9UCzED5w==
X-Received: by 2002:a24:1f04:: with SMTP id d4mr5350195itd.136.1559271832039;
        Thu, 30 May 2019 20:03:52 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com. [209.85.166.44])
        by smtp.gmail.com with ESMTPSA id l5sm1622243ioq.83.2019.05.30.20.03.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 20:03:51 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id k8so6980604iot.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:03:51 -0700 (PDT)
X-Received: by 2002:a5e:8505:: with SMTP id i5mr5159405ioj.101.1559271830934;
 Thu, 30 May 2019 20:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
 <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com> <20190530185347.aql4znrk5msk2q6o@flea>
In-Reply-To: <20190530185347.aql4znrk5msk2q6o@flea>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Fri, 31 May 2019 11:03:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v66apz30Jy1BjU==s1a5Vwcr6GJsaswNqORSZc8fFKmzWQ@mail.gmail.com>
Message-ID: <CAGb2v66apz30Jy1BjU==s1a5Vwcr6GJsaswNqORSZc8fFKmzWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 31, 2019 at 2:54 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Thu, May 30, 2019 at 09:48:02PM +0800, Chen-Yu Tsai wrote:
> > On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> > > Linux, with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Looks good to me. However not sure why you replaced the clock index macros
> > with raw numbers.
>
> The examples are compiled now, and unfortunately we can't use the
> defines at this point.

That was what I suspected. Thanks.
My Reviewed-by still stands.
