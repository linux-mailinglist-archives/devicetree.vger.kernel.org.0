Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E04E58C0E9
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 20:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726802AbfHMSl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 14:41:56 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:41455 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726231AbfHMSlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 14:41:55 -0400
Received: by mail-ot1-f65.google.com with SMTP id o101so23452377ota.8
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 11:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=fX5yjg/2zdiBezYuZ3iR/R/lX21Xnc3q+P+SkpxJPD4=;
        b=K0rfqc3MV9Ye1zNkcmZD56MLVzb20dfzFqvgae3GxR9n6zhp27voJQiAVbAkg7OMeq
         LOcTLMBRl/l1QO63J21y5UKSmHMIKItMSLpFLi5AobisxH8lGcy2xucbFyt2CHTTF13D
         LUIiB23JFws4kF0EgcyUj0Slm3cBtfaH4aosnUw58T1crgUCCkQac8s3oGE8Gpz/C13b
         G3+LRxwQlKxKbFG6OmQezQCg00OWxBRIi0dgwos5zcqkBF3l+a7GsrvPIfZSzHRJMd35
         4fty1YV/Y9SKrq1rgwPNXBRB7uobNf4vms7SfnK3T6B7j+k61AfuaKLk33gI1JHicpK4
         HFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=fX5yjg/2zdiBezYuZ3iR/R/lX21Xnc3q+P+SkpxJPD4=;
        b=UJDGsc/6Re1r/Wv6/0QO58qUBP/xaU2aNmow6b4YXiSqMYB37vdkt3c8RtFeymo6JT
         BxjX0mfeV0Vk6jLp298c9I2ORH6MeAo5czQzFspX8ObG82PTjuIvknY7uL8saMdlPAOD
         r5DAiRiJuSc6AL5sPoA3sfjf8cnXOK0NciAdxyEGkm3iOISFDP9BUKCwDXn5PI2JhWbm
         szf93Mt+XO+14XdYexU2WDFYIA7i7H/FlMDp/nK7RhSYaPttLY/O665fYeJPeRthbuva
         fkWFPIf5FFwLoyEc5Mr+9KfPB7k/xES4N8WW7foz+4EKMkgx5KSvDomhPJIVCGSTex7f
         sZ6A==
X-Gm-Message-State: APjAAAWjoOf4xtBEuHcWU7W+LpHKDAZwIOoFf1UHfd+TL7OL8M5n1i/E
        Q7orrp6js/C4Xi/2SJ6hZD69zw==
X-Google-Smtp-Source: APXvYqwqPZ5UQlBLYUIPuJNViu7vjL/d8NYkDxT9b3OHqwWDHdjO/dJHLuKBdIt2gWRUxAIpGp0PIA==
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr4841202iog.77.1565721714779;
        Tue, 13 Aug 2019 11:41:54 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id e17sm21413438ioh.0.2019.08.13.11.41.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 11:41:54 -0700 (PDT)
Date:   Tue, 13 Aug 2019 11:41:53 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     davem@davemloft.net, nicolas.ferre@microchip.com
cc:     Rob Herring <robh@kernel.org>, Yash Shah <yash.shah@sifive.com>,
        robh+dt@kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, mark.rutland@arm.com,
        palmer@sifive.com, aou@eecs.berkeley.edu, ynezz@true.cz,
        sachin.ghadi@sifive.com
Subject: Re: [PATCH 1/3] macb: bindings doc: update sifive fu540-c000
 binding
In-Reply-To: <20190812233242.GA21855@bogus>
Message-ID: <alpine.DEB.2.21.9999.1908131140230.5033@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com> <20190812233242.GA21855@bogus>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nicolas, Dave,

On Mon, 12 Aug 2019, Rob Herring wrote:

> On Fri, 19 Jul 2019 16:40:29 +0530, Yash Shah wrote:
> > As per the discussion with Nicolas Ferre, rename the compatible property
> > to a more appropriate and specific string.
> > LINK: https://lkml.org/lkml/2019/7/17/200
> > 
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/net/macb.txt | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Am assuming you'll pick this up for the -net tree for v5.4-rc1 or earlier.  
If not, please let us know.


- Paul
