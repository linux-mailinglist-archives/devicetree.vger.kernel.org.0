Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08131476B51
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 09:02:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234638AbhLPIBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 03:01:41 -0500
Received: from mout.kundenserver.de ([212.227.17.13]:32869 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234633AbhLPIBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 03:01:39 -0500
Received: from mail-wr1-f53.google.com ([209.85.221.53]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MnagF-1mGypT1R5B-00jXqV; Thu, 16 Dec 2021 09:01:38 +0100
Received: by mail-wr1-f53.google.com with SMTP id t26so6241745wrb.4;
        Thu, 16 Dec 2021 00:01:38 -0800 (PST)
X-Gm-Message-State: AOAM5305oD7JcoDth7e+2C6pL1eDqJQg7RsjDHsNcVDKigU+MjE9Zp7P
        d24z8SvMPWQ60Ww9g8UR6eodwgLgqDMx7mNfcug=
X-Google-Smtp-Source: ABdhPJxxX+dGAaPMoXoQ3A9/fG8/Pb6TtbRP1+rWFwiYLtbXt6ul5HijWpSqPJ/+2/xbFjvHy9h6zkMnEVYTkst+qMg=
X-Received: by 2002:a05:6000:52:: with SMTP id k18mr8001444wrx.192.1639641697946;
 Thu, 16 Dec 2021 00:01:37 -0800 (PST)
MIME-Version: 1.0
References: <cover.1639557112.git.tonyhuang.sunplus@gmail.com> <c3a3b64c38807b2f344c3df500eb4c60b885eadf.1639557112.git.tonyhuang.sunplus@gmail.com>
In-Reply-To: <c3a3b64c38807b2f344c3df500eb4c60b885eadf.1639557112.git.tonyhuang.sunplus@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Thu, 16 Dec 2021 09:01:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0CnCK-Dfodp-jTzZApM_1NpdY7DV2fRqnO=gaju5xGwg@mail.gmail.com>
Message-ID: <CAK8P3a0CnCK-Dfodp-jTzZApM_1NpdY7DV2fRqnO=gaju5xGwg@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] misc: Add iop driver for Sunplus SP7021
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>, linuxkernel@vger.kernel.org,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        gregkh <gregkh@linuxfoundation.org>,
        =?UTF-8?B?V2VsbHMgTHUg5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>,
        tonyhuang@sunplus.com
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:pHGjDiNNkSK9zDr6VrEniZ6yAAJoemtLaVa41XZEk9g+nkPFN3I
 AAKgQ8HjaGX7ICC/mKA1AaPoT6gZduyqKhzD09ngWZKgC9u1CwzuCEQjomDcIgOH2xcI841
 sOi66Z2++ib9vnjXgio178bmifdxmPOwJI7QgsGQ2KTlZ589GsbhdbLXzvF/Z0bayNt79bm
 1Xh/3Vu8fy2Dtcwm77tZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cjIaHFaZ4uQ=:suozSv3hVOnNKxjhrMlbon
 ZEpectIdU+Lmk4XaoY4ltzfwFtYuxfnIrEy9a8oqmntlI9ACHdFfK5v4+VFKiB+xSfxbD3ckK
 ByFdxfmQ+4WJkyp8tu9lcLxaGW4pDQe1Q5CPU7LF1yCaSkKGMKuUmMa0xAk63WYQzLBr/iNk0
 c+kKM80rrard94IMXXwYg+ol8PZ/pz3f6LMKn8/BgsyaqZEJQLwhNRT0iO0kWWHIEYAJ+dACi
 YXtQBNieSJykRiQ0BSljocjZpbn04BqmkdXhl9VU2OiQ12K6+Ib0N6H+qhyHJ5AGvC8eHZzxf
 HFYGSp8h+/l651P5WS/uFkFGD004GoZBNPbtx2j88T6IaIPLEINlA4m/q5OJ9SPOUu5uKLluK
 LC4Qkd+kS/wTepevUXZ+Aybxjp/zeOErETNb5dFKn46nTeElss7Sg+PegmlrkyW/PNQ+hhM+T
 6de0MpSLHrlTdb5mXdG+hN4ygHOYcyLGFZ4O35o12ZpV/6fujta7+e6tdWrV5NDG6bIwjiGjS
 reBUweucsu3JCWFr+OnhDOVwBm0oxVi72ijisD+JeXveQR9CHwKwa7QJPVuZseDZ+3Vhrfza+
 +lbjHoY4+q7S2JHt7SRLyLNJRX3fgd78C9p/O+BqnhtbdPBxeWsoNhg/ti7U0trFmLt8wq5/p
 8jB1biYS6w8JuzD7hO37lb2zMY4jlKa6BQKhVy5hkxlo0pa+pnX2x3+oHCsLpPu+M8+s=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 16, 2021 at 2:38 AM Tony Huang <tonyhuang.sunplus@gmail.com> wrote:
>
> IOP (IO Processor) embedded inside SP7021 which is used as
> Processor for I/O control, RTC wake-up and cooperation with
> CPU & PMC in power management purpose.
> The IOP core is DQ8051, so also named IOP8051,
> it supports dedicated JTAG debug pins which share with SP7021.
> In standby mode operation, the power spec reach 400uA.
>
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v4:
>  - Addressed comments from Arnd Bergmann.

I don't think you did: I asked you specifically to add code to interact with
the existing in-kernel interfaces to use the functionality provided by the
device. Pick any (at least two) subsystems and add support, but leave
out any custom user space interfaces (miscdevice, debugfs, sysfs, ...)
for the moment.

    Arnd
