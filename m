Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A163111FF
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 06:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725613AbfEBEBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 00:01:55 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43845 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbfEBEBy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 00:01:54 -0400
Received: by mail-lf1-f68.google.com with SMTP id u27so526868lfg.10
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 21:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wFt7883PSp3sr8375jT8hC/v5fI/cu96gfKmIMdklMc=;
        b=NL31EuKphJharQ7ownjb9GhREqWgylPR8oRdfySKPZMDjNrY2iEQE+rRHxT4ngNhdt
         S3dsJVBIj5WOjo2zeN5xhW4Q0JGirUI/rk/HumUBXGZPyY6c/J1IBbu6PR9T1NV5Y0wo
         oq3rJA7JQDfBlz0eBBDCFI0gPZ23MuCxEtssLK3CzJPda4c/lvmt5xJUeEVYEz/6IAfQ
         OOx1LWqEaZ/C69l5OxSAB7ViB3GfHPgoJiLsWv49NTYer+IitWd4Skkxi65dDWAJtav6
         B/w2l2m0I9Wxe+wHEDFd2VXNqAkEstJoKby3kTKWhlMthCaJHtP8Y62rrHurhz+U9nD4
         F9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wFt7883PSp3sr8375jT8hC/v5fI/cu96gfKmIMdklMc=;
        b=DJuBfm0t2dFBLKJ/lJzCQAppLnQFOcM3TrEB5yXSP8iWWaYS08dfQIlpEUZ3hk7miw
         6kwU8GCSTIMCulb0Y8F013FBmHOrSSu6oURq5WBnbRKfGOa43OLS9PgFBeSrKky7+uwn
         nXgYZqCtLG6kaGYd+gdDxR+NuhpQ8uBrhpbfiXlR2CKQMI3pw7LTiPKKRVi6/DNnoaIU
         NLLnG1EW/b2q5kuKP9NelGeRrT9TThNRYfFExX/5vgMnS+MYkud157gXLzBLaMfHpPC/
         5TbyHlzMGfK5CDDwUZJew+zCjFnNN3+vGXEA9sjEM+1q7VObTtLYsUezSTvONaR5bvOX
         MeTg==
X-Gm-Message-State: APjAAAVVLDjaIFmbPvoRDSmlFs3/CvQ3EOJatzhoGcPyUHGnSMes9Qu2
        0LyU/hRGklBl7KKXgoyU0uJTXeV/erQhxMjRKHEFDw==
X-Google-Smtp-Source: APXvYqxzdvzK/rjINuA4zAT9PeOdoZuUwGQBTyS9ONY/hM54JNu3Te4R4w/vTFUvuR1Nv624R8L3skIAT6evE9QmbPY=
X-Received: by 2002:a19:81d4:: with SMTP id c203mr672545lfd.160.1556769713184;
 Wed, 01 May 2019 21:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <1553508779-9685-1-git-send-email-yash.shah@sifive.com>
 <mvmbm1zueya.fsf@suse.de> <mvmpnqcsn6u.fsf@suse.de>
In-Reply-To: <mvmpnqcsn6u.fsf@suse.de>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Thu, 2 May 2019 09:31:16 +0530
Message-ID: <CAJ2_jOFu-yCZV_A4B48_fLq7h7UA6LUWhgpxr0uuh7vhW9Q8pA@mail.gmail.com>
Subject: Re: [PATCH v11 0/2] PWM support for HiFive Unleashed
To:     Andreas Schwab <schwab@suse.de>
Cc:     Palmer Dabbelt <palmer@sifive.com>, linux-pwm@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        Thierry Reding <thierry.reding@gmail.com>, robh+dt@kernel.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sachin Ghadi <sachin.ghadi@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andreas,

On Wed, Mar 27, 2019 at 2:34 PM Andreas Schwab <schwab@suse.de> wrote:
>
> I have now found out that the ledtrig modules don't load automatically.
> I would have expected that the linux,default-trigger entries would cause
> the load of the corresponding ledtrig modules.
>
> But there is another problem, that the leds are on by default.
> Shouldn't they be off by default?

The PWM default output state is high (When duty cycle is 0), So I
guess leds will remain on by default.

Are you able to test the PWM driver at your end? or you still facing
some issues?

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."
