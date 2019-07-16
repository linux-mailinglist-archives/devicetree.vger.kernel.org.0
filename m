Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 672256AFE7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728137AbfGPTdX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:33:23 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40215 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726213AbfGPTdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:33:23 -0400
Received: by mail-lj1-f194.google.com with SMTP id m8so21111420lji.7
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vU1ORZGPUWtAtV6dRx+NdPd6eLt1Evf9byseWn+Rs3M=;
        b=Um6AsNk8Oq+S+hkTOkBbirDKNknEAOZlsvGJ4LxUmV9lrplIOlzWbrg0U9hmndM3C4
         K93Ydk6aEUjU4suUnCFh4fJrxD4QzlFWljVPOjYJ8g+Pg8yKeknCvBqYRm90d1X8w/h2
         ONT6T1Y/f+1kZDQ3wiu+tcFPxlnKCpDeYJ1DDO3TCyAt7uwW0u209SNZl/e0a9H8ghxl
         Za06Vtx6fjXcmo2LZvxLM9q8bwTiPwpbQuD5qTXacArQtQKtvTE473zzSkWVFLzbCxGK
         iF75CSfmeJ/Q5YqAk03F6yoALpoPEQey3olCNG5G94Hq9cVI3cNj8LzsI0kypra7hNY5
         UnuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vU1ORZGPUWtAtV6dRx+NdPd6eLt1Evf9byseWn+Rs3M=;
        b=Mdru3TjZT8pg2Kl99ndoiL6qfuvMNHXyga+hOFPxb9MvSWJo0bOd0EWV5vaCsO4KZy
         kF4lNW75TGquWn5lbiffC+FHM0z4sL5jFjfG1ZkM/TYGEc962YAy/R7QGz63PYrXqWUF
         iV+U870W5Zk/OE/PHhCb4kFO8QlrpBUIjMvP4E9dyJO3Ud+J3Q4sItgqbgZeIjunETDY
         kcxSnKNUhBV2AYIOlWIJjfp4nkkU11rQe67I34bD8OFWHbG7UDXLpBkMNjihHoHHmq0h
         7iHc7Bn8kjCBAMDELGoIGy3zlrL4q/TmWN/KGQpKc3kG48FAuZGPGA587k047OLpeA3l
         b54A==
X-Gm-Message-State: APjAAAVGh3pQ9n/z5uhG8vqKADv91nqSp+TchgE8Gij24DmXeuj50z3p
        3Im49HI3pVqhe8Zijgiq86VcJ2XQDQWT0T2ssws=
X-Google-Smtp-Source: APXvYqxNNOAhD52XdtmuqDphXRzzKH+DuJa7lfMRv4f48z5p5lIOXB2RfYubua4CKffLvL2yxZq4Qg3yHHKcHIR6hTQ=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr18645728lje.240.1563305601513;
 Tue, 16 Jul 2019 12:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:33:18 -0300
Message-ID: <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: imx: add imx8qm common dts file
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

> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -144,7 +144,7 @@
>                 };
>
>                 clk: clock-controller {
> -                       compatible = "fsl,imx8qxp-clk";
> +                       compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";

This looks like unrelated to adding imx8qm support.
