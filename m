Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD23D35D3C5
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 01:16:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243869AbhDLXQ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 19:16:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241881AbhDLXQz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 19:16:55 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC71BC061756
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 16:16:35 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id x11so16081223qkp.11
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 16:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uUysqPcVScshCWNmq+4LaopyuP9HdeVJMmV1VT6XP+Y=;
        b=W75v1fZMpylDD7xLu+nJdgkNAIo3NBSGzAF6M2JoZ2TF94FTH630yBz0iWXBFC+8ck
         nUL/us/eFm9pk0sZH7Rb8smdKe6v8UuY7EeDTLW5Hk9gncCQKyY1txlul6ubstOrpQHp
         XDdwETVySNZJiR31vKJlwbc1e1h8p2SG8XhFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uUysqPcVScshCWNmq+4LaopyuP9HdeVJMmV1VT6XP+Y=;
        b=QHGfw1pIYeJXiqVogbsHPbnnG/DuZskz87ZBuNHgwVtAu9PMW2vtyFAnL1xv/RC7Tc
         4BOTm8M20Hr6VB6joq2kGW46yzCppDxzQL+ImmDlFb/3Yy+a/F2vcpdBqhDpQwteT1JO
         47jUEG5u3TpQklO4YueQOVagLKVw6Bls7otPlV2yey1eLw0P1638HQNoYkgaN5GrDMAt
         xaeCH4E1os+1NplErIlziiDRv4F5uQQh8tZLeSZL0lEZTfnHgWy0fZwCpDFesCXPiy9r
         YIKbnB/C+8Uz5u8QHYLKA4W3NGJW+JK9Vdg0obEzZzRRVlAhl94ySPG5GzbhjoBPmy6z
         qwuQ==
X-Gm-Message-State: AOAM533tUNbgCRUEtOrmTiaz2+mtS6bXu/4uPOqOs1Epu7kZsMdnGA37
        TFSc7NmcAZ0M1PID4tNBUZHeLjC21WCNzg==
X-Google-Smtp-Source: ABdhPJxa8pOHwmUWKTbckTHO4R8KzSVKpr69/3DnfSNXDYg04cVabP63irnpOcyTAnnQx/bKY6ANnA==
X-Received: by 2002:ae9:f50d:: with SMTP id o13mr1393657qkg.488.1618269394739;
        Mon, 12 Apr 2021 16:16:34 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id a8sm8626773qtx.9.2021.04.12.16.16.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 16:16:33 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id k73so9760730ybf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 16:16:33 -0700 (PDT)
X-Received: by 2002:a05:6902:4c3:: with SMTP id v3mr7697541ybs.276.1618269392732;
 Mon, 12 Apr 2021 16:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210315133924.v2.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
In-Reply-To: <20210315133924.v2.1.I601a051cad7cfd0923e55b69ef7e5748910a6096@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 12 Apr 2021 16:16:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=ViWgXzudGAiVLakaKuGK_gEnUxQ8nOkZjCrxQHjdGx9w@mail.gmail.com>
Message-ID: <CAD=FV=ViWgXzudGAiVLakaKuGK_gEnUxQ8nOkZjCrxQHjdGx9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add "dmic_clk_en" for sc7180-trogdor-coachz
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Mon, Mar 15, 2021 at 1:39 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This was present downstream. Add upstream too. NOTE: upstream I
> managed to get some sort of halfway state and got one pinctrl entry in
> the coachz-r1 device tree. Remove that as part of this since it's now
> in the dtsi.
>
> Cc: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Cc: Ajit Pandey <ajitp@codeaurora.org>
> Cc: Judy Hsiao <judyhsiao@chromium.org>
> Cc: Cheng-Yi Chiang <cychiang@chromium.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> This applies atop the patch ("arm64: dts: qcom: Add sound node for
> sc7180-trogdor-coachz") [1].
>
> NOTE: downstream this property was present in each of the board
> revisions. There's actually no longer any reason for this and I'll
> shortly post a downstream patch to fix this.
>
> [1] https://lore.kernel.org/r/20210313054654.11693-3-srivasam@codeaurora.org/
>
> Changes in v2:
> - Remove the pinctrl from the -r1
>
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r1.dts   | 13 -------------
>  .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi     | 16 ++++++++++++++++
>  2 files changed, 16 insertions(+), 13 deletions(-)

I guess this patch missed the boat for 5.13? Can it get queued up for
5.14 whenever that happens?

Thanks!

-Doug
