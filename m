Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F69836034
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 17:19:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728184AbfFEPTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 11:19:49 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:36242 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728089AbfFEPTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 11:19:49 -0400
Received: by mail-lj1-f196.google.com with SMTP id i21so8938982ljj.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 08:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=22hufaH3Q5GijUkof2n1pKMQKsh43fPBzC3gxcBif9M=;
        b=nq4k0NL3ENycKEi29BxWZsSxh+bQTnU1+dEa7P9RDoxs7aGxeP3oIjYtGjKpQpRszP
         RO6h9NQivWAo72wxZmYNu/nKtNq5d+3fZCsSZvPzmzYW6bmHpae0EBAA6fO5RdNayP3j
         EN99Dsg0TjHcN7QHL3fFPR913zE4JUW6/JOkqoYKv6b45bn67JjTfZoBAGxmP3Huox9Z
         Vw1RYcnaY/TQ9Iw8VLpthU9wJsu5SJwjlvtbU5Gs5zvt2aNaggy9PF/7gJIHAIIGFPpO
         PhSALNFY4adEWJK+8HJNOe0WUrtTp2FCJiRT/gw0noLwSzLF9N9y0A/iKNgHX6TbY5F0
         BNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=22hufaH3Q5GijUkof2n1pKMQKsh43fPBzC3gxcBif9M=;
        b=c0yQGYujE0aMyjvfFzsAjnDubXOdIQCRB85oLeLh5wcIWwVx2B4DUjZ5TPpdh3/2mj
         FynqlM82Z3/f3D/6MDYe7jx6zgNJ3/IKHlNI2AaoibTFHhENjJ+MNbD/I5HvaXj/d0/u
         4MI/7e62F0LnHte60njHsEmP/Lgsn5uSrdFOCmpL9tMN2rN0EnLaNIiKrwEJflW5gSSB
         meCW1ldUVVBwW3EPiTt0DalG0/1nlpl+pX4SpfMprq2gHHt3cWZuMY+tMc4omaGjZdSu
         rZX2+/W6vMqubjHtxN1kUZl9WziaRkV9rrW2xxQ06AKbnwe6Ok5+8K5se6jjY37BW4sU
         uWuw==
X-Gm-Message-State: APjAAAXdrHCpIuO1rn8tZiPrUIgsiOah3cQqSaEO5fgzsXm0/Vbcq3qw
        8mg/3YkIXkosR6rxtMJGIz4+ld/5oqMcu/5dswM=
X-Google-Smtp-Source: APXvYqxvgj6ZW9rKAvsmv5sC2dSDN1uEvfTtZl+Q3CGyV2RW/OLl6vkiaYubj30yO+nkm9RMk4pvHb+Ekj+UeNsto3Y=
X-Received: by 2002:a2e:9284:: with SMTP id d4mr21718777ljh.26.1559747986951;
 Wed, 05 Jun 2019 08:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com> <20190601070718.26971-3-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-3-pbrobinson@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 5 Jun 2019 12:19:38 -0300
Message-ID: <CAOMZO5AtsCBdxD_O_ke8hEZMx8Mzhj1V1T5XZ0RkSw+y7+VG0g@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for
 onboard sensors
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> The i2c2 bus has a external plug which enables the easy connection of external
> "bricks" with sensors of various kinds, while i2c4 on the Extended/Full boards
> has a pair of on board motion sensors, accelerometer and magnetometer on one chip
> and gyroscope on another so it makes sense to enable these i2c buses for use.
> Tested on UDOO Neo Full.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
