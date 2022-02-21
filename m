Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74AE94BD6EB
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 08:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346108AbiBUH0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 02:26:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346022AbiBUH0L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 02:26:11 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D4CB0
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 23:25:48 -0800 (PST)
Received: from mail-wm1-f41.google.com ([209.85.128.41]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M5PRT-1nMroS1cpR-001PqP; Mon, 21 Feb 2022 08:20:41 +0100
Received: by mail-wm1-f41.google.com with SMTP id i19so8925180wmq.5;
        Sun, 20 Feb 2022 23:20:41 -0800 (PST)
X-Gm-Message-State: AOAM533s+vhVgNtdN36REaLllpR6oEFpZfwle7ZIrCluLfHAFZdbJzl6
        A0+PKUj+/UdmnX+6119Tb4iI2YrkZkeyZLE33W4=
X-Google-Smtp-Source: ABdhPJwkhO738p7jfkIcVIpJAGPCBMxEsq4hdKYoj5i8JrWItb1GWjA9adOa10AzpY4ehuGHPz73wdTTBSk9y82K1Yw=
X-Received: by 2002:a05:600c:4ecb:b0:37c:9125:ac03 with SMTP id
 g11-20020a05600c4ecb00b0037c9125ac03mr16542202wmq.98.1645428041077; Sun, 20
 Feb 2022 23:20:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1645407997.git.tonyhuang.sunplus@gmail.com> <20f858dfe999816cb05dfde5f89db48f3416358e.1645407997.git.tonyhuang.sunplus@gmail.com>
In-Reply-To: <20f858dfe999816cb05dfde5f89db48f3416358e.1645407997.git.tonyhuang.sunplus@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 21 Feb 2022 08:20:25 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1FZQ2LQco8D263+YXjcSQvzU6RHAL8SKcKy8hiLnHY8g@mail.gmail.com>
Message-ID: <CAK8P3a1FZQ2LQco8D263+YXjcSQvzU6RHAL8SKcKy8hiLnHY8g@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] misc: Add iop driver for Sunplus SP7021
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        gregkh <gregkh@linuxfoundation.org>,
        =?UTF-8?B?V2VsbHMgTHUg5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>,
        Tony Huang <tony.huang@sunplus.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:+flWuxabUjXSN9IPizb45Hbk5k0zd9jBEveS/y5AS5pVfLTOGNR
 vlhOk0HWrBtIcDO4ph7hzHmNg6LBPJr6ruYlFKAwqPPHgVwiXS3o3aeqWLgFch1dmkBMKww
 muWSaOlvimKggChUOBBODGKA6uEpkpRSw408xD9YxemE+ld+7eSzd7kWX+HygDLpYAseKQH
 vnmowe2F+ssGrkD6+n0dQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:X1E8VHJ3L8w=:uFPkEFMg9ghfnVTLL+Qog6
 51oFanxjF95MWT5iLP8j5IuVhYxFkXeN4YD9sFDcPCr1R2g9yAvNTtVgGX5GJhdEHt7PmXgTb
 4jryG8GjWSmH+z8WTOPCg2hEjHAFcQtcAR/klt201uk8o9eGEHqG7WOydDXXtZYGJ9PCklYL5
 R2yH92+K3AT7zeX9uRFRhj0zw+ARSyaaBINEBPfzrxfdMjw287Yfi7Udng8/x0rgsoK+h/rW6
 g1HDutMT14kVt8/W3kTH9pStMATbzpsVq4s/F8Psy8qWKjzNWB3jbMp3/zg4qGMxvz3FUba8O
 BOOe5kDZX3OnNt3ae50cCwi6HrajFaVYqxp+aYEJ4z4IpJBlWXKlZJYi9fjMvwrX2e1b+WpbM
 I/KnMLcV35pIVMC5DkoN48LDj1S9RX8iQ7YfJZEOWxtLIm7VTH+QYAuFITV/itI1vVhm0PXTo
 v2gCHITf0rPaQ+cT2uXNZLelKRrUqIktUkDm3M6hSIuSiLvMX66II1EBZ/S+1wE8e8mwOxCJa
 9v1av3mhA33XRzzTop+Mz1e3JuoURScfVa4+CV0VTdYtsmMxi0NCyUGXu1QYIjp8NYtlFlkFH
 wgDRfqwaA8VCtRQBxo8wa42hucvKLxtSZDrFrlP1tAZ+ybG7sl6830S0ZangPEpYZbTodLKuT
 8Sa+JHooiv0MCdqPdPvbfMYGmQ7hAzSRNFtbD0dvDLnrFXe4cfPwMw4UQpC/g4WdREd8=
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 3:14 AM Tony Huang <tonyhuang.sunplus@gmail.com> wrote:
>
> IOP(8051) embedded inside SP7021 which is used as
> Processor for I/O control, monitor RTC interrupt and
> cooperation with CPU & PMC in power management purpose.
> The IOP core is DQ8051, so also named IOP8051,
> it supports dedicated JTAG debug pins which share with SP7021.
> In standby mode operation, the power spec reach 400uA.
>
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v9:
>  - Remove custom attributes sysfs.

You are now back to a driver that does nothing at all, please make it
use at least one kernel subsystem that it can hook up to before
you send it again.

Also, when listing the functionality above, describe which subsystems
you want to use for those in the long run, this would make it clearer
to see which direction you want to take this driver when you add
back the features.

         Arnd
