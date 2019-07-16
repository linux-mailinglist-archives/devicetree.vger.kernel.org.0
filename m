Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 767BF6AFD0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:28:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388626AbfGPT21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:28:27 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:37667 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726213AbfGPT21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:28:27 -0400
Received: by mail-lj1-f193.google.com with SMTP id z28so21174918ljn.4
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YusULDKtvbaFl4EVjjwq8xCVpUXm7QI7zzqzoLVeBuI=;
        b=mhTDz/D0OskKZMo3HE8550xVnGiC9jLh8q+9T61FpCJQf+l5OKx0RXL1gKiRgdWQYw
         AbIKrOmSECVoQscbUZqufL7SFkovNrMppMuR+mpoRgNhnZRqVb0MMABOUip82pFfE3pA
         R0KqE9borwHUpSlN2j5Jug1Q77+/0D7dFcXv0tHNhVcGUGDyJItOQpMUeNMC8Bk9Her6
         zIWo7OBatil6hgBApRzsLm11OIFpKRVa2sYctDblab4ehBO4k+BJh+LsZV+KY3LPuHtz
         /ajAmjy9bSC+5UQIaI3kjqXD0USAm2o2TRauds2Ep6TjoxwZzqMBRU8hcXqodi5P23Ry
         /Wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YusULDKtvbaFl4EVjjwq8xCVpUXm7QI7zzqzoLVeBuI=;
        b=pwQ13XjEokYYkho0zyRkVWeu5hUjNXpIa1FaeaTijJOSIm5StELD2RoP+bBqo/ju26
         9jgfr4yddbzwu/3NoN7y0trOLPHgJxsrsa3bHipZ1u9I+24nHbmRsN0JFObx8U/SV8Zl
         KjF6xTbC/0zumfC4/RXOjNtEJsHDbYI6QmZ8Ini2XCWuJE87jK989KZ/xAhwghmU7Q2N
         ITY81CKsE7Y4oqfhZ0tEBYcWv1E1Q7drrRoRcJKWLcew9ZFC4zFuW08ets6bIT1LqVyx
         lzFM4vMeO0gMbqdoYxqDolGO4UkXuZPE5bBXsFKsAuW3KhQ9jA3tHCucPNWl1Oa5FrKR
         +UXw==
X-Gm-Message-State: APjAAAWUj9BqkAxZzkDDMdi1LPBstgNUf/RiXK9bJydgsxISANtg5K+2
        rHDu/Le1pEbEWJ1t/JsHoIoaFEJChnmQ55A3rfG7vQ==
X-Google-Smtp-Source: APXvYqzSdyI4sNlpn8VOfFJ3mQLAKcdxygNOIblNaIK5HBO6A5//BJ9WSLuwARQlvQAg7YW5y6IDIu9f0XmIIYbO0ZA=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr17966337lje.214.1563305305275;
 Tue, 16 Jul 2019 12:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:28:22 -0300
Message-ID: <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] arm64: dts: imx8: add adma lpcg clocks
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:

> +       uart0_lpcg: clock-controller@5a460000 {
> +               reg = <0x5a460000 0x10000>;
> +               #clock-cells = <1>;
> +               clocks = <&clk IMX_ADMA_UART0_CLK>,
> +                        <&dma_ipg_clk>;

Putting the clocks into a single line helps readability, even if it is
over 80 col.

> +               bit-offset = <0 16>;
> +               clock-output-names = "uart0_lpcg_baud_clk",
> +                                    "uart0_lpcg_ipg_clk";

Same here.
