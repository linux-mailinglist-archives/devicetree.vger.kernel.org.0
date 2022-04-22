Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3691050C2D9
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:09:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232951AbiDVWhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233025AbiDVWgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:36:43 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B37C6228F02
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 14:51:03 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2ec42eae76bso98706467b3.10
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 14:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I6IucAW2vKmMlZoXu5E0+/gmEChaQTXcva9X1hww8Y4=;
        b=SGmEdvPf+mBAPoT9mdL6g4e+foKc3ZF0arakcfTnLOFRfmr9f+Mvu1BE/2iclcIlFc
         OXlCjRiiYgeivc6aYfz8pF50HM04OOwjOBMmqArl9wtTwzQ1L9mURCWZIw+Bb/Y7B1HP
         mtiI8WM2tM2hlMMnEoLRVQsVqsCT5YLY53HAKikQ11NiQ3Uz3dv+pUxQRnByLKmQ+wMQ
         q4/0IL8asW9p44fpkXSpm2x/c7a0B3a17mQLQHx4Ws74JuEJqASLf+D7YJlXQTlIr38g
         FbkdvszCD3YRDBn+bnTj9Fei8itEt3HdcH94tj/R6pn6zH+33Z+KfOHHwbjFdjqJ/sa5
         e44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I6IucAW2vKmMlZoXu5E0+/gmEChaQTXcva9X1hww8Y4=;
        b=dc3fGeMlLlx2GSBcwSCU5rJD88i8jIuB64YBWmL5GWszsFZo7G5WzXsZwxR7YLULT/
         zZcJm4LKoMtTwHt2gcvYbDsFCLTAKgnCZ+iTpXrgAFpjT+gr0QfiacVqZhsM0M3kdliB
         xtyyVBEIFlFr96gyoMBJY3tSYG2xH5vjcCOt1rNWPn0Nlwfl98SGP0XM1niTaNsOURCU
         u6NswpTThP4KX6v3+bmDCwcMilpdTL47mefn3/1SysbDbIHs5AHT17ob7PRMePBvWM8z
         B+Pbs7gPareuLL9PcP6s8AWPpviIQXhQh0t847reBaOZkZEKwdORmuv+7G5rSzX1jufh
         nicw==
X-Gm-Message-State: AOAM531FGk0AVfQrq5ZEqjWEZZckXr2g4FthPzO5sk/pzKbTB+QyaJbt
        79TZ4EpurKBKYVxmeWze7nyqrQgXHkqwXNB/gtq58z6/4uJORw==
X-Google-Smtp-Source: ABdhPJylKvNNvBwB+dFLvzQwhIDFpcwup6UmBKab4gJdVcRTbFZkzvRJostPnnffKRpr78h+kGA1q6K6XyEYwMdnxww=
X-Received: by 2002:a0d:c4c2:0:b0:2f1:6c00:9eb4 with SMTP id
 g185-20020a0dc4c2000000b002f16c009eb4mr7127206ywd.448.1650664263007; Fri, 22
 Apr 2022 14:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220414214337.311880-1-linus.walleij@linaro.org> <f4deb182-ec18-6744-2c4c-adaed4ef7a33@collabora.com>
In-Reply-To: <f4deb182-ec18-6744-2c4c-adaed4ef7a33@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Apr 2022 23:50:51 +0200
Message-ID: <CACRpkdbZnWJgkS2a0xXs_WG40jz6+aTSPt743Zigd0KZ8R=yww@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gnss: Add Broacom BCM4751 family bindings
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        David Heidelberg <david.heidelberg@collabora.com>,
        Svyatoslav Ryhel <clamor95@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 18, 2022 at 1:19 PM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:

> What are the chances of seeing the kernel driver for BCM4751+?

The kernel does not normally drive the GPS. The kernel has a small driver
dealing with hardware power on/off of the GPS and exposing
/dev/gnss0 to userspace.

See Johans lecture at:
https://events19.linuxfoundation.org/wp-content/uploads/2017/12/The-GNSS-Subsystem-Johan-Hovold-Hovold-Consulting-AB.pdf

>  There are
> myriads of Android devices using that GPS chip. Previously the
> proprietary firmware interface of BCM4751 was an obstacle for addition
> of the driver to upstream kernel, did anything change?

Actually there is nothing stopping us from anyway merging device tree
bindings, even if no driver is on the horizon for Linux. The DT bindings
are not a Linux kernel thing. Actually we merged bindings like that in
the past. It makes it possible to create complete device trees, which
is nice. A driver for Linux can be slotted in at a later point.

Anyway, that is the boring answer.

Many if not all GPS:es (as all Wireless chips) have proprietary firmware
interfaces. This is normal. GPS:es are special since by tradition the
stack using them is in userspace. There exist free software userspace
stacks for misc GPS:es.

gpsd is the most common userspace daemon for GPS.
gpsd will then talk to /dev/gnss0 as any other TTY IIUC.

Replicant has a free implementation of the "MEIF" API for this GPS,
I think what is needed is really for someone to pick up, polish and
contribute that to gpsd
https://git.replicant.us/contrib/PaulK/bcm4751/

Yours,
Linus Walleij
