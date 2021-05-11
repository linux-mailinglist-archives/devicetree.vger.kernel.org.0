Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8012137A5FA
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 13:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbhEKLsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 07:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230400AbhEKLsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 07:48:00 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1BADC061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:46:52 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id s25so36438ljo.11
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h1eK/LiSW68c+KB3iND1/GFxMdwpuYaLYFblZwKKZ1U=;
        b=SKWRZkC4/5Obo8EhpRMpq/H1HugDUO+/2t/KK3+/e7BYkXjjQKm5A2Rgt5F581Gr/7
         w4wlhjQNsqEd9k+rgyxZYn5j+I/mlBKIQ+dYX95wuxbrQPNbQ0pULlo2XZ38/JIuEojQ
         TpoBoS6DlLfMjYNFxQcQJC+oEqigEtK8WFx6xukSP9ip2jNpv785X5akqkOgFSnFtyaB
         1upkHJIewAL78MdVZaWJzf0QcwakB4TqGhlq/XNmn1sHmb7cp/6fL4//8NmhrlATVH8x
         gYG0a7YFuPl7RZOQVjueI6aQjO4MJxdTeZgaE3FtpTkm4TR74mORDkI37NPjLWi32Fx5
         gqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h1eK/LiSW68c+KB3iND1/GFxMdwpuYaLYFblZwKKZ1U=;
        b=rbWMLRnhJwOAj2dKYdggKhjsCZ6K+XhmgqiyDi4NR7nVj259COQTuPslhvhJ3p7jv1
         x474hUpVnVssrqiOuC9inwUDxWgQ57yXG4gmb1C77v1qTozgVe2A+6g1hI956JYOS43w
         /ibMp7tR/qf8t8ySeGkAvffme19W5gUCmYqaOpokK//OfogNN76gS5H8kE6pHGJVyqUt
         uiPU+tvkocNhN+Ncjtg1M0yT7qn0E/ET1qN3IKgdPogyeWUlfMS58KOnJ/RGm+BRmOxT
         uBKNb68Mle1MwAbBmlzOPpZVWCt1y7RAUISTUcD048peJVXRcbPl+xZR5A4RXwQCJmbw
         H/tg==
X-Gm-Message-State: AOAM531JQ39Mk5ALVE+mzuBz9nV13LlQR2Lk1oM+jpgkBnPONZoROE3y
        GTX0jVuaEQ/vLBJ693DPCizSY3jKe6TdqsBVXzI=
X-Google-Smtp-Source: ABdhPJw/Fg+RY/E5UQA2GOo3WJdHynai38usVkF6mXe5Nc4Igz6DPFBTO4ZQBlHWXg27U0yaAIZWxad+KTlKox9LTAk=
X-Received: by 2002:a05:651c:a06:: with SMTP id k6mr24422345ljq.347.1620733611417;
 Tue, 11 May 2021 04:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210510185931.104780-1-l.stach@pengutronix.de> <20210510185931.104780-3-l.stach@pengutronix.de>
In-Reply-To: <20210510185931.104780-3-l.stach@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 11 May 2021 08:46:38 -0300
Message-ID: <CAOMZO5AZEuKnwSpwdMp7SxLLE+5VQ3rnU-QVuP_yfnFqd6qJ4Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mq: add support for MNT Reform2
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 4:00 PM Lucas Stach <l.stach@pengutronix.de> wrote:


> +&i2c3 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c3>;
> +       status = "okay";
> +
> +       pcf8523: pcf8523@68 {

Just a nit: node names should be generic: rtc@68

Reviewed-by: Fabio Estevam <festevam@gmail.com>
