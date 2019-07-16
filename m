Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 223596AFE1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:30:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728858AbfGPTaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:30:19 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:35355 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725926AbfGPTaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:30:18 -0400
Received: by mail-lf1-f68.google.com with SMTP id p197so14574946lfa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kDDS/NZ3tftrsc7x7TuuarTznLU6INkXaKPe9Z8pruM=;
        b=OKUd7TLvnaUOIwktmFIrGYxVN9bxDOD8onsA5ggkYjd8IjyA7IGJ9lQCTRqqUbQ04E
         5eMkCuKYwk+P9NFEB+sufQMzu72nH6i5iOfX/nR3u9YIuUNxOGWfWYqFecFgdmfap+hl
         hubQJgU7hsI9waxrChEqZCAogEHIGb+PW+pfdVNybOAkNEIVa9bZNkJ990kyzC1S2JK+
         BS3miZ//GWrnswjarlD3RMPMB+qOHXD5CUNBFj0VkxKSDy7AFGRMOuSXbqvecZAX8HpO
         EFGRBTkObqo3sbxrr0kdBugGhsVPNIrY9uv5Nm7HPGxMvncaKDaaizjk5Y2iiypicpIF
         65gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kDDS/NZ3tftrsc7x7TuuarTznLU6INkXaKPe9Z8pruM=;
        b=aeDgcJvJyLMO76xBQ1Z6H5nvMmVdozlGgb57M/EBSigUSEtu2DSKw7i47pR3c786Tv
         Y1ExeR3u501N1Yo1tXr7KsDWhen+Nyriah2ilZZEctcLChDtnwQD2i/X23bwxWm7MrtB
         FBcEgkI91U3ISRSqTDcMC4W/YFrBJ2rHeEcL0/XoA1smLQRX0Yoo9Pse1oM8gCuMmoxH
         ipcNaEdWXDsS5Yg8n/EXDyXf9dLKZuSJN/0LeYDD5qoDGpn6hnfx78YBLy9/aakcEcDl
         keFDCbbvNO2KAoBsKO7pcH+AoOadlYqo3a4+1Pxsq7i3GldpVeUl5F3Kk/6fRiXTKnCL
         DMbQ==
X-Gm-Message-State: APjAAAUbZzy1RHmuP3V4K1emLRvZsl67S9eBdW4LjqKwrlGayAv/eowD
        EyPO84hHqHzgUhOYn01IBhbTTuk5Q1OrIvWsAyzTiGKT
X-Google-Smtp-Source: APXvYqxiiiDc4R5SiibMSHjNWPfmERNkDjEKhohWfQ/MsrFxj/zM2ebY2Dhvd8g5uq06pLce7xb9DORjRELNOQa0HRQ=
X-Received: by 2002:a19:6557:: with SMTP id c23mr2043914lfj.12.1563305417485;
 Tue, 16 Jul 2019 12:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:30:14 -0300
Message-ID: <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] arm64: dts: imx8qm: add lsio ss support
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

> +&lsio_gpio0 {
> +       compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";

fsl,imx8qm-gpio needs to be documented.
