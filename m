Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FEA92C2F66
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 18:56:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404055AbgKXR4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 12:56:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404001AbgKXR4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 12:56:14 -0500
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ACE1C061A4D
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:56:14 -0800 (PST)
Received: by mail-vs1-xe44.google.com with SMTP id u7so11549810vsq.11
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dstdkNf1brKdffRW0gFmbGJRx2DF5qxz6SUvxED47w8=;
        b=TGh7RNH83GE0U0nAPatnZIFjE4u3CMt0Qxiu9Wqb0GPS/OPZJNtTkAnC0zifkdi1is
         fxaivn+USYnBKSThYwUlDA0giTUU/2ozReLrNWUtISAP37Q1Drz7JKH12xsPmz5edpav
         /CgogcL0A4GA2sXcKGMlF3edlC1/RBIPC+Jb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dstdkNf1brKdffRW0gFmbGJRx2DF5qxz6SUvxED47w8=;
        b=UrVSRfD+/vVx9Z26q0dDf/O+EsAsueWBPC5SjuPkoU6Z/VFJPlc+J2q8+BzvhbE+Eo
         JJ/dQhwaUNIaIBXnv4otmDUzmOvua7vqLvXW/YeEqZF5KTDsEMTTkS8pjrT+2I/U1RyE
         17TmlV6kloP77chPYSY/5bjjvqu0AnAdy+wFHhNN/124DiO4muREAFA3biwyT/zQj0xp
         KzqIFvkptGOsSR6eDk6i0Mn6KfyXN9PvDKUUBgVB3tbE9X8ujQB2mF1Q7VunYZwBu5lq
         VvPw9XhKdcuvPABRi/WPTc1MyzNJwxWKUk2fB/PVUQSHSCV5c4VLgiqurvWnQHtC8xST
         y7zA==
X-Gm-Message-State: AOAM533OiLMGQaVb/gAojVoSYdbojjI/5GNFRyYnrTPfm+HPmP6CRSKS
        faioFpqN5iTM82kP/13u5F6X44BPIJHsZQ==
X-Google-Smtp-Source: ABdhPJy52oqJkAbpcCkmxyPPKY1t+qo/21KicLIlB9t5ut2Db3+y2EM29AwRReyCto9WfgjJpOScQw==
X-Received: by 2002:a67:e2c1:: with SMTP id i1mr5314416vsm.2.1606240573274;
        Tue, 24 Nov 2020 09:56:13 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id p13sm1744947vkm.56.2020.11.24.09.56.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 09:56:12 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id m16so11559781vsl.8
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:56:11 -0800 (PST)
X-Received: by 2002:a67:4242:: with SMTP id p63mr5023952vsa.34.1606240571069;
 Tue, 24 Nov 2020 09:56:11 -0800 (PST)
MIME-Version: 1.0
References: <1606198876-3515-1-git-send-email-sibis@codeaurora.org> <1606198876-3515-2-git-send-email-sibis@codeaurora.org>
In-Reply-To: <1606198876-3515-2-git-send-email-sibis@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 24 Nov 2020 09:55:59 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X-3YzmhS1g8ytcNLNfrtLnMKNmeycA4oW5kJjb=X+BMw@mail.gmail.com>
Message-ID: <CAD=FV=X-3YzmhS1g8ytcNLNfrtLnMKNmeycA4oW5kJjb=X+BMw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7180: Add DDR/L3 votes for the
 pro variant
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Nov 23, 2020 at 10:21 PM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> Add DDR/L3 bandwidth votes for the pro variant of SC7180 SoC, as it support
> frequencies upto 2.5 GHz.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
