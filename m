Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 744E3411112
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 10:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbhITIiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 04:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235363AbhITIiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 04:38:02 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF942C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:36:35 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id x74so3065430vsx.13
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AXpX751vv8Gpx5ko0XwqL9sAmxEpapwwetIwbcsltn8=;
        b=VGGEQStXEj8ABpnITI6QZOMeASU8TkGYQD+7THg7YLkFKZLT8o8XTWx/eGz9u3N9bP
         bCpFn8PXYWr7gAvkaTyZQdQsfae0MUHmT24kvzNZaFScK4+myhM75c1JHbnu2jF6W7W7
         5lHlreveIPerVlV13evDItFH3ymxIJMJFkNVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AXpX751vv8Gpx5ko0XwqL9sAmxEpapwwetIwbcsltn8=;
        b=HsSUVnKIvIaRr98d7vS4TJItAlJBvRw8KRQkuCLHN8WtMAK3P1hY+Gpku/QJiJx4Jk
         xMxjkUfNlPC1+7Gt0MLmMpzS+X1new14I8NQsyHueWozJSxfuVGRqo87gbNaODRIV+R8
         7kyo3bVG6jBO6knAK6tJL7ljESgctYaqSRl6i9c/5B6oI8C0ry4ZLcxSQCYzMwNaeW9l
         wypr14wnLaqH/bvLO6Ju0Fher+oYQKa2UgnaFBaOYKG+oJ0/4i6p8OpH66NIaUXC4c8w
         lJMxKAkUOtvMHhKhSdaYAyIuVlPEeaCcTxTw9Z2q+eaF4o1322AzopT59OQ5SBo8WSy8
         CkmQ==
X-Gm-Message-State: AOAM530z7B8US+hwdrpAq18AnRumRRzIoXIPL1Us/8i3wHqUsxhtmEk0
        mX4jj4XrFoPRXzpraeSxFu8D8VD71kk/B06uOFQ4Zw==
X-Google-Smtp-Source: ABdhPJwamLP2gBqnl2/E6bzFPDGwZuzXfFD4zf+F2v1T3fd/UUUR9ntZ9I9Z0bBnLB0SF3ZR72MKKs/eCKE9/9wl0tw=
X-Received: by 2002:a67:ca1c:: with SMTP id z28mr14977938vsk.40.1632126994977;
 Mon, 20 Sep 2021 01:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <YUDG58WfACd8GYf5@lunn.ch>
 <CAFr9PX=J85PxAiHC2Cb9Z18v8pYtd2Uea8KOC+AsYyJKFCLHXw@mail.gmail.com> <YUJY2v59+ui1pGZp@lunn.ch>
In-Reply-To: <YUJY2v59+ui1pGZp@lunn.ch>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 20 Sep 2021 17:36:24 +0900
Message-ID: <CAFr9PXmrzXuSjTxw6ojOpN5NsKxCBzA7nJ9agCLCKsbpduN7Hw@mail.gmail.com>
Subject: Re: [PATCH 0/3] SigmaStar SSD20XD GPIO interrupt controller
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Thu, 16 Sept 2021 at 05:34, Andrew Lunn <andrew@lunn.ch> wrote:
> O.K. Then it sounds like splitting GPIO and the IRQ makes sense.  This
> is the sort of thing which is good to put in the cover letter,
> explaining why you decided to do it this way.

Good point. I'll probably need to send a v2 at some point so I'll add
it to the cover letter then.
I have a working driver for the other GPIO IP block that uses this
interrupt controller now so I can link that too.

Thanks,

Daniel
