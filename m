Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 46FAB15205D
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2020 19:22:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727468AbgBDSWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Feb 2020 13:22:10 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:33731 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727451AbgBDSWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Feb 2020 13:22:10 -0500
Received: by mail-lj1-f195.google.com with SMTP id y6so19690072lji.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2020 10:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QDmc7rJKH3PB8BRLa4LSMdik+WscauM3bJQAO66d9eA=;
        b=WeRebeBVSEUt28wl435zQEX1/6tiqV9monpU/7Ej5fqLhT4R41NF8WtVIPn3kCpd2W
         wbcN2Sjxu4ENSsuskkDYKK9U80zRpDL4LUYH/tlUOhVyLqB1KATrcbuAqPq0Al5qoWvp
         rMHMlBCss0WzMtE8Lymhfpn15/d3thD2oJEIZmNP8MDzdV8YSMDGPweIJImQWGcV8Ga/
         j/IbkkAP1Fj9pbuFBAyq/t9v6EySeBAPmFRUvTPRYghB8ovJFADomNk5+wvaaAHEWM0S
         hpqdASOKeTOzzB6JZ+53/Eq07SOogb68gbxVJW6udAD0KmS978l/cAwWllNpHbBrJLcc
         ldEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QDmc7rJKH3PB8BRLa4LSMdik+WscauM3bJQAO66d9eA=;
        b=PTHH6WnsYyXgaUik/qIhNH6DWHURdv/VaVdETKW7ZBHrPtIEvi1YgRST4Pfm+LbyDS
         3C0dFFLzNoiw/nuIb/sfDqzVOWZnfEnE9RDi7/REs3U6+oepJ9En4lFsIKMiuahmwYUE
         rqEb65+cW3i0PVMKhJQ6lTLqoiIKk28yQoka7v9K/Kw0DHVJwSJFa4EpewEfJiSTDK3U
         NEYAq2Qrls4Uhx4EmDMHRt6JwqIjeSuLBTJFb5cxwaHC1EJzeA9vwo53R5iN0Hlt19x7
         kmWWcgN8COIb3mc9Mf95Gz26pg2Zbs9Rcvoj7rhq6XUYrrFIq2pK24u1Z4ZZhy7j1a/G
         3l3Q==
X-Gm-Message-State: APjAAAWUO5f2c2XDasUt7SxjzdPl07uf3b0l8bHwLEmPx0ZzV3LMVi7E
        1awh3cfeK3Tyr2rGL4BFXqaoTIbtTNcbh2zYVNqFmg==
X-Google-Smtp-Source: APXvYqxET1q8n/qQ6aY0jYO8nGz1OvZdbUcpn8bnrFqAZJyuuJYIXotPvLB+pBHSS5AiqYMW6+TjrlGJYozegKXPWGc=
X-Received: by 2002:a2e:81c7:: with SMTP id s7mr18353599ljg.3.1580840527698;
 Tue, 04 Feb 2020 10:22:07 -0800 (PST)
MIME-Version: 1.0
References: <1578630784-962-1-git-send-email-daidavid1@codeaurora.org> <1578630784-962-6-git-send-email-daidavid1@codeaurora.org>
In-Reply-To: <1578630784-962-6-git-send-email-daidavid1@codeaurora.org>
From:   Evan Green <evgreen@google.com>
Date:   Tue, 4 Feb 2020 10:21:31 -0800
Message-ID: <CAE=gft6--=zhxfR9G=S0g-5c9YdpvaFWz9dcgV7zJQAzcreZjg@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] interconnect: qcom: sdm845: Split qnodes into
 their respective NoCs
To:     David Dai <daidavid1@codeaurora.org>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, sboyd@kernel.org,
        Lina Iyer <ilina@codeaurora.org>,
        Sean Sweeney <seansw@qti.qualcomm.com>,
        Alex Elder <elder@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 9, 2020 at 8:33 PM David Dai <daidavid1@codeaurora.org> wrote:
>
> In order to better represent the hardware and its different Network-On-Chip
> devices, split the sdm845 provider driver into NoC specific providers.
> Remove duplicate functionality already provided by the icc rpmh and
> bcm voter drivers to calculate and commit bandwidth requests to hardware.
>
> Signed-off-by: David Dai <daidavid1@codeaurora.org>
> ---
>  drivers/interconnect/qcom/sdm845.c             | 1132 ++++++++++--------------
>  include/dt-bindings/interconnect/qcom,sdm845.h |  263 +++---
>  2 files changed, 609 insertions(+), 786 deletions(-)
>
> diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
> index f078cf0..8145612 100644
> --- a/drivers/interconnect/qcom/sdm845.c
> +++ b/drivers/interconnect/qcom/sdm845.c
> @@ -5,283 +5,285 @@
>   */
>
>  #include <asm/div64.h>

You don't need this header anymore, right?

> -#include <dt-bindings/interconnect/qcom,sdm845.h>
>  #include <linux/device.h>
>  #include <linux/interconnect.h>
>  #include <linux/interconnect-provider.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> -#include <linux/of_platform.h>
> -#include <linux/platform_device.h>
>  #include <linux/sort.h>

..or this one.
