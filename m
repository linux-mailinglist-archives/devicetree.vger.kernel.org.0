Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE393C9E2E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 14:04:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232003AbhGOMHE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 08:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232196AbhGOMHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 08:07:03 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C31BC06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 05:04:10 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t17so9464641lfq.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 05:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8qay7WqFGV1urCjWrLruSSQSa/jBRKup6hfrBf/3lMs=;
        b=Wevivq1mxGac89SYmIwtlMSXr8hqvqiVWudO9LUfNrQ3UCWOP0exQDmWhKe4fhEBGH
         Unw9YeOWi5NWI9cckwEg57pYiilnOWyf8480xQ2S8qFz3sYF9ZmeHSsUGhNjbZ71nrAZ
         PTPQmQZdwfpsXBHKSR44yHXqiOmpwYJT3j3xYNN157NHdbYsGNCNiHoqCm9BW7ttStWT
         q00NhnlO8ufqfeSSPQrMoX36DX22NyG2raIMNaGE2Re935YxXCIAOuTuUyAzq0+oLgXs
         VEEXwKBvK1DIMmH4WgrXUhkjndpobQZZuY09OWsfShq5Nn9Oe31b0Zv8Bw5JYa4Fe8lY
         y6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8qay7WqFGV1urCjWrLruSSQSa/jBRKup6hfrBf/3lMs=;
        b=pZgF74KA4zysDxzPPaDb5jK1DE10DPb0VR1MxFohNobP3BHi8fF8DpBwcE/PbDpxCk
         rQ+PF9+iLZffGyODegpbloQp+mN89b37bQJQMkHoNzWazFF4+QHpULarrxEXytlpt2fB
         kBojUwx0L2NNLDtffZ6VPloYKLbWJlvsKVDwHQICTf669YS4v8Z+890EYBYMksPKc6u6
         3az5Cbdiuc5URtzh7MQ0qZCLKHb8Jo3I6Ikp81dt/CNkdXfArNiAwouvfe0IMDbxXN4z
         tc+Ujnfy9Dyd12l+yXJnxCRLHApme+BU1e5q9YnVbyz/+l4UtTOVAu2ZO6OzprBZIIt9
         1PUQ==
X-Gm-Message-State: AOAM5318R9sJe5zssIGI+Z9XVqVPnpKEENgQ+tBUPCs4y0EnJYIzh7WL
        ZJSKKslfx99vJcO/C+UBA0dS8f2TSp+mQPvW9iCHMkKVF4mU2g==
X-Google-Smtp-Source: ABdhPJzDfest9Yf5eJQPoBFkWJP4TP+iAiD9srhOH/x7whk/wWE8P3+Y7/70K8L+IPSJmFI0hE4lLrm/QOrTHPN7lOM=
X-Received: by 2002:a05:6512:1031:: with SMTP id r17mr3100557lfr.500.1626350647045;
 Thu, 15 Jul 2021 05:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 15 Jul 2021 09:03:55 -0300
Message-ID: <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: remove fallback compatible string for FlexCAN
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joakim,

On Thu, Jul 15, 2021 at 8:49 AM Joakim Zhang <qiangqing.zhang@nxp.com> wrote:
>
> FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from
> i.MX8QM with extra ECC added. With "fsl,imx6q-flexcan" compatible string,
> i.MX8MP FlexCAN would not work, so remove this fallback compatible string.

I agree with the removal of "fsl,imx6q-flexcan", but I don't
understand your comment
saying that:

"With "fsl,imx6q-flexcan" compatible string, i.MX8MP FlexCAN would not work"

Why?

"fsl,imx8mp-flexcan" is passed as the more specific compatible string
and it should
match against it first.

Please clarify.
