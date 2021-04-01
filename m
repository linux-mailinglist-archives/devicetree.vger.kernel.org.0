Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECA8350EED
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 08:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233190AbhDAGRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 02:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233227AbhDAGQk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 02:16:40 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3023EC06178C
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 23:16:40 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id c4so1247807qkg.3
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 23:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/tdHq+eMgfvUCfgr19g4KGgjUw8dwNFaPcptJLMvv20=;
        b=d1tet9Y2otJ4bPKkudFR7D1GN4TSxbb31ttdrlkl/P3sIGNBKqc6I78rPuwagFZLLP
         91dZeX1IuFNgTohpD/7akTLAyWiZR/t0GCbC7hQJFaTYIzg/1yxYzN48AUTERaZYb92I
         d5X5ASx9YOH20slwp7tXU1V8OlvUf4JNjbmasNAhuntVXe11XdwFpLt/Pqm/VPF3LI98
         wj9AKLkB4qVEmBFKJposxVO3VlPRrmBgrjmHiJRND+jlasqobxNVWZF6L0k5Po8PJh5Q
         DK3ZIR+/syfAhiRsujKvn1J0W61ILlAfeucEfPwH7DPcWSxFLVCfg/WaEjEWdcWbeJQO
         TDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/tdHq+eMgfvUCfgr19g4KGgjUw8dwNFaPcptJLMvv20=;
        b=TGcONrEQOG2lt5S0z4qwVSeP9z2dGZ0C/PUCPWm+n672fhBLfeWdkUG0uIMa1DSQYP
         J4HGieAHV/+ytvhUQMvHz+NMudC4iqS+eqoeLjIiHNbgqzs7ms5vX2K+cJG2Thow1vvW
         IbGApAsdZ04YXsXWvE28+kpt/GnRpWtjt4oIHMfM5AuymRoMFjnu06SPqJpRU6MLJyQh
         reXxzgm2KxtylBlxRhGf7FTcvUKsMt9RDzakAn3LqZ0kV4qjUtAHrAjas64UlPXNiQXI
         mGQ/Zz14iuOMLQhNt1LzFDv+4JFki5nbYNGzaq0V9oHxixmIKu6s72njm6V7DNMuBKSL
         v5bQ==
X-Gm-Message-State: AOAM530SryOramssvsdqC97cgZa/1xRQIARD7Guo1BPSc31fV7NaE5u0
        mh7AsWbeInqKtpzRvO5ItGV+LRP9RsN6+3V9st0rUA==
X-Google-Smtp-Source: ABdhPJxN7gKZfahwJhOWLIepnEZQQrrtp1Bkzqp9sIf8uf8W7egGtdMcqMlqet9G2ktx96KkylccNRofqZFJM0jdU/A=
X-Received: by 2002:a37:66cd:: with SMTP id a196mr7046403qkc.374.1617257799357;
 Wed, 31 Mar 2021 23:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1615954045.git.greentime.hu@sifive.com> <161704512808.3012082.7539298875497991635@swboyd.mtv.corp.google.com>
In-Reply-To: <161704512808.3012082.7539298875497991635@swboyd.mtv.corp.google.com>
From:   Greentime Hu <greentime.hu@sifive.com>
Date:   Thu, 1 Apr 2021 14:16:28 +0800
Message-ID: <CAHCEehJyzsTOHpMhRQ4U3Ex+QiO8h2emBAq3ZemFrgqB-XRZNw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Add SiFive FU740 PCIe host controller driver support
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     alex.dewar90@gmail.com, Albert Ou <aou@eecs.berkeley.edu>,
        Bjorn Helgaas <bhelgaas@google.com>,
        devicetree@vger.kernel.org, Erik Danie <erik.danie@sifive.com>,
        hayashi.kunihiko@socionext.com, Bjorn Helgaas <helgaas@kernel.org>,
        hes@sifive.com, jh80.chung@samsung.com, khilman@baylibre.com,
        linux-clk@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        lorenzo.pieralisi@arm.com,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org,
        vidyas@nvidia.com, Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stephen Boyd <sboyd@kernel.org> =E6=96=BC 2021=E5=B9=B43=E6=9C=8830=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=883:12=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Quoting Greentime Hu (2021-03-17 23:08:07)
> > This patchset includes SiFive FU740 PCIe host controller driver. We als=
o
> > add pcie_aux clock and pcie_power_on_reset controller to prci driver fo=
r
> > PCIe driver to use it.
> >
> > This is tested with e1000e: Intel(R) PRO/1000 Network Card, AMD Radeon =
R5
> > 230 graphics card and SP M.2 PCIe Gen 3 SSD in SiFive Unmatched based o=
n
> > v5.11 Linux kernel.
>
> Can I merge the clk patches to clk-next? Or is the dts patch going to be
> sent in for the merge window? I'd like to merge the clk patches if the
> other patches are going to miss the next merge window.

Hi Stephen,

Thank you for reviewing. I am ok with either way. :)
