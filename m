Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DC073C43CE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 08:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231663AbhGLGIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 02:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230215AbhGLGIz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 02:08:55 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E950C0613E5
        for <devicetree@vger.kernel.org>; Sun, 11 Jul 2021 23:06:06 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id o8so7492101ilf.4
        for <devicetree@vger.kernel.org>; Sun, 11 Jul 2021 23:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a/fo2+9FlJ6YAAQKs++sJ8eXvktBL6MmLMTkj3M8ftU=;
        b=diY2/uLTaRCOBljQTR1vwEiMGi59yZNsS3rsChuk1XnN8GafliL94jKo61/wpRGis9
         cSiWbar/yUNxEm6sQ1nZ3q2kY+DZ2/o4jpH+Di9oP6V4DUgMj4PScJBBy7IvveqlR5cz
         LlH+jC0Zu7SKizQGc8pn7Ug6Mj92Mgx6Hrp1h9BnOHuXJz4uavz9P+dOs2ArFKLnPFZL
         Bv908z0fsV1FaXHX01GrVv7OZHJqi7wOOlLVyXE+eLuZdFLyu908HBzIB92Cbx1Ohw4E
         7QQVfn1wQbKQMJYVHeTqCtmI661vg7t64jgleG/g8nT+Ba8Ngo+TZAUMx+Qis8Bevwe6
         inBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a/fo2+9FlJ6YAAQKs++sJ8eXvktBL6MmLMTkj3M8ftU=;
        b=fjMGQyVHEw4FpoO8gXn8cqeMpZB22CEJj4PZMGHjrj165mtpQ8WxhURJDYdf0X9zgn
         qCK27pIHwBcnnsU8+0lmRnlWlCIsEYP8axZuSXOCNl94zJzWzOJ8yxu+Tr24kbt7BX30
         mdI1qXvsbpPJ2/Um93zE0cjohoMK59IzbhleHq8qaY3Ty8Oz1Hzz2Ed+CHUh3AcN1awS
         4ZmqPyR06FRj8OZwBZhR72/7/XZ3kUm8iQPqunNouhZTR2Rk6ivTf2UxmE7LhctRJMn5
         //kRpT93SqWNVM0GtvS9a2bcAs/uI3j5ahgsV9b79A5fVlj0DcrkN0aJ55h4LIaDPqtF
         +nWA==
X-Gm-Message-State: AOAM531TpleOoaQqwHbC7z5h04vIBWMPiWZoveR/glbRK1w1Sp1d7Wid
        9clsTRQvrDrSPs8z8fBX0Wwidfj9DORPjwcfbwRc6g==
X-Google-Smtp-Source: ABdhPJw62rJ6jpQ+XvEV4UFWbm4XcDLKzKexKv5JdC2h79thmw15AXbB/nT23QMCgr2TxmRZa4SjRTuWN//u2YEqRwk=
X-Received: by 2002:a05:6e02:e02:: with SMTP id a2mr8873405ilk.127.1626069965617;
 Sun, 11 Jul 2021 23:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210710122446.5439-1-tinghan.shen@mediatek.com>
In-Reply-To: <20210710122446.5439-1-tinghan.shen@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 12 Jul 2021 14:05:54 +0800
Message-ID: <CA+Px+wUVsY6CYwEdfSeK+KQGmvb224hvchgnTwX0rgBzMvXfqw@mail.gmail.com>
Subject: Re: [v2 1/2] dt-bindings: remoteproc: mediatek: Add binding for
 mt8195 scp
To:     Tinghan Shen <tinghan.shen@mediatek.com>
Cc:     ohad@wizery.com, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 10, 2021 at 8:25 PM Tinghan Shen <tinghan.shen@mediatek.com> wrote:
> @@ -5,13 +5,15 @@ This binding provides support for ARM Cortex M4 Co-processor found on some
>  Mediatek SoCs.
>
>  Required properties:
> -- compatible           Should be "mediatek,mt8183-scp"
> +- compatible           Should be one of:
> +                               "mediatek,mt8183-scp"
> +                               "mediatek,mt8195-scp"
Just realized we forgot to add DT bindings for mediatek,mt8192-scp[1].
Could you send another patch for adding the missing property?

[1]: https://elixir.bootlin.com/linux/v5.13.1/source/drivers/remoteproc/mtk_scp.c#L879

> -- clocks               Clock for co-processor (See: ../clock/clock-bindings.txt)
> -- clock-names          Contains the corresponding name for the clock. This
> +- clocks               Required by mt8183. Clock for co-processor (See: ../clock/clock-bindings.txt)
> +- clock-names          Required by mt8183. Contains the corresponding name for the clock. This
>                         should be named "main".
Let's move clocks and clock-names to "Optional properties".  See [2]
for your reference.  I guess it doesn't need to mention which chip
needs the properties.  For those chips that need the clock properties,
they won't work correctly without correct clock properties.

[2]: https://elixir.bootlin.com/linux/v5.13.1/source/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt#L87


Suggested to provide a cover letter for the series next time.

nit: other patches usually use "[PATCH v2 1/2]" in the email title
instead of the one used in the mail.
