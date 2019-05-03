Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE4312F1B
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 15:29:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727559AbfECN3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 09:29:39 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:43058 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727586AbfECN3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 09:29:38 -0400
Received: by mail-vk1-f193.google.com with SMTP id f2so528454vkl.10
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 06:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S/vzXIxJJ2giu+45QUggMNZcNSimdHF185i35JbhlyU=;
        b=xSg7EUR/nBs6f2tDm2syLyj9+iVaSNhMeEhTluTbdKQkL0O5raBZfKHVfNaFxg23N+
         JSE4zC8JKbr/bQdXk+V2U411ZmX9VnKBeuTmb8az4epvWmWLIi+QZ6XQOyMsYHbSTg9F
         9DhlvkjfYHZkmG+spUlAyxxcaAyJSlBsCL3KsHGA+7v8AvrPIDAsAESQL72sqs/NynTD
         ZzP9hpUYmeZq+DPp8M13WlhXPVQmsf3S/Wz9gTQqBowcRErzAuBEnR+OLwjMWh/B002x
         0Kd9rzHfrO8U/Q5mDmDyjaDLit4hsR0NCKM+Gt9MpSm6MI/cWfDvaaTOMPkDDdRhic5z
         9lsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S/vzXIxJJ2giu+45QUggMNZcNSimdHF185i35JbhlyU=;
        b=nV5Mlxvda+6W/1pAU4/egASa63hPQXiLn3fc3/Dup9++FyJrIG2tJV5kV3BEKyp5gl
         sEfR8xtdkm74JwZXjpbSedsXpQNcuseyM4BxkhCv+L4663SlCk1/OhAGlfbuorbv13Lk
         sTJwYI6PCaR3tjzxaU2NOOAW/OS/wZYYyeFlZatQVKxwET7f+kehJwcv2Z2fRPfyVnyr
         mUyxY0G04uKNn+opPttTVk2MyKqmYAznbqj5Wp74zcZRaNml/dXN6zhubdczhndslHHB
         VhOc+SeEIfn85HVZros1dhcIgELZuLwFlhfeVCl1KYdsOFUyz2/aYrjtE3bcEqLrCYCl
         UYRQ==
X-Gm-Message-State: APjAAAX5NVP1KGMKOGaAAQPckDlskJ0bGojkQWZyhC9uFDxWf3JuWgup
        qKFukyC49nhBz7CtxQKqmlKTdTYvwX2+rHHRBdR8Eg==
X-Google-Smtp-Source: APXvYqwX8uf0C57qKezFwSuH92KE3PiUuYFzerJ33+zl1/RX3+aRWwEHDADiLJQ9Lke/Va5Ccy5YvqvRvTQdFmnMMo8=
X-Received: by 2002:a1f:3458:: with SMTP id b85mr5251997vka.4.1556890177455;
 Fri, 03 May 2019 06:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190429090310.25484-1-haibo.chen@nxp.com>
In-Reply-To: <20190429090310.25484-1-haibo.chen@nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 3 May 2019 15:29:01 +0200
Message-ID: <CAPDyKFqi=v6WBR5+n_U6ngQDgeDtrdHwS2xBgntqqLmNMPuK=A@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add struct esdhc_soc_data for i.MX7ULP
To:     BOUGH CHEN <haibo.chen@nxp.com>
Cc:     "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Apr 2019 at 10:55, BOUGH CHEN <haibo.chen@nxp.com> wrote:
>
> ---
> Changes for V2:
> -remove the request on the subsequent error paths in pm_runtime_resume
>
> Haibo Chen (3):
>   dt-bindings: mmc: fsl-imx-esdhc: add imx7ulp compatible string
>   mmc: sdhci-esdhc-imx: add pm_qos to interact with cpuidle
>   mmc: add HS400 support for iMX7ULP
>
>  .../devicetree/bindings/mmc/fsl-imx-esdhc.txt |  1 +
>  drivers/mmc/host/sdhci-esdhc-imx.c            | 41 +++++++++++++++++--
>  2 files changed, 39 insertions(+), 3 deletions(-)
>
> --
> 2.17.1
>

Applied for next, thanks!

Kind regards
Uffe
