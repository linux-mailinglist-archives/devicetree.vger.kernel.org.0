Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC803B1D5A
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 14:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388175AbfIMMSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 08:18:25 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:33724 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388141AbfIMMSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Sep 2019 08:18:24 -0400
Received: by mail-wm1-f68.google.com with SMTP id r17so1750235wme.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2019 05:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L2Cakw64Ur8nPCw1uUR/WlbNeQH+sAcuv7OY6j+C6MA=;
        b=YVvMeOhDewiCpmZozcwGl4ejAK+9WK/9Z+J7H9sDgMudKaYbPEB5ff4hPlFam6HtG7
         SKq47C2uL/08Gx8QHB0TYCtI4xqOneLcbwhi7VzlUUQCw9oJghWbJ7ZIRh2hIMMlfcg5
         rPmMDfxt7UqaefTshjYFNJZUpgl24TlzeLDsgNgpmAzRNbDcsOpR3SfGmDMGGS6TS7xT
         DI9zuLWyL9aADGPPthbbWgyZpRLLDUjYk7Ey8y8iti1YFh7AcMNEFGQbfEnGi3oZ4azQ
         /iJ472WSAhndN+55EK1kMnAOEvwD9t767WUbB0OSWv7n2c81rPeN1nPh0hStPXtJOugn
         M3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L2Cakw64Ur8nPCw1uUR/WlbNeQH+sAcuv7OY6j+C6MA=;
        b=OhDv/kRYpfuzmBP73Qojn7NzKiPbt6t4d+35UlBt+QmRJW9GJVMQ4gGQq5SgkkTJpw
         kA0a0s2RxX0rGKZK5UBsoUhysoXrUI0Tva/d/S5cYwlB0VLpE3NkWbxKEcfAW7T8929W
         dQ1tI0JHrN0GBwpYqn6SsYphnlXav+jl0lJq8TB8kCWhIF6c3nTY1OKSVd9bl38OKrbq
         KVxkjpKSdFDo3qsY84AH7pIp0A/Km6NXiCe9qEb2e+MVBxeiaAWh59rtyVlt6StByGEk
         n58BKg87cBtWKef7FUrK67Vy1k0hNu88FDn51E8ep99zWlqUbeQsPQAgbqZKlAs3KVRN
         dhvQ==
X-Gm-Message-State: APjAAAWJLS0L/DZv5zBD9Y4Oq718IP1Ogz0Z74hqhcmnM9rcZAZv9dKX
        63NnA7hbXOvlzxu/gpZkYss=
X-Google-Smtp-Source: APXvYqzCo3gG3+eVr790S6I7T0wbEvLoOdwHeYlzsyGjVmOJug5XAhqAn64Ep5+tD9TX3lLN5L+S1g==
X-Received: by 2002:a1c:2302:: with SMTP id j2mr3071322wmj.174.1568377101707;
        Fri, 13 Sep 2019 05:18:21 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id a11sm2283446wmj.21.2019.09.13.05.18.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 05:18:20 -0700 (PDT)
Date:   Fri, 13 Sep 2019 14:16:08 +0200
From:   Oliver Graute <oliver.graute@gmail.com>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, dongas86@gmail.com,
        kernel@pengutronix.de, shawnguo@kernel.org, fabio.estevam@nxp.com,
        robh+dt@kernel.org, catalin.marinas@arm.com, will.deacon@arm.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Message-ID: <20190913121608.GD16292@optiplex>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/19, Dong Aisheng wrote:
> IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
> (Subsystems), those SS may be shared between different SoCs while most of them
> can be reused like Devices Resources, Clocks, Power domains and etc.
> 
> This patch series aims to improve the MX8 architecture to comply with the HW
> design to save a lot of duplicated codes and benefits us a better
> maintainability and scalability in the future.
> 
> This patch series depends on another clk new binding series:
> https://patchwork.kernel.org/cover/11046287/

Thx for your update of this patch series. I'am running into the issue
that my linux next-20190904 unfortunately is not booting with it on my
imx8QM board. Kernel is just stuck during boot see below.

I applied your v5 of your clock binding patches series and applied this
series in v3. Your former two patch series worked well with next-20190716.

The last messages from the kernel are:

[    1.019208] imx-scu scu: mbox_request_channel_byname() could not locate channel named "gip3"
[    1.027316] imx-scu scu: failed to request mbox chan gip3, ret -22
[    1.033480] imx-scu scu: failed to enable general irq channel: -22
[    1.039646] imx-scu scu: NXP i.MX SCU Initialized
[    1.047414] a35_clk: failed to get clock rate -22
[    1.058682]  lcd0-pwm0: failed to power up resource 188 ret -22
[    1.064314] imx-scu-clk: probe of pwm_clk failed with error -22
[    1.070538]  lcd0: failed to power up resource 187 ret -22
[    1.075690] imx-scu-clk: probe of lcd_clk failed with error -22
[    1.085965] mipi_csi0_core_clk: failed to attached the power domain -2
[    1.092359] mipi_csi0_esc_clk: failed to attached the power domain -2
[    1.098777] mipi_csi0_i2c0_clk: failed to attached the power domain -2
[    1.105278] mipi_csi0_pwm0_clk: failed to attached the power domain -2
[    1.115744] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
[    1.123923] gpio-mxc 5d080000.gpio: IRQ index 1 not found
[    1.130276] gpio-mxc 5d090000.gpio: IRQ index 1 not found

I see similar messages also with your older working patches, only the
last two lines are new errors.

Best regards,

Oliver
