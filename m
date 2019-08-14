Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67EFB8D198
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 12:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727722AbfHNKys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 06:54:48 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33414 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727723AbfHNKym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 06:54:42 -0400
Received: by mail-wm1-f67.google.com with SMTP id p77so3058801wme.0
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 03:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=tT1WBkErjAogTXzuIr64b4Ipw6zSwCNCCPdgxI3cPic=;
        b=SdT02fPizF4VsboyubypNXDpHVLnbdZbIsuPH+ovAlV5oBYyfxf+IqaHkW/lXVSOgg
         kwC+GscgHbhE+BM34hlIzT1cHQV6ngH7tNC6TG6DmwZgNBLe2MCZ3Jmg07GXmPHYOjbr
         k8NQN/NtlfNnCZyMXOYOJxsiWf1JmP53Mq5BITPOgRDzYyO3Cs8pF9uq2ZIMQNO8QJF9
         o884eKSq00ZGTYrgQWUjcD9Rs6p7yHWWqjEpnGMmjiHchQLPx/2yM62XgRZYSEQ7tqg2
         rDfQ/uBtjTxdZcZUQXerWQzzjolGQb0sTjZZnUuqFYftQRe7QZM7gpY1vADKoRV3FXTd
         puUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=tT1WBkErjAogTXzuIr64b4Ipw6zSwCNCCPdgxI3cPic=;
        b=t5hs5eNlFUp/LlP1iMAz+Wzo4HGW3GQsxPlck/WFW3b0w4bPiMUxn8CSptBFEtkDeW
         jGRbgG08RqLpxdH/W/99XJaxSwo82l7vsb39p56itM6Bmm9y5gqgF/3Dz/DEbmetLZiR
         FiIWyXA3KzkDHuR0nLHvyVbqjpSzg2+h0ODmqzaEVhDxu8WVzzCLY9C3SNCb+lCPbt46
         Nx0gOddK+GWR/bSaVf2kHGU3kXtRy2hSZuii/cmCZcgtTxDdZpf+wCocmHkjYzbCq9nr
         hRChaOC+Nr8UptsubhxOis4BiXXQQzrmoDkjD+/KgZ+3qvHqCkT9RLN0xSTLxXUpubrl
         kIMg==
X-Gm-Message-State: APjAAAXmBKrxGdrvV4FfnSDeIvR/MZKYfO/FpoxrVbIFeaLAv2vZX9hz
        0xgSNytOBHZNEfgp07K7pK5toQ==
X-Google-Smtp-Source: APXvYqyKLin58q1G/qvQ8vEt+Ct9hq4RH5l/rpi6T0U8tdIutWirP+pgkhY/ww5FQqvj81PeYCpPOA==
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr8019337wme.43.1565780080798;
        Wed, 14 Aug 2019 03:54:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id e9sm2998336wrm.43.2019.08.14.03.54.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 14 Aug 2019 03:54:39 -0700 (PDT)
Date:   Wed, 14 Aug 2019 11:54:37 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
Message-ID: <20190814105437.GE26727@dell>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
 <20190812101504.GF26727@dell>
 <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Aug 2019, Linus Walleij wrote:

> On Mon, Aug 12, 2019 at 12:15 PM Lee Jones <lee.jones@linaro.org> wrote:
> > On Mon, 05 Aug 2019, Linus Walleij wrote:
> >
> > > On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > > Guide readers away from using the aspeed,g[45].* compatible patterns.
> > > >
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > >
> > > Patch applied to the pinctrl tree.
> >
> > With my Ack?
> 
> Sorry no. :( Was I too trigger-happy?
> 
> Usually I take Rob's ACK as authoritative for anything under
> Documentation/devicetree but if you have concerns about the
> patch from an MFD point of view I will revert it pending further
> discussion.

No need.  I would have Acked it.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
