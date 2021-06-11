Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9A9B3A4ADA
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 00:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbhFKWGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 18:06:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbhFKWGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 18:06:13 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E9B9C0617AF
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 15:03:57 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id w5so3098067uaq.9
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 15:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+k6yu0EKgTSGzDKIr5AqFTVoAHiwY6ckLd1jm14gRfU=;
        b=a6APAT/2Lui1xvc/FAzJf1etpCICuxX9GaFM4kLmW4l4rMIMtzhQF93ph8iHujEHoO
         RoJtE7ecxSIc4hKtHhhp/qhz4ekxcjH15Jvb8jcHhYD5i2hYbbSw3sexJueAZ6cwbuSn
         pVDcmHlNcP37jXpuX/WL1cW89cNiBM76xRRZIQNgfnLCiYyIxkomnwnLZ8lQphuQ4fEB
         IgxlmY7XgN1KJGQVzeX8V2KK1BXc1CC2qVjcFna2DbQ0Yg248ZhDOB8aamJaJlwwVN13
         RQhZGCBggY9EG8c/+rJS2CxvZ0piXG1rCjby0frIhxZZGCfvIs+gJad3Ke17Y//4fhqA
         JNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+k6yu0EKgTSGzDKIr5AqFTVoAHiwY6ckLd1jm14gRfU=;
        b=UePmxz0YDZGYhKQ1zr3AvaU2EJB+1BHONl2yxF3iB32Ws20XZ63WgdOH2xLm+79lTW
         6cUtAl7V9JBA9Pz0dHoa7H6z6sSeR7gPemLNDHCIkO7EC0uB6qBf4WPJet7rM+lyiJU7
         r14RmNcfTXyQFBT7BOXEKdQdncLHI9mqNfjymHuqQsTbEu7AEadvMXgavC4LU475cLVI
         VnJCy8hqYA/bBna9E0tkXCNO2SL7QxuNMNuE3w7oeXwIsE2b05acSAM6+qzuDlr7emiQ
         wHeduYOKgW0NXu8aXHr8kL3IlgdCCqX7oQM3q3wBdM4KqYZPBhY8VJYeUQ9p+eyzq0xp
         gGxw==
X-Gm-Message-State: AOAM531qJ/HpDJwOYfi2e7ZI9q8Q8r9bW/KmKMpEIHZ0nQg98rqQJA9a
        2ibs0e4B6sZ8/3K/1ZLyRbsTd5aIwBkaXcVaM6O/CYq9BoMh
X-Google-Smtp-Source: ABdhPJyYU6Mfmpbuu9gSw33cEwVQOoDSD/vimKLKw+xotkG/7FAKaogl7c4gUtf+vDgdUv17DWyAjyRZOxW/aUUQFBI=
X-Received: by 2002:ab0:710f:: with SMTP id x15mr5826827uan.74.1623449036923;
 Fri, 11 Jun 2021 15:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210602001449.780075-1-iwamatsu@nigauri.org> <20210610175034.GA2294595@robh.at.kernel.org>
In-Reply-To: <20210610175034.GA2294595@robh.at.kernel.org>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Sat, 12 Jun 2021 07:03:31 +0900
Message-ID: <CABMQnV+5Pk3TEgri-=Ebj15gVGBatOdYToJUOUZVu1jKN4mbFQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: clk: zynqmp: convert bindings to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thanks for your review.

2021=E5=B9=B46=E6=9C=8811=E6=97=A5(=E9=87=91) 2:50 Rob Herring <robh@kernel=
.org>:
>
> On Wed, Jun 02, 2021 at 09:14:49AM +0900, Nobuhiro Iwamatsu wrote:
> > Convert common clock for Xilinx Zynq MPSoC SoC bindings documentation
> > to YAML.
> >
> > Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > ---
> >
> > v2: Fix warning with DT_CHECKER_FLAGS=3D-m.
> >
> >  .../bindings/clock/xlnx,zynqmp-clk.txt        |  63 ---------
> >  .../bindings/clock/xlnx,zynqmp-clk.yaml       |  63 +++++++++
> >  .../mailbox/xlnx,zynqmp-ipi-mailbox.txt       | 127 ------------------
>
> Why is this removed?

My bad. I will fix this as v3

>
> Otherwise, looks fine.

Thank you.

>
> >  3 files changed, 63 insertions(+), 190 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/clock/xlnx,zynqmp=
-clk.txt
> >  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,zynqmp=
-clk.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,zynq=
mp-ipi-mailbox.txt

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org}
   GPG ID: 40AD1FA6
