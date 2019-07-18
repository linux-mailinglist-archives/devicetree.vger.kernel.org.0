Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E89B46D246
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2019 18:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387763AbfGRQqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jul 2019 12:46:43 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:45178 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726608AbfGRQqn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jul 2019 12:46:43 -0400
Received: by mail-io1-f66.google.com with SMTP id g20so52461910ioc.12
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2019 09:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TAlbIyymfZNkl7yksWgw8jwEXv/YyuJyJF2ZpI8avBU=;
        b=Hj8MOVIwPyg22FhAteR+5dRP/oScFNTLPZy1R2S/xXmwnrdZ6TxhAupl4hJ8ok3SQP
         Hp69WIQCQJvmQhYNcOOPU6qhx3niPsn/b39WGnYH1ZVQPLSZ9w4pblbASu/GRiQukXQl
         kALkkQRGSPOds0ZYFrFBVBgy5N5Iwt2CNoG4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TAlbIyymfZNkl7yksWgw8jwEXv/YyuJyJF2ZpI8avBU=;
        b=TJ2FEf6piQ1QPKbfAemhnYJvoF/ROEnajnBl40Dv4JTxiambn6lpe6+j8+wC3idLRC
         OP4r+dt53m6Pifv2FN3yMsrfYwwcYDLEzuIQ2PZtbrxyx6TAWMxDpwDLCxUGxSWjWJRk
         E6TMYweKIOEpwqpwW6vkho6WfXMEnyE3or0V2BM/FRjuSz0fK8ytJQ1gvg1qzlL9WqrV
         sKHqYKUAgIUoj2b7WtAJos456oou+6OCWjEVtAdY9dO4UdNObYMITqrMIyKQmYOEpGZh
         RRnmAXrzIkBe1aKV7Q35v/0Sne/nfo1wmB4JWmjEW9k6zZemfiy/eGDyrJMIG7rZRd5x
         RYQw==
X-Gm-Message-State: APjAAAUnTJxU4eNIQz6E8ZLgdmi59JQWeQUpaO+Gzp4kC/Fmp+OZzO3w
        2Q9UUomMUpEIHKM4EgIqTu9FXbZ94VwsGf3cueF/nO/J
X-Google-Smtp-Source: APXvYqzpdpm3KGVnLha0U6+iptqQCL3xOtOk973C+aeEje1Ffp7OXF7uXrq2rxIDU4BAZkkWwvrgSCYz35dXS7s0SmQ=
X-Received: by 2002:a02:cd82:: with SMTP id l2mr48974411jap.96.1563468403006;
 Thu, 18 Jul 2019 09:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190717191926.GA4571@localhost.localdomain>
In-Reply-To: <20190717191926.GA4571@localhost.localdomain>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 18 Jul 2019 09:46:32 -0700
Message-ID: <CAADWXX8VMDJao2mH2hk2omhLGzpTMRJCAtRRavFbykMaLRfLhA@mail.gmail.com>
Subject: Re: [PATCHv3] MIPS: JZ4780: DTS: Add I2C nodes
To:     Alexandre GRIVEAUX <agriveaux@deutnet.info>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ralf Baechle <ralf@linux-mips.org>,
        Paul Burton <paul.burton@mips.com>,
        James Hogan <jhogan@kernel.org>,
        linux-mips <linux-mips@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Your patches lack a sign-off, but the reason I am emailing is that
they get marked as spam when going through the mailing list because
the DKIM is bad.

The email does have what appears to be a find DKIM signature, but it
adds _way_ too many headers to the list to be checked, including the
"Sender" line, but also things like "List-Id" etc.

Which is completely wrong usage of DKIM when you go through a mailing
list (which is _supposed_ to change the Sender field!).

It looks like somebody mis-understood what DKIM is about, and added
all the lines they could find to the list of DKIM-protected headers.

You should generally protect the minimal core required set of headers:
From/To/Date/Subject/Message-ID etc. Not the headers that are
intentionally going to be rewritten by any list you might want to post
to.

               Linus "hate spam, try to fix dkim" Torvalds

On Wed, Jul 17, 2019 at 12:20 PM Alexandre GRIVEAUX
<agriveaux@deutnet.info> wrote:
>
> Add the devicetree nodes for the I2C core of the JZ4780 SoC, disabled
> by default.
..
