Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFCD54D3A5D
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 20:29:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230368AbiCIT0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 14:26:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236301AbiCIT0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 14:26:39 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6C085F4D
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 11:25:39 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id qa43so7227863ejc.12
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 11:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A9Y6szzvKtNHoFGCjb1F/maZTq9LGD/L2oPRd71PbSg=;
        b=loJ4PyWWDk+MnjSEe9xkYcUQ+ARkCw/t7ZO5FrgFH/jEsHuyJEpg3AKAsftIm6OkSn
         ZRp+5pjqcNtZj+sXo8p4FlSS7uN+9Li5sNb+nDLHkgqHcpj7hz2YkjJ+ICsNao3JJyk/
         tCrtC1n8SySLdhq5cUehTSAY6gRAqJHpgfNu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A9Y6szzvKtNHoFGCjb1F/maZTq9LGD/L2oPRd71PbSg=;
        b=Ldl4pqFQmBeHyLrDrp1DGzHR+dXVZ8Kb9Da5fkzaXWtcrOUWVBtwRT/FruqAjDKu3C
         CcKTfABevhgo3M2INLg4688f7fmw88n5WWd9A8aO1fo/Y/qgWdBDV/SPDcH4bI08G4XF
         eMyty/eHhBEzMqIVFapr1TBCXyENw87x86lMBuKlSJRJY7SNvxy8X4k3R53yUelFO5ps
         /wV8hqNzuZzY/a21Rqr3TkpPjr5dT04sxW+FC32IFesbHjLhfUl5uODfKajdiwmbvhHh
         JRzgelfl0s8DOKpvf382ovICzIK6oHAM0AVTKhDTr3MXvsyiQemIBYNnfEa23muR6td5
         P3LQ==
X-Gm-Message-State: AOAM5302d6g67cC4XWozob58JGS8xhjOKX/8O3H01QylH9I9qA6UdhCF
        +FoVJJBSJxl6whhru40I52k6UYVIEoWk9xrB
X-Google-Smtp-Source: ABdhPJxgvy/V0Nucoet2cQ+WofXMEk6qfGWTshzHqMz3qLRyv+DeRAPLaOtWGtxzTei2T8P5/3KzHw==
X-Received: by 2002:a17:907:1c8c:b0:6d8:795b:b458 with SMTP id nb12-20020a1709071c8c00b006d8795bb458mr1152736ejc.706.1646853937956;
        Wed, 09 Mar 2022 11:25:37 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id zk1-20020a17090733c100b006dab4a41df8sm1054949ejb.111.2022.03.09.11.25.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 11:25:37 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id q14so4651175wrc.4
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 11:25:37 -0800 (PST)
X-Received: by 2002:a5d:5232:0:b0:1f7:7c4c:e48 with SMTP id
 i18-20020a5d5232000000b001f77c4c0e48mr811587wra.679.1646853936582; Wed, 09
 Mar 2022 11:25:36 -0800 (PST)
MIME-Version: 1.0
References: <1646758500-3776-1-git-send-email-quic_vpolimer@quicinc.com> <1646758500-3776-6-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1646758500-3776-6-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 9 Mar 2022 11:25:24 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WFairiQF2zWc637Z+H61rX4Ar-E9ufG1fMctEk9E_xTg@mail.gmail.com>
Message-ID: <CAD=FV=WFairiQF2zWc637Z+H61rX4Ar-E9ufG1fMctEk9E_xTg@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] drm/msm/disp/dpu1: set mdp clk to the maximum
 frequency in opp table during probe
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, quic_kalyant@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Mar 8, 2022 at 8:55 AM Vinod Polimera <quic_vpolimer@quicinc.com> wrote:
>
> use max clock during probe/bind sequence from the opp table.
> The clock will be scaled down when framework sends an update.
>
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 3 +++
>  1 file changed, 3 insertions(+)

In addition to Dmitry's requests, can you also make this patch #1 in
the series since the DTS stuff really ought to come _after_ this one.

...and actually, thinking about it further:

1. If we land this fix, we actually don't _need_ the dts patches,
right? Sure, the clock rate will get assigned before probe but then
we'll change it right away in probe, right?

2. If we land the dts patches _before_ the driver patch then it will
be a regression, right?

3. The dts patches and driver patch will probably land through
separate trees. The driver patch will go through the MSM DRM tree and
the device tree patches through the Qualcomm armsoc tree, right?


Assuming that the above is right, we should:

1. Put the driver patch first.

2. Remove the "Fixes" tag on the dts patches. I guess in theory we
could have a FIxes tag on this patch?

3. Note in the dts patches commit messages that they depend on the driver patch.

4. Delay the dts patches until the driver change has made it to mainline.

Does that sound reasonable?
