Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5687D33C707
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 20:46:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233477AbhCOTqB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 15:46:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233706AbhCOTpn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 15:45:43 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7009C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 12:45:42 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id l4so32931885qkl.0
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 12:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VY11BYIgAhCdWHUv8waddSOddoxkrAGuQw5MjJrS3vE=;
        b=GDpRPRI//le1LnCEZjHY3CRsvGZn1WUwU0XqZETVFu0JTsDRUob8NaBFBE/QPkSije
         lWALMkwyNNGg0/Az5S/GYNsvSdsOM3ItFDLJORMlJZ088/Ja9Zvrbu0IQhhQGbMfAjt2
         G3C1QHIazpw562mBVqTlCFFPlIarX8xkZfckg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VY11BYIgAhCdWHUv8waddSOddoxkrAGuQw5MjJrS3vE=;
        b=DbwrAabNRR1r/VbRzM7eZBt0eREssQxqsJsFEi/OOx7/4qAhB17PGWX2zyfbRzfH3A
         Y4d/1GmLqWfIXaVfe+QqL1gfsIaXknagtSoacsGhGs57KKm4VA6tzFmuSEnceIGc+e60
         8cYgmlUmPc90DrdS+j21o8hukwS0falZZr1DO6NuKqkKeAIPIu1HMSbI5Iu1o+d2+8wX
         F0+XpaxvPomyW/Wwenw9QtFfbCTc8pej4riMEzE2PwAYpEdRq7iL2R9Ky4H8JqxqeH0f
         orY+5apWX8x234XuBQ3uQuAvKc0J+8+eP4QA9dUxJ8zA1ueup5r1cKTF/SsqBkB8rlmJ
         l7bw==
X-Gm-Message-State: AOAM531yU4IXrfbBRcHNKn2K/nIC0/W6+ff/CiObxMR6ZpuTTCeprgkB
        ODgAYAfDjxizFk6tpub0iH2NSug+lJFqEw==
X-Google-Smtp-Source: ABdhPJxWeu5Cttj7IySwkNiXbVXbRodC/dc7CdGKAGw2928FWscTG60wJL3BhMWs4K3JRiY2NlMlCQ==
X-Received: by 2002:a05:620a:5fb:: with SMTP id z27mr28050734qkg.19.1615837541512;
        Mon, 15 Mar 2021 12:45:41 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id k127sm13515373qkc.88.2021.03.15.12.45.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 12:45:41 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id h82so34365404ybc.13
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 12:45:41 -0700 (PDT)
X-Received: by 2002:a25:cf88:: with SMTP id f130mr1887543ybg.476.1615837084349;
 Mon, 15 Mar 2021 12:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210314061054.19451-1-srivasam@codeaurora.org> <20210314061054.19451-3-srivasam@codeaurora.org>
In-Reply-To: <20210314061054.19451-3-srivasam@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 15 Mar 2021 12:37:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VcOsSsn1MGkhd-t0dPv4cTOO2UV6+44oPrZ5iS0-f56w@mail.gmail.com>
Message-ID: <CAD=FV=VcOsSsn1MGkhd-t0dPv4cTOO2UV6+44oPrZ5iS0-f56w@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add sound node for sc7180-trogdor-coachz
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Mar 13, 2021 at 10:11 PM Srinivasa Rao Mandadapu
<srivasam@codeaurora.org> wrote:
>
> This is a trgodor variant, required to have sound node variable
> for coachz specific platform.
>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

With these two patches plus commit 9922f50f7178 ("ASoC: qcom:
lpass-cpu: Fix lpass dai ids parse") in the sound tree I get audio on
sc7180-trogdor-coachz! Thus:

Tested-by: Douglas Anderson <dianders@chromium.org>
