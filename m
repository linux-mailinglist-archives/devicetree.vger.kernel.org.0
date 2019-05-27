Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32C952B120
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 11:13:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726097AbfE0JNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 05:13:41 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:41165 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726540AbfE0JNl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 05:13:41 -0400
Received: by mail-lf1-f68.google.com with SMTP id 136so1375003lfa.8
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 02:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a/7xc7v9tJJNaiyPfxrhOl/58adqp4n0uezKun8Lw2E=;
        b=rlDkQN39x24oD/0Fx/igoqVAOkOn0hmIEsqGZjmKNz0/nL36PAqCBnNBK+QfoOTSX+
         npQ5mAPZW2Ywl3J8Rye284g602C47GrM3i/PfBwN6i+EXW+TNHb1VNJDL6XS73+mTO57
         NfoD/LbHrmQ2kxyfnvJss8TDpL7xSqoBsYUP1A8aRgAGqWhoEjW8H1GaAF70E4iQn3B9
         4y5uhI3c3z1WW0IHkiekCy3FfCZKGiUlk6mBDStXbt8HIYdCIDFvzfuaxjPfLcUfntxU
         ryhsjlGZZeu2HbXwrYGsJMFW0Dvn1kszD4iHFDt/ixgoRz/n9rLOdVgtYZuxDhBtwr3P
         WDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a/7xc7v9tJJNaiyPfxrhOl/58adqp4n0uezKun8Lw2E=;
        b=Vs89rLT6AlMtXS6qc0sUmNThFmkIcE5GV/oIb0moir5ynHDkNG6DppcRuzG174Z4kL
         XFu/ndAFjDfuEYx+b2uzzJ+2FZKhl+ikZ+RYS8EjQ6pP0sWwAVN3CA6B6P/c5UzUpkHl
         dv5MeceD+QiYORsHPPZL/1GKiK0itF+xAY0iKnCYlhvxwf4+Zwpn1WGLc1VujgtaWOjN
         oiEmPq7y7afERxk4gp9lE7/XDfST1rawBcAwjk/+0uPv03Z6DwFVoSBhpHVpFaolX9He
         3rms+3Edq0CdNfbb8h1riEIMJGil3xhRYR/BPvqBclfi6EB7JyD9/0GUaIdt37bS2LhG
         Ptxw==
X-Gm-Message-State: APjAAAXfZLIS5pBA1yHBE9AeAj3lUzpk9/q8LsBDpead2xnEiCwNOJaG
        38z2L2v+GJHja81x6BCBavama1XtTmA+bl65mimcgg==
X-Google-Smtp-Source: APXvYqxMD3x3Zg9ONiCBorxk0Q9XTDz80b+4NRApQxGryM34b0wKEecvJIiWl4fu361pYvYyrTrBpySqptqbXxrm9nA=
X-Received: by 2002:ac2:48a8:: with SMTP id u8mr7983174lfg.141.1558948419094;
 Mon, 27 May 2019 02:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org> <20190508021902.10358-5-leo.yan@linaro.org>
In-Reply-To: <20190508021902.10358-5-leo.yan@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 27 May 2019 11:13:27 +0200
Message-ID: <CACRpkdb9SGN6N4y1Po6yY3dROkDhGOHaip=YRRaFKfv10r=sAQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
To:     Leo Yan <leo.yan@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 8, 2019 at 4:20 AM Leo Yan <leo.yan@linaro.org> wrote:

> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
>
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Patch applied to the Ux500 tree.

Yours,
Linus Walleij
