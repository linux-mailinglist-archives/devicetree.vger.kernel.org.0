Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2AD674736
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 00:28:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbjASX2A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 18:28:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbjASX17 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 18:27:59 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7963B48A1E
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:27:57 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id e16so3830004ljn.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sparkcharge.io; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kDmL0K++1s4Mya2O7kGY5mEjqqYCgvB7aw/CJew8g1A=;
        b=H9de9Us+oCArxhPuh/jcI4Kqmlwh86mbB8kLQ3GkLQYmFNLghxvMaVGj6JgRoaIJQ3
         50BKzPWzTCyD2VzffNQWhueJqdyS1ha3CvqnbjZTdlhni1/Qzt+u5+7lSegxNAz4FV5F
         YD/DuzVbRsh51NkdsNatjpvUNyhrJN0kFRgbKg5MM7PmpbIwkZq1/drTdM4C1BhFqSZn
         C/ttYQNN1WrNzmDnRpfb+D4QZ5RoUwcULM34aUKscTgS+5iOFEDH2Bhaio6FfJ599Ecp
         0W9x3pNDybRvG2QiTGRafAjekyAmocC6whnzZLJgnQY6vkVNalEZQ5uuEIWW4AxrdrvC
         lSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDmL0K++1s4Mya2O7kGY5mEjqqYCgvB7aw/CJew8g1A=;
        b=acO/BgTcG/v5aJnzsFRYJmO9OHCgWmzpjC1vWT4LExtXvDYLf5Ls23RAaC2sN+4PUE
         juxzA91Bnn7lDHkSrA+cwvrlPhvvAuD2+N4F40ribr0bqIppqSjoF8vw492m0GlaB6ye
         JyOlFwc87SYyFMLByZ1j/bVslUGH36EwzmT7B60AtfJctkleRkhrju5jqHWu9pFLhRdN
         jL0r0BasgSz7YXxq50aB1qQy8uC7ZA5exbIc4mwEZJfm/8eROK16DlXrLXdOjcETeKT1
         kuRsf+137wL/jBUGLrRuU3YyNMUeERyxpnPAXyLt3NRGmRJ3W4jRJxTh8CRjSkUT9m6H
         m9FQ==
X-Gm-Message-State: AFqh2kok/UOkb/sNkldu77dX7cOt+/Cm3we3GfRHmT3jjkLOjUmKw9b7
        U0tv9kmlA3Ympih5w4P/uRmFF7DH9+SjV6gDtWtqGA==
X-Google-Smtp-Source: AMrXdXsc63eeOG5QbM3YICUOh1tZoXR66/wQ9YOZ202aHSDWYdO/MhMACQJCFcKE6uC/PYsgEh7sGIjSLPmxCGJpFYA=
X-Received: by 2002:a2e:9449:0:b0:28b:9755:77a with SMTP id
 o9-20020a2e9449000000b0028b9755077amr1230879ljh.152.1674170875783; Thu, 19
 Jan 2023 15:27:55 -0800 (PST)
MIME-Version: 1.0
References: <20230119213903.899756-1-dennis@sparkcharge.io> <Y8nBloQfBPK3t5ce@mail.local>
In-Reply-To: <Y8nBloQfBPK3t5ce@mail.local>
From:   Dennis Lambe <dennis@sparkcharge.io>
Date:   Thu, 19 Jan 2023 18:27:44 -0500
Message-ID: <CAKYiA1Dr0TAmsqDf1wMeeysN4N8K+KJL6onCgQL98LVV5L7Vmg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] rtc: Set M41T82 & M41T83 xtal load capacitance
 from DT
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Atsushi Nemoto <atsushi.nemoto@sord.co.jp>,
        Gary Bisson <gary.bisson@boundarydevices.com>,
        Javier Martinez Canillas <javier@osg.samsung.com>,
        Troy Kisky <troy.kisky@boundarydevices.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 5:18 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> I need to find time to think about it because while setting the analog
> trimming statically from the device tree solves your immediate problem,
> it will also remove the possibility to handle it from userspace later
> on. I would really prefer this uses the offset interface or a better
> interface that unfortunately doesn't exist yet.

Thanks for letting me know what you're thinking about this. I think I
see what you're getting at.

However, I think this is more complex than either of us had
considered. The M41T82 has two different calibration capabilities:

1. Digital calibration. This looks to me like it behaves similarly to
the digital calibration feature of the M41T00, which ds1307.c exposes
through the offset interface. The M41T8x driver doesn't currently
expose the digital calibration register at all, but if it did I would
agree that the offset interface looks appropriate.

2. Analog calibration -- that's what the datasheet calls it, but the
range on it is very big -- 3.5 pF all the way up to 17.4 pF -- and
their reference design uses it as the only xtal load capacitance in
the circuit. Most of the values you could set for this would be wildly
inappropriate for any given design's choice of xtal oscillator.

Between these, I don't know if you'd want to expose just one, the
other, or some synthesis of both via the offset interface or some new
interface.

I'd make the case that the xtal's required load capacitance is a
hardware requirement that's appropriate to configure via the Device
Tree. Even if you did want to allow some amount of runtime fine-tuning
of this register, you'd still want to document a rational starting
value chosen based on the hardware.

I agree with you, though, that if a runtime fine-tuning feature were
added, we'd have to find a way to choose whether to initialize the
register on boot or not, so that we didn't overwrite the fine-tuning.

Just to demonstrate something that could work, and would be
backward-compatible with this patchset, here's a hypothetical design:
* dt-bindings: add quartz-load-femtofarad-tuning-min and
quartz-load-femtofarad-tuning-max
* Limit run-time tuning adjustments to be within that range
* Only overwrite the analog calibration register on start-up if its
value is outside that range

After thinking through all this, I'd still advocate for merging this
patchset in some form and leaving integration with runtime APIs as a
potential future enhancement. I look forward to hearing your thoughts
about it.
-- 
Dennis Lambe (He/Him)
Lead Firmware Engineer
sparkcharge.io
