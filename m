Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1003233DA
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 23:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbhBWWk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 17:40:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232690AbhBWWfr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 17:35:47 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C38C06174A
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:35:07 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id f8so10751419plg.5
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6JxJtLrjQ/Nyr5fh6rK5tg3DDo4mCFKKxTbehSm9m2Y=;
        b=NkdjnqbDYp2asX/uD3vRQ3xJ5e5ui/iQKPk8pI5rD/D8Xtxmw2No/Kz1XWRqhbzLDw
         /SogjrCeHPL9ShRMpoV7QTtOH0mMtZVjDZmnkJrx3UkdwH5o6xAEhNcPWaylu5Jc/ki1
         cimr4KXEHNb4vfdUcsRygiPBdre52VB1satKujeT/rt7IbGM20tSs3Bu3m2Sz3ci1HKY
         yS5DR4R9jvvIbsnU3LUEP+drjhRNdq+W59KLQ/q0n2NVORBtdLSRCq7BhMvMp5jsxos/
         alRRmw+wZa8+VKmvudNcvbBUs8awZRQDY/o+V967jtgxtMd6Vorl11OYs4dza+AmYTAw
         HeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6JxJtLrjQ/Nyr5fh6rK5tg3DDo4mCFKKxTbehSm9m2Y=;
        b=Quhc5WKt/L/O7en8I0TYQuUQaldSDc4FfuOK9luYaC8PT8Mokjsd6ZSYKb0FbYSEQd
         c1qTOTAtgtNlDgspyCkWhSwF38DznwkqHn1szIrXnCozgF3EOn4e+JwMNkPOxg+5XUlA
         eKwnBYorgOM+xuRAX9mBGE5uw7LkYlnsguEFH5b52jSvX6haJoZO555WrbAdGxz7HmZa
         oEXN+YI8yrDBC2WEmB44kA+CqCfjPjRosv5PcLZgyLKHbjF0zUBuAUPvkc4TT7BV1tq3
         bc0HU56JmS++4A/dcDvMbCX647EpxiYwYqXszzCw8/S7ucD+KJ4ga2x6wI9k06C3vpqD
         /JqA==
X-Gm-Message-State: AOAM531uR6zgqvuOUBRyY+vCsuDtWhTUYkRKbDvEVBqsal5di3i1Ym7T
        qcf5flNCRw8W2I46Za+pwS5OkkS1vvxhd3pdsbwVAw==
X-Google-Smtp-Source: ABdhPJwffvRJctzUSP0CFLJEA0ALFcFH0gt4tYD2lVrQrJ56VkiXvtTQuK2R2zdN2Dtx0ceMdFzSuDeeuKCvkcHDWrI=
X-Received: by 2002:a17:90a:e64a:: with SMTP id ep10mr1093167pjb.20.1614119706521;
 Tue, 23 Feb 2021 14:35:06 -0800 (PST)
MIME-Version: 1.0
References: <20210216182735.11639-1-jae.hyun.yoo@linux.intel.com> <20210216182735.11639-3-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20210216182735.11639-3-jae.hyun.yoo@linux.intel.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Tue, 23 Feb 2021 14:34:55 -0800
Message-ID: <CAFd5g46K4=xPLFnvnAKY0MibU9s87Hd_OpYupYQwZ+Yq=W2-mQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] ARM: dts: aspeed: modify I2C node to support
 buffer mode
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
        Cedric Le Goater <clg@kaod.org>, linux-i2c@vger.kernel.org,
        devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 16, 2021 at 10:15 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> This driver uses byte mode that makes lots of interrupt calls
> so it's not good for performance. Also, it makes the driver very
> timing sensitive. To improve performance of the driver, this commit
> modifies I2C node to support buffer mode which uses I2C SRAM buffer
> instead of using a single byte buffer.
>
> AST2400:
> It has 2 KBytes (256 Bytes x 8 pages) of I2C SRAM buffer pool from
> 0x1e78a800 to 0x1e78afff that can be used for all busses with
> buffer pool manipulation. To simplify implementation for supporting
> both AST2400 and AST2500, it assigns each 128 Bytes per bus without
> using buffer pool manipulation so total 1792 Bytes of I2C SRAM
> buffer will be used.
>
> AST2500:
> It has 16 Bytes of individual I2C SRAM buffer per each bus and its
> range is from 0x1e78a200 to 0x1e78a2df, so it doesn't have 'buffer
> page selection' bit field in the Function control register, and
> neither 'base address pointer' bit field in the Pool buffer control
> register it has. To simplify implementation for supporting both
> AST2400 and AST2500, it writes zeros on those register bit fields
> but it's okay because it does nothing in AST2500.
>
> AST2600:
> It has 32 Bytes of individual I2C SRAM buffer per each bus and its
> range is from 0x1e78ac00 to 0x1e78adff. Works just like AST2500
> does.
>
> See Documentation/devicetree/bindings/i2c/i2c-aspeed.txt for
> enabling buffer mode details.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> Reviewed-by: C=C3=A9dric Le Goater <clg@kaod.org>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
