Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50ECC1E4A36
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 18:31:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387775AbgE0Qbk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 12:31:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390644AbgE0Qbk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 May 2020 12:31:40 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA305C03E97D
        for <devicetree@vger.kernel.org>; Wed, 27 May 2020 09:31:39 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id u40so2145168ooi.11
        for <devicetree@vger.kernel.org>; Wed, 27 May 2020 09:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NxBsCG/ZBuR/tyqaxmR6a/8NFdkSmWg7ajuut4LGUfA=;
        b=b+lMbZsTfHmILZwHDEtj1yw5O5x4XX8s8XDpQgw6wNybE3W4LYHAhyCF7+ColEcDPP
         EMpWb/iriXb6UFyDBun0GZHcOX9dj5oZtlk/x3CfmrrFxUpUR4gQInaul157f1p0VAM2
         ZzoG4NNhcOx5vebpK+p2ZCWLGrl2Zs/ikcDCyFgPdAkUUa1IizKTJZsCnFEZoeORqFRH
         B1aJWppTBUxeJ30/7H+ilLGyRJ28SZxnH5gmxBTTsvU5ftLm1x6fxWn9snpQoLnQGlxD
         AJiGz37SjZeKPKmZp2pZ9bepEp6aYhor5u8bWUeCmh6WRmlbdLuU+hV87tRQ3iDcywh0
         zSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NxBsCG/ZBuR/tyqaxmR6a/8NFdkSmWg7ajuut4LGUfA=;
        b=UZExA1CxC7MxwRL8KlSLB8y7SUbepO1K1UAF4B2g0B8FJ61wLLJLWIObVYPIYVPYkU
         CciJrndqXwjX1uFeHvD5rDgu8Nm49CD0QinY7s8tIjQe0G5i6VBCfmtzHknONV8aQ9MZ
         AOY/R3dCyhtVWXtVvBq+xe1Nl1CD9wW0j3mRks5g9RDBjj7m4sXC6r9+RslC9mWRtmv7
         5b7MUEcBXsdKLI4HMjcI+I98At7pwDdRLTLu/BOikZiKX7BnoDaucIiig97zjZVWrxdZ
         s31boXG+Bz9Seblh5ZkYKLMAjiO3xVRTi0e7TLu8EHD/ETG2uHUwGtYGcMjOIAcM53Lp
         aU2A==
X-Gm-Message-State: AOAM533p7HkEac0hCK7BJcCb5Nm+TP2eWji55zeWOn0h754G40AJz+Da
        R/SfyEvol9W2JBEPKc3aspkIPfqWkXkLb+4nxmq6rg==
X-Google-Smtp-Source: ABdhPJxBq8QeDQCR39v9fZ3sYUGIbMy8dJJlxs9vQSgoBRg+s9wGSUND1yy0xbmGrnb1KxTaR3HXasfqVFSVK/OIfYQ=
X-Received: by 2002:a4a:909a:: with SMTP id j26mr3710376oog.21.1590597098962;
 Wed, 27 May 2020 09:31:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200508204200.13481-1-sumit.semwal@linaro.org>
 <20200508204200.13481-4-sumit.semwal@linaro.org> <20200511103937.GC8216@sirena.org.uk>
 <CAO_48GFGpHeu_xb9XT9CFMOSUOJgRrb-z_KZ3-r3X78s-2ddjw@mail.gmail.com>
In-Reply-To: <CAO_48GFGpHeu_xb9XT9CFMOSUOJgRrb-z_KZ3-r3X78s-2ddjw@mail.gmail.com>
From:   Sumit Semwal <sumit.semwal@linaro.org>
Date:   Wed, 27 May 2020 22:01:27 +0530
Message-ID: <CAO_48GF0tjZDmTS+Fa4fv+cfH4skFZP_a9A=P7D0b_si4AFj5A@mail.gmail.com>
Subject: Re: [v2 3/4] regulator: qcom: Add labibb driver
To:     Mark Brown <broonie@kernel.org>
Cc:     agross@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        Nisha Kumari <nishakumari@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, kgunda@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Mark,

On Thu, 14 May 2020 at 16:57, Sumit Semwal <sumit.semwal@linaro.org> wrote:
>
> Hello Mark,
>
> Thank you for your review comments!
> On Mon, 11 May 2020 at 16:09, Mark Brown <broonie@kernel.org> wrote:
> >
> > On Sat, May 09, 2020 at 02:11:59AM +0530, Sumit Semwal wrote:
> >
> > > +     ret = regmap_bulk_read(reg->regmap, reg->base +
> > > +                            REG_LABIBB_STATUS1, &val, 1);
> > > +     if (ret < 0) {
> > > +             dev_err(reg->dev, "Read register failed ret = %d\n", ret);
> > > +             return ret;
> > > +     }
> >
> > Why a bulk read of a single register?
> Right, will change.
> >
> > > +static int _check_enabled_with_retries(struct regulator_dev *rdev,
> > > +                     int retries, int enabled)
> > > +{
> >
> > This is not retrying, this is polling to see if the regulator actually
> > enabled.
> Yes, will update accordingly.
>
> >
> > > +static int qcom_labibb_regulator_enable(struct regulator_dev *rdev)
> > > +{
> >
> > > +     ret = _check_enabled_with_retries(rdev, retries, 1);
> > > +     if (ret < 0) {
> > > +             dev_err(reg->dev, "retries exhausted: enable %s regulator\n",
> > > +                     reg->desc.name);
> > > +             return ret;
> > > +     }
> >
> > If this is useful factor it out into a helper or the core, other devices
> > also have status bits saying if the regulator is enabled.  It looks like
> > this may be mainly trying to open code something like enable_time, with
> > possibly some issues where the time taken to enable varies a lot.
> >
> Makes sense; I am not terribly familiar with the regulator core and
> helpers, so let me look and refactor accordingly.
Does something like this make sense, or did I misunderstand your
suggestion completely? I'll send the updated patches accordingly.

--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -2353,6 +2353,7 @@ static int _regulator_do_enable(struct
regulator_dev *rdev)
+       /* If max_time_poll_enabled is set for the regulator,
+        * Poll upto max_time_poll_enabled time to see if the regulator
+        * actually got enabled.
+        * For each iteration, wait for the enable_time delay calculated
+        * above already.
+        * If the regulator isn't enabled after max_time_poll_enabled has
+        * expired, return -REG_ENABLED_CHECK_FAILED.
+        */
+       if (rdev->desc->max_time_poll_enabled) {
+               unsigned int remaining_time_to_poll =
rdev->desc->max_time_poll_enabled;
+
+               while (remaining_time_to_poll > 0) {
+                       /* We've already waited for enable_time above;
+                        * so we can start with immediate check of the
+                        * status of the regulator.
+                        */
+                       if (rdev->desc->ops->is_enabled(rdev))
+                               break;
+
+                       _regulator_enable_delay(delay);
+                       remaining_time_to_poll -= delay;
+               }
+
+               if (remaining_time_to_poll <= 0) {
+                       rdev_err(rdev, "Enabled check failed.\n");
+                       return -REG_ENABLED_CHECK_FAILED;
+               }
+       }
+

Since atleast in my use case, the delay is really enable_time (time
before we could check the status register), we could reuse the
already-calculated 'delay' based on enable_time?
>
<snip>

Best,
Sumit.
