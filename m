Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B97E2C2F64
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 18:56:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404008AbgKXRzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 12:55:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404001AbgKXRzt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 12:55:49 -0500
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDFD9C0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:55:48 -0800 (PST)
Received: by mail-vk1-xa42.google.com with SMTP id a186so688273vkh.9
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ASb49GMgEQk5JUxUZFVOUivC69eYey0JM4nqNA/W1FQ=;
        b=SJ82uvGUhVyRpvlEm0DW8ZjBfkucQNAdh1ODVXCMTEVB/n47PNRWRkHissZ34gBQLZ
         IVFdQU4/UbVOnKnxxklVwVwyewiOXGlngAWBsqPCyo/lpxZf+ANvLWHkXwG06EzXKj4M
         7XTCjcAIaUtH/njdxeUlzGEAUqHkm3CSUVrxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ASb49GMgEQk5JUxUZFVOUivC69eYey0JM4nqNA/W1FQ=;
        b=jij2McRDCwszFkedq0kILcuXbw/BEuXwhnb3CDtUynv27ujoup5kZa99PgyjrSxXnM
         5kZ7T9Ja0/fk37eosVRrhdPEApWq30sL3pRGR+Xiy2JCWKmjymec8C8MJadhj+5u+eAJ
         4RdO/gY8ui8MDypJooWVNWqMRJWJOSrsIVlbX/NxLMGj8K6fZ8nztCEtBz6NBkXEIyB5
         OBp19xebNjHZ9PHuHfvB83O/FFXbR+F+lmUFUCOFCrlc9XCTxNxUej2HyMfxzkVecGYH
         4rjnmV+CzmxgcnCsw2W+vQzkK3J9BEGBh2/CTz9VMzg1OaOj46AU3OFSbjGdHQr9LZki
         onaQ==
X-Gm-Message-State: AOAM531GA1P+cJdzIaVoir1dXElA4wbxt7HlL+2biyRvGLPfv/Pcka5A
        mZB3T54kx3bHeq6n5B5qmOF/wUIbTSKNaQ==
X-Google-Smtp-Source: ABdhPJxfzgnizO6AI7R2kC9XySQCs4S2ad0qZ6D9DzuVL9sGS0GP9vkfW97QIQMing/ndcWPwEMMpw==
X-Received: by 2002:a1f:d844:: with SMTP id p65mr4949912vkg.23.1606240547683;
        Tue, 24 Nov 2020 09:55:47 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 45sm346344uai.16.2020.11.24.09.55.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 09:55:46 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id r23so7099534uak.0
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 09:55:46 -0800 (PST)
X-Received: by 2002:a9f:36a1:: with SMTP id p30mr4817290uap.64.1606240546042;
 Tue, 24 Nov 2020 09:55:46 -0800 (PST)
MIME-Version: 1.0
References: <1606198876-3515-1-git-send-email-sibis@codeaurora.org>
In-Reply-To: <1606198876-3515-1-git-send-email-sibis@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 24 Nov 2020 09:55:34 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XpX3zq-rzMNE8f7mZEWBqD1aOrCekzwzugdG7ANW9j-A@mail.gmail.com>
Message-ID: <CAD=FV=XpX3zq-rzMNE8f7mZEWBqD1aOrCekzwzugdG7ANW9j-A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sc7180-lite: Tweak DDR/L3
 scaling on SC7180-lite
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
> Tweak the DDR/L3 bandwidth votes on the lite variant of the SC7180 SoC
> since the gold cores only support frequencies upto 2.1 GHz.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>
> V2:
>  * Updated the lite ddr/l3 cpufreq map to have better power numbers with
>    similar perf.
>
>  arch/arm64/boot/dts/qcom/sc7180-lite.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

I certainly don't love the way that this works but it does match the
way folks have agreed that DDR bandwidth votes should work.  Long term
it feels like we should re-think how this is working, but it seems
fine for now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
