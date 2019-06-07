Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 246D6397B5
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 23:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729815AbfFGV0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 17:26:55 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:46746 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729787AbfFGV0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 17:26:55 -0400
Received: by mail-lj1-f193.google.com with SMTP id m15so2917519ljg.13
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 14:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q6sGj4udjdudlOgOeP/H6pDDZcmuzFdAkSUlLYTz7Hc=;
        b=z23mfVUe0uLJ/lnbrCPAfFLlJoZeq+fXYSy3t319XR2mXsJF2HJBlsHc72bDowYPbr
         BKlcfggdOUpnzKEOcmo/gWDJBafNeMAp2aw7/FOy/CEMhLhZAkJiqltxY9gqYHhdPADe
         LWRluJiEIcw2pJBdRmdTdrAVM13WBgOAg9klKPj6zLBbvJjcvG0SF3UGpq5K05+1nydQ
         YVvrkZaXl+tnN/7TgP1T8xCinH9HAqs6lCo00edbK7wHMvW8WMzCuFvKYkfX8GduJi99
         j0wanfih+iwQg+9v0kDSq7XaxRBoHZrhq0vIpY4sKoaShnKX2Gdts7XNyc78ZgcYCS/j
         ih7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q6sGj4udjdudlOgOeP/H6pDDZcmuzFdAkSUlLYTz7Hc=;
        b=rqyS91g4hBBIFgFHQfxMGTjiD/IB54X6oJPPgNgtudzTqhRizvqCxG0TnUkzcW8vkl
         2d3e0IdRys/uDNil3QBl9CnBeqz1SsmaAh6VQBYY+48TUp1PjH7/TyTsqtLIRQu8Yde+
         +ZaPe3i3FVnvqOBbAqpkBgV/gcGdZavolwVC+eh4Bc4qU17ORszMRfCQx6rOoAbVLQ1s
         DpOta3ltpP7Jb7WWbpbqWsz1zc/92Rhzb+Nhw1K1ZsDwieTdy9TOP+xquOiWGknxzANP
         xYdivtPaJULpjEQvWh+vpS5NubL9zvk4REDGqUsOfUjoID6EQclUMe66wp8iFTCJx1m+
         YeaA==
X-Gm-Message-State: APjAAAVp/APVEYUvpBPzBKGp2bvowvv36NjNpjv48lwfJ2/1d4dLraOL
        mTkwwuF6TxdcgqanDvKKLNJvj+jhg6lkf4G+t5aYmA==
X-Google-Smtp-Source: APXvYqwIajTpMSgCMZav18YPN+TlLmExrYklafV6rIWWxNFhS1pNAPS/UUbCntmRCn13SfjJkYCmG7CoaruMAno9FuY=
X-Received: by 2002:a2e:7508:: with SMTP id q8mr13158846ljc.165.1559942813429;
 Fri, 07 Jun 2019 14:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190604072001.9288-1-bjorn.andersson@linaro.org> <20190604072001.9288-2-bjorn.andersson@linaro.org>
In-Reply-To: <20190604072001.9288-2-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jun 2019 23:26:46 +0200
Message-ID: <CACRpkdazzRV5XydKHmXRQiU2Mx+=HyRgNCEpNqsOsCdycXmMOg@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: qcom: sdm845: Expose ufs_reset as gpio
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pedro Sousa <pedrom.sousa@synopsys.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-scsi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 4, 2019 at 9:20 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> The ufs_reset pin is expected to be wired to the reset pin of the
> primary UFS memory but is pretty much just a general purpose output pinr
>
> Reorder the pins and expose it as gpio 150, so that the UFS driver can
> toggle it.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied.

Yours,
Linus Walleij
