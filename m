Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3233E211B59
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 07:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726187AbgGBFGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 01:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725937AbgGBFGy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 01:06:54 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 900A2C08C5C1
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 22:06:54 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id v6so13854034iob.4
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 22:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZHlP2C5MB7l2fajuE903TxpGs1g7Wi3a1RfzRhYtEuI=;
        b=jBBi7vxBC7RWTmctSA+IZrsShvsX9YysgBXFu9liiBn5bj5H4DblMpwMy2YadSfPFl
         27ip1UPrOFS9Dpdns45mVs/5kPh3b8IlLIUfnssW3G5Ks6JWsc5wtSHd/isr9dL5FFq8
         oFsHpI6HSDLCllKy8uXK6HXTV4OgWkwftxEgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZHlP2C5MB7l2fajuE903TxpGs1g7Wi3a1RfzRhYtEuI=;
        b=kNMph2Jbt0kviFPHXJCozRNXja5sIr16pYwrhgBTQsdaDtblGF275X3pEZw9mS+LEC
         cApsb9yHQBfnzQ7cGT/PhTIzwhBVYwoSWljcrNXcklwhkLcRIlJWsRc9A2RLLZ4y8wih
         gZp+uLh2pKG64Xm8+FyEoMR3yY3JrDAf5sLMqtWkZTCYQISSy0GFA5xWR07JFe7BxK1C
         TMBjqnaUHsR/9XgYpmqrIxb4LeOQFAeeD7XtdTCp4xDkfDxHeIQjCPVk3qMXovTU5VjL
         qNDCCoV7Km0mVLZzj9KGpBBXQkK5OfYkue/iX08g8cZ9XTxwuCndvNmO9y1I+m0FwOyQ
         1bBA==
X-Gm-Message-State: AOAM533RhxN7ZEXOBP8DX7O75gATea6wQAKfofPego4fnDmEautugZgp
        3A9unUd+vwEY0BNQUZj8WRqQa/v50/lLQzQSfzlJqw==
X-Google-Smtp-Source: ABdhPJzThdIk4eeEV5zJzUTuMvga/K6xZM+uqxGNHJG9uByFPu83fN1aHPWab8+wAEhw33YzK0OQTyMPmNMCIqMkpqc=
X-Received: by 2002:a5d:8f01:: with SMTP id f1mr5811436iof.20.1593666413937;
 Wed, 01 Jul 2020 22:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200625101757.101775-1-enric.balletbo@collabora.com> <20200625101757.101775-5-enric.balletbo@collabora.com>
In-Reply-To: <20200625101757.101775-5-enric.balletbo@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 2 Jul 2020 13:06:28 +0800
Message-ID: <CAJMQK-gs7+PxJmYYayLD+uo6wter7D=BU+-Zi4sEDiokohHQqg@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: mt8183: Fix unit name warnings
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        erwanaliasr1@gmail.com, Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 25, 2020 at 6:18 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Remove the unit address from the DT nodes that doesn't have a reg
> property. This fixes the following unit name warnings:
>
>   Warning (unit_address_vs_reg): /cpus/idle-states/cluster-sleep@0: node has a unit name, but no reg or ranges property
>   Warning (unit_address_vs_reg): /cpus/idle-states/cluster-sleep@1: node has a unit name, but no reg or ranges property
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>
> Changes in v2:
> - Replace cluster-sleepX for cluster-sleep-x (Matthias Brugger)
>
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 00137ec61164d..6c00ffa275202 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -168,7 +168,7 @@ CPU_SLEEP: cpu-sleep {
>                                 min-residency-us = <800>;
>                         };
>
> -                       CLUSTER_SLEEP0: cluster-sleep@0 {
> +                       CLUSTER_SLEEP0: cluster-sleep-0 {
>                                 compatible = "arm,idle-state";
>                                 local-timer-stop;
>                                 arm,psci-suspend-param = <0x01010001>;
> @@ -176,7 +176,7 @@ CLUSTER_SLEEP0: cluster-sleep@0 {
>                                 exit-latency-us = <400>;
>                                 min-residency-us = <1000>;
>                         };
> -                       CLUSTER_SLEEP1: cluster-sleep@1 {
> +                       CLUSTER_SLEEP1: cluster-sleep-1 {
>                                 compatible = "arm,idle-state";
>                                 local-timer-stop;
>                                 arm,psci-suspend-param = <0x01010001>;
> --
> 2.27.0
>
