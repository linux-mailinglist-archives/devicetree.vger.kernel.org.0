Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8F8B3C9ED3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 14:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233694AbhGOMnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 08:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231977AbhGOMnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 08:43:21 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10016C06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 05:40:28 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id y42so9612451lfa.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 05:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ebyuOnT1hdZDjeeW61EvSOeBAtKF8juas+fsejp2e3s=;
        b=ILtc7ZblBmo6JLnKkK6Ynw4Ry6ekmXcHOAWIbkJ/XYCVULkqUDbacUfTlst5LYLOZa
         NmCGzpp/Dp4A5pUiGGHT16Ck5rd5PufLAfBUMdTUKzQp5+GB2khxBHu3Qlw7k3wYaRi5
         Okcrs8VQPVSlBoxD6lJdwehTHlVbFN+JvBn5kYpHS+2dFcnmIrXDRf+TcCWHAOG5Ky+Z
         atnzYAT5SCMzHnML1Z8xODIhFtcq2udycJLg/Hjn06uXFiYNfMf/T2FUzNJjaoYFIvDb
         Y4LcG+/daYIKbLkUPE45H9H1A+IWdOnzYK5HCiiWjTIGoB1s1/uSdnXCyvnAisiXlHmv
         posw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ebyuOnT1hdZDjeeW61EvSOeBAtKF8juas+fsejp2e3s=;
        b=mxMUrmutyxn5tDm44JoCcMjjWBaicCVoQyaU1C7vZzFslxxx5SU+vNaeontFjJiq1P
         688Dnc9dx6TZ1UY7Pj0Gw3F0zCI9IeQuOcEuaR8p2rIbCkuXyJVccZr2LcIVxBdMX56k
         8aGISumXhs+ay0w3tmIRwZ6I5m0dNHJW3XPckRBn1XydeLW+22Q6YmtJh3vZ6/REyltC
         Zw0Xs0oDyLaVn0ukKRvQgL2uNt2mVbnM8qX9/moEAbOQ/9feQumna6+Otq87hlisAZTC
         6Oy3GmeES+BrLWMwGXmRQhexzXQA8L/LkVQHhGvLEDS67l9G0JmIaMjYVZOztgoGJbaU
         46YA==
X-Gm-Message-State: AOAM533ORaWGah3R/SqqImbJqEFoS/9VMbve3UWta3lFW0WqXOvU0u72
        i018AnVgBT1d+eOhmKmEHrN9AroLitDcsvkrzLM=
X-Google-Smtp-Source: ABdhPJzzW904vyzRE5u9N0K5GNfRBYyzvByXV2d3EdWBWJkr0sDF8yk3UlxZdPsCkR52k01CrtpDfpS2y1p8eedDD6Y=
X-Received: by 2002:a19:6d06:: with SMTP id i6mr3449187lfc.295.1626352826387;
 Thu, 15 Jul 2021 05:40:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
 <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com> <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
In-Reply-To: <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 15 Jul 2021 09:40:15 -0300
Message-ID: <CAOMZO5DJgC7LTgoYKaMxvFpg8fm89iivQbFfe3VUA0T5Hhqy=A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: remove fallback compatible string for FlexCAN
To:     Marc Kleine-Budde <mkl@pengutronix.de>
Cc:     Joakim Zhang <qiangqing.zhang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Thu, Jul 15, 2021 at 9:33 AM Marc Kleine-Budde <mkl@pengutronix.de> wrote:

> > Why?
>
> Don't remember exactly why It doesn't work. I think it was a missing
> quirk that the imx6 doesn't need.
>
> > "fsl,imx8mp-flexcan" is passed as the more specific compatible string
> > and it should match against it first.
>
> ACK - but why specify the imx6 in the compatible list if the flexcan IP
> core isn't compatible with the one of the imx6?

Correct. The change in this patch looks good.

The commit log needs improvement though.
