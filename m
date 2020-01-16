Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4294A13DF4A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2020 16:53:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726559AbgAPPxa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jan 2020 10:53:30 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:46444 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbgAPPxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jan 2020 10:53:30 -0500
Received: by mail-lf1-f68.google.com with SMTP id f15so15832903lfl.13
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2020 07:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=3b7/rLBHWWHHYbKlS/39gt431nhXhJtYjpUHbaLNr48=;
        b=wAHw/S9tpiW6/rLfiflhLgJlKqcbwOlb9ikkhtYxRh+yigmPtz5rZmKdABwJ4ic8Ha
         M33iKs5jTU9sjzj0Eg3/LMkbs+ACuxkZcRsDB5bBK2Nhn6okMoqHcbOjlFADq9X53JDe
         WwvMyTDS3hZNvTK3oPxFD5bKFTbSoHfhCH8TWJP6Ljwhm99W4tZs16FU3BVitlpVZCV8
         ZiR6//F8cJ2yQdb8zaM3x4qL9zhSFHvb93qBrCVWgj3HF0VyLL2e/l9Pnvv/b6YbW417
         HnmyX3PEJs1Wmye0ZZyU5AOpQmwI3cskyx5jY4h8kVoZU+jQTBRuoyPyMF3pqGgMRAZc
         TMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=3b7/rLBHWWHHYbKlS/39gt431nhXhJtYjpUHbaLNr48=;
        b=ItaPmrXdu+mbCx//DkN9bvyNL407CwE72k8Bq+fwgzidalDyJDji+YXcUm1d4liFQd
         opAC53FQ+X6VbuZWWFZP3ZLtScNAZLrAPJ4YqbO7Za/rhIHOuEYRbkLs8UqjzylgbZmp
         N3j0rwaJVYLumitgcbkim+uSAZywpbzh/CgONuInjkyqFeKjSjrTf0besZt1Y/tXBd84
         NcBbeL45iO6MJgpdJ1pAmQQYkiJ8mVZ6YjvfltgF6cPYMW8xjRVvPfM9GQfR25TY9FQ3
         RN5eorEBtkJPMYjmyVAZsKQPaYGqNkltsbHrpjYjedpcGiXXD+91jkEKO0W0to1Lhyv1
         3SiQ==
X-Gm-Message-State: APjAAAU/z37WbpZgC/b29I0OHxqTSNYKHC9Yr7da/+7gySut1jQYIkBg
        AJ4zBkDiRtcjgKW/+BBN3QCHsCgNuwrriHF+4isdDw==
X-Google-Smtp-Source: APXvYqyaY1zsZac6xIg1geYp8/1vn1UDTyxas3KGQkY/prQkzpWCL0jDomBKohuCGrAyS4OUIUVVdQm7OlnHV7LpPR0=
X-Received: by 2002:ac2:5dc8:: with SMTP id x8mr319519lfq.217.1579190008179;
 Thu, 16 Jan 2020 07:53:28 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-3-benjamin.gaignard@st.com> <CACRpkdaK+kQZH_Txu-r4DY_m6muh26aCWcGOkxbi8hbCgww28A@mail.gmail.com>
 <CA+M3ks7s_KOhXciJPZc3N4z9GNkiKa=fWdQ3hC_HTtrWMWYHtQ@mail.gmail.com>
In-Reply-To: <CA+M3ks7s_KOhXciJPZc3N4z9GNkiKa=fWdQ3hC_HTtrWMWYHtQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Jan 2020 16:53:17 +0100
Message-ID: <CACRpkdZzL_rBs61s+4k6-QNkB4WzjV1hTy90_St-zsAO=ZyQfA@mail.gmail.com>
Subject: Re: [PATCH 2/3] clocksource: Add Low Power STM32 timers driver
To:     Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc:     Benjamin Gaignard <benjamin.gaignard@st.com>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Alexandre TORGUE <alexandre.torgue@st.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        Pascal PAILLET-LME <p.paillet@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 16, 2020 at 4:44 PM Benjamin Gaignard
<benjamin.gaignard@linaro.org> wrote:
> Le jeu. 16 janv. 2020 =C3=A0 10:07, Linus Walleij
> <linus.walleij@linaro.org> a =C3=A9crit :

> > If you have a spare always-on timer (and it looks like you have) which
> > you can set as free-running, you could register it with
> > CLOCK_SOURCE_SUSPEND_NONSTOP so it
>
> The driver only implement clock event feature so I don't think that is
> flag is applicable.

I know, it was a suggested future feature, if you have a spare
timer.

Thanks,
Linus Walleij
