Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33FD397674
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:22:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233360AbhFAPYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233088AbhFAPYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:24:21 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB3EFC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:22:38 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id u30so1119971qke.7
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SHY1Su43K3ELrQR9CrBAbBOQHJtxQOdLocpoZ2X7Ng8=;
        b=FkPjp6FbTjUVq0pXGa6pXaYuNulBbgZ3zjSZhG9UJqpFTSCH8y84SKHJER94xQE4Cn
         cykpvCo8tmeqKzyTSGAEvcES7HBlyJ+TBL+c9dqLUIAeiIt66tj6Feg42qZca/cWLFrP
         8IXz2k7nKsD/90QvJiwFL8082iMK1XOCW7vdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SHY1Su43K3ELrQR9CrBAbBOQHJtxQOdLocpoZ2X7Ng8=;
        b=r7fhQ68pCNcuXuAdh4nbPgaV9Askk/CCj2EomQpBfXCFwdI/ZTP2nlEydHtEYZEtzJ
         3CHrPUuRgoz5Sp5XbjepBlODFmPy/RXx1dwxIGUtGV6t1ezZx2C2RO1iNhdKr3ysIoJm
         ZSK5Ubr0JnWHdjRes6HCNkrXy6ETelJx22WpON2xMLnyHjy0ocKAed4ZCF3B/f6M/snw
         /HFgyAfzIT97dIzH5XLndf81qHv1aCDFg3xHbo/KDvbDOnaLCcwj47/L0a71D7B23gZh
         F/Sn2lAyoBtkAzBJoV/xy3D3YC2a6mqYupnfRsJVpcB3RXzmPvnwJ3GBWv8MwdzZ06JI
         qk1A==
X-Gm-Message-State: AOAM533SEQOdYrKbR2iF/gAPe3uaNnR01tapNLJX03+OjWGkhwlyZtQb
        MmmXtyvcDNk5UgA6UBEkIjm0fXbwRc8vmg==
X-Google-Smtp-Source: ABdhPJwITMD1M6xuqq2pOzr8jXo/8DkAfq8dR6tOYQ5yi4l2Yb3LQAuUYrYxghSc9Tij6hSAKjkWpA==
X-Received: by 2002:a05:620a:1fc:: with SMTP id x28mr22133821qkn.269.1622560957792;
        Tue, 01 Jun 2021 08:22:37 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id v25sm10720731qtf.68.2021.06.01.08.22.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 08:22:37 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id s107so17924656ybi.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:22:37 -0700 (PDT)
X-Received: by 2002:a25:6088:: with SMTP id u130mr40579283ybb.257.1622560637314;
 Tue, 01 Jun 2021 08:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210524142114.18676-1-srivasam@codeaurora.org>
In-Reply-To: <20210524142114.18676-1-srivasam@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 1 Jun 2021 08:17:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+3qP3uj2AVkejmVBmMYqWAxMCS7HBRSkKcPgwP0XGdQ@mail.gmail.com>
Message-ID: <CAD=FV=X+3qP3uj2AVkejmVBmMYqWAxMCS7HBRSkKcPgwP0XGdQ@mail.gmail.com>
Subject: Re: [PATCH v3] ASoC: qcom: lpass-cpu: Fix pop noise during audio
 capture begin
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Patrick Lai <plai@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 24, 2021 at 7:21 AM Srinivasa Rao Mandadapu
<srivasam@codeaurora.org> wrote:
>
> This patch fixes PoP noise of around 15ms observed during audio capture begin.
> Enables BCLK and LRCLK in snd_soc_dai_ops prepare call for introducing some delay
> before capture start and clock enable.
>
> Co-developed-by: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---
> Changes Since V2:
>         -- Updated comments as per linux style
>         -- Removed unrelated changes.
> Changes Since V1:
>         -- Enableed BCLK and LRCLK in dai ops prepare API instead of startup API
>         -- Added comments
>
>  sound/soc/qcom/lpass-cpu.c | 54 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)

Presumably related with Srinivas Kandagatla's comments: this patch
causes a bad splat at bootup. Specifically, here's what I saw when
this patch was in the Chrome OS 5.4 kernel:

------------[ cut here ]------------
lpass_audio_core_lpaif_pri_ibit_clk already disabled
WARNING: CPU: 0 PID: 2066 at drivers/clk/clk.c:958 clk_core_disable+0x4a0/0x670
CPU: 0 PID: 2066 Comm: cras Not tainted 5.4.122-lockdep #4
Hardware name: Google Lazor (rev1 - 2) with LTE (DT)
pstate: 60400089 (nZCv daIf +PAN -UAO)
pc : clk_core_disable+0x4a0/0x670
lr : clk_core_disable+0x4a0/0x670
sp : ffffff81727cf8a0
x29: ffffff81727cf8a0 x28: 1ffffff033d2b8d5
x27: dfffffd000000000 x26: ffffff81a3781980
x25: 1ffffff03493d3b3 x24: ffffff816f433480
x23: dfffffd000000000 x22: 1ffffff035b66e2f
x21: 00000000ffffffff x20: ffffff81adb3717c
x19: ffffff81adb37100 x18: 0000000000000339
x17: ffffffffffffffff x16: 0000000000000006
x15: 0000000000000001 x14: 0720072007200720
x13: 0000000000000000 x12: ffffffd0132c1e00
x11: 0000000000000001 x10: 0000000000000000
x9 : cff2cb5e2cb22e00 x8 : cff2cb5e2cb22e00
x7 : ffffffd010288f74 x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001
x3 : ffffffd010429d10 x2 : 0000000000000001
x1 : 0000000000000008 x0 : 0000000000000034
Call trace:
 clk_core_disable+0x4a0/0x670
 clk_disable+0x50/0x64
 lpass_cpu_daiops_shutdown+0x190/0x204 [snd_soc_lpass_cpu]
 snd_soc_dai_shutdown+0x8c/0x9c
 soc_pcm_close+0x258/0x478
 snd_pcm_release_substream+0xfc/0x1e8
 snd_pcm_release+0x8c/0x124
 __fput+0x1e4/0x4fc
 ____fput+0x1c/0x28
 task_work_run+0x12c/0x164
 do_notify_resume+0x1e04/0x2c48
 work_pending+0x8/0x14
irq event stamp: 101552

-Doug
