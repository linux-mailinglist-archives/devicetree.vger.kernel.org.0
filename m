Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D20AB39963
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 01:10:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729879AbfFGXIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 19:08:00 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:44612 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729325AbfFGXH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 19:07:59 -0400
Received: by mail-qt1-f195.google.com with SMTP id x47so4184632qtk.11
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 16:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hmSIYkzntP70mGAy0+3sIVGlGsW0SY7lR03AJk9BDaE=;
        b=WZPbW3eaKxDVqvS79g8AhPg0AXL7yEzS0cPoKlo47btXUecP/458v/d/PiK6M/i2S1
         GIIIOrROLDMOmJDJQzFw2i8QHOnqozCFNFWBRa42C81JbcNjnu9Nv0zpRK9BemnZLA1+
         VjcCIKZ0ELie+j4D+quamsdrB9+G0pF8VGqquna1t9EZTW5UgPM8aV/y5ZGyLBmBeFOA
         jbfFYdnET1ixPAAjk68QQF/Ie8Q0bpdOio1IV8EX41AqUKw7enSq282KJdKfaaKF1Wwk
         ynyoWGc+7Im8EKHOjAkJ17h8AuFnnGGJDbhOzTz9YqfzHSkNI9OfVOG8XlPcEA3zYDcE
         mImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hmSIYkzntP70mGAy0+3sIVGlGsW0SY7lR03AJk9BDaE=;
        b=BHnPYhESN7j35PD3eXx/Z89CXjiL1jcQdbyiEh855oKrYaczxRmmQI9MgedPV0EO0p
         vr7f9mE1Dx31ImF1csMm/eBRwt6CbpzlkXkwp/13ulOA0xKBKGzh2D+YeKOhjvDIyaFm
         enZnfwawRdoSC2HgeHlA/ghoBQTNq8meFOkrm40EjQC/sde7FnptceMzz0yCSw0eAROC
         dL0KdGRCFo8JN/9qrRQnurBgEDOAuv+0f1bq4OvZa4E9uuiFHG27qcrqcPJNp6dHQofT
         OfWYpylg9WfHxx3HiRWfih15fLFrPVuQuDIlnHSCFmFFJRNb2p9C2z3NEjGqW+EQMd3Y
         QMjQ==
X-Gm-Message-State: APjAAAWCb2ee4sTyFhk16CRnWI/TQylgkaYb++v+VHg+rN9lkZXrCpEB
        kagvggyFFGFUZAbFeZ67UfTpRFbuG3/6AJn6PrY=
X-Google-Smtp-Source: APXvYqzBgF6gOQsbg7FGCS5nTpxiSJgifgCAg7cWOztdJgWpAZX6qriDoJ9UdD0C48nGsknhQPHqHEQm6GiX3MFLk0g=
X-Received: by 2002:a0c:d4a2:: with SMTP id u31mr26989141qvh.218.1559948878483;
 Fri, 07 Jun 2019 16:07:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190607123731.8737-1-pgwipeout@gmail.com> <1559912295.22520.0@gmail.com>
In-Reply-To: <1559912295.22520.0@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Fri, 7 Jun 2019 19:07:48 -0400
Message-ID: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
To:     "Leonidas P. Papadakos" <papadakospan@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 7, 2019 at 8:58 AM Leonidas P. Papadakos
<papadakospan@gmail.com> wrote:
>
>
> I'll test on my board, but if in the end it does end up being a change
> to both tx and rxpbl then we can replce the 2 tx/rxpbl options with
> one, as far as I know:
>
> snps,pbl = <0x4>;
>
>

The big change was actually snps,aal.
As per the TRM, DMA channels not address aligned have severe
limitations, if they work at all.

Setting the DMA ops as address aligned fixed my 30mbps TX issue when
combined with your snps,txpbl = <0x4>.
