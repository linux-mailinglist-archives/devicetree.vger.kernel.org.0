Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70E4B269863
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 23:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726106AbgINVx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 17:53:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726171AbgINVxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 17:53:12 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7D0C06178A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:53:12 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id w25so1278783otk.8
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M0KzjL35Ohrpi1hBTpVC8GSlPU64AFcqfskfaAZgBa8=;
        b=LLZApjOYT5LOPwoWYD3YxrbeHE/ynPWQVOd7JfPB7whFmDJqwNGuoKrvJso5gpGyaw
         LGOyVBW1IMXvVatUGckoxvVCfUw6pylZefbVuwwZ5+VkggK/oss0GOiQ/233+1f3TiCR
         xIopZ4lSiZ8pPQlbiRy2r3bR0qAZVz4r0GzortxzQdX8nm0/EJ+QLjbT+az+ari11bPG
         lYKEFI/ORlRY8PWI+8BURBUpEv5V1ynse/YiaE/C+rEotSij7tat4Yhr/B9kOFTst1wq
         QEZbiVcClXmY1QbQuyJP7lCk7vvbUGCDa5CI6OIzqBAoLAGGjv8sDt+sWXkCcvokxv4f
         ZECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M0KzjL35Ohrpi1hBTpVC8GSlPU64AFcqfskfaAZgBa8=;
        b=PuoRWcdVuQ8mkPoAtzprXgxON+0N6F1dx9/mGx0bT+GzMG2YbCIl7BCekY8oNOXYVQ
         +EgwSbuLIGlIo3+/92Er/ur3to4xS9Nak51JW1pZ3QmQ91PxU2NprdGA+ABnsYvMW7FT
         Ma3B0hby9vXZAmk/ZyAmUVqg6CNgrtqP53v9EMdPt7uIANbPfHulf0sZy9co5rVUtyvz
         /XMnoOhDGGJVMMLpgFFoogxMXP+/+1KPOGD2SXbrmOauUYkAoJSJX0/0+G+gIHZ2rl1C
         v2BbBF1P1WsjvTZepUROXv1xGNlOdHiJNwyEt4+sNASbWozKI26S+mv6uBwKKohDqSol
         TY0w==
X-Gm-Message-State: AOAM532NQw7VkqHasBqIKeruIYfrZP6KkFFsxBxnqsZufokkYScB1rUf
        8TbYw0mif8Fq2E4iqbFURDH3n61CAvFWW4TRcJ5v3g==
X-Google-Smtp-Source: ABdhPJzZPGYpZyuCNJYmdc/Gjs6hHb8CPs+tTvqBT9j22B8LxDuy/ic/fjVVunBaIQ4zJxYyyVsKbQk75yT+SfiISAA=
X-Received: by 2002:a9d:6d8b:: with SMTP id x11mr10119632otp.221.1600120391780;
 Mon, 14 Sep 2020 14:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <1597227730-16477-1-git-send-email-rnayak@codeaurora.org>
 <CALAqxLVQ1uB5Zy1DrFP6K4FgZ0U9rwGterhvzcTws_9O9wWE2g@mail.gmail.com> <CALAqxLUr9ahtxkQSXnBG7k092bXxM7yANM0RX7jyVksYzhi-ZA@mail.gmail.com>
In-Reply-To: <CALAqxLUr9ahtxkQSXnBG7k092bXxM7yANM0RX7jyVksYzhi-ZA@mail.gmail.com>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 14 Sep 2020 14:53:00 -0700
Message-ID: <CALAqxLV4ZiqWZaZV5E6KJQRoqrvWrSWqvVTfkk-P_DDNpdcioA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sdm845: Fixup OPP table for all qup devices
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        Amit Pundir <amit.pundir@linaro.org>, tdas@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 7, 2020 at 1:37 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Mon, Aug 31, 2020 at 9:04 PM John Stultz <john.stultz@linaro.org> wrote:
> > On Wed, Aug 12, 2020 at 3:23 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
> > > This OPP table was based on the clock VDD-FMAX tables seen in
> > > downstream code, however it turns out the downstream clock
> > > driver does update these tables based on later/production
> > > rev of the chip and whats seen in the tables belongs to an
> > > early engineering rev of the SoC.
> > > Fix up the OPP tables such that it now matches with the
> > > production rev of sdm845 SoC.
> > >
> > > Fixes: 13cadb34e593 ("arm64: dts: sdm845: Add OPP table for all qup
> > > devices")
> > > Reported-by: John Stultz <john.stultz@linaro.org>
> > > Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> > > ---
> >
> > Just wanted to follow up on this, as it's still missing from 5.9-rc3
> > and is needed to fix a bluetooth regression on db845c from 5.9-rc1.
> >
> > Amit has already validated it (on PocoF1 as well), but just in case its useful:
> > Tested-by: John Stultz <john.stultz@linaro.org>
>
> Hey Everyone,
>   Just wanted to nag folks on this again as it is still missing from
> upstream and resolves a bluetooth regression from 5.9-rc1.

Hey Everyone,
 Just your weekly nag on this patch that is still missing upstream.
This patch fixes bluetooth regressions that started w/ 5.9-rc1. It
would be great to see it land before 5.9 is finalized.

thanks
-john
