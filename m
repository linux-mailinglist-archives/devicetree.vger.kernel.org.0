Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1CEC33C8C3
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 22:49:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233709AbhCOVtX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 17:49:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233765AbhCOVtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 17:49:20 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF436C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:20 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id x27so8563007qvd.2
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y8Ctq0g/toRBjs9iL8s88ECUGF1puSJjpiFNl2vNGJQ=;
        b=WmMpkHYindb+LZ9jDwNWfpQ6LLEnax8gmvAN4GjHAd7F/G8HAl8R9epV+4+0neeiHh
         W5gnE6nKWdmAWkR8CN+G7waiDbKENnOIXMQeFf27dAzrOZNfqRQGyl52yASFb6tn5/X6
         xw4jKtVge4TTPXADouuNNqZNl/gTydPWXjXew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y8Ctq0g/toRBjs9iL8s88ECUGF1puSJjpiFNl2vNGJQ=;
        b=mC/8vw+BJX3ONQMz2ZsVmvNzTtB0ZQ1sCqxCTJV27TeykT6ytlVzok0lT4DWF2N+i/
         yFBDRIqCTApDKRV32qYWHbzrEGDB/taDCtPwmx1el9VRBMaixykOMDaFnWyrX45bmlna
         cPU1fbkPMvWKms7w53+0yPCncBFxXH/4h0E5t9dn4XCwu68ThY4WWC0HhJG6l40y5U5f
         JuVB4Xouhm5fyNHvG6xaSogFOUNtSZxC6fTH/VtI4oj2qjPq8Igb0JpJX7xrNWLDFYTs
         LHseVXvAtfBJATAI7MhGBMdm+6qBpxh6VZ0uR2fHnPI/VbXJbnvu9/pGTXmqm/MXGNUG
         TvCg==
X-Gm-Message-State: AOAM53026WdN4xhj5cO43T5/ssXulBJpNRqwwTK4FFjUEEdA0uznpS1Q
        ySLt4awFDxRCONcu8Slxlcub85vCOqepAg==
X-Google-Smtp-Source: ABdhPJxhB+pVucb35ltAavTvreNQaGfHIYDuWhqPSr/m2uSC3mm6KcnvzMmMccz9twlZOUBroiqKcQ==
X-Received: by 2002:ad4:45e4:: with SMTP id q4mr26925592qvu.11.1615844959836;
        Mon, 15 Mar 2021 14:49:19 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id e15sm12371135qtp.58.2021.03.15.14.49.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 14:49:16 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id u75so34711262ybi.10
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:07 -0700 (PDT)
X-Received: by 2002:a25:ab54:: with SMTP id u78mr2804200ybi.276.1615844947079;
 Mon, 15 Mar 2021 14:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210312183228.550779-1-mka@chromium.org> <20210312103211.v2.2.I4138c3edee23d1efa637eef51e841d9d2e266659@changeid>
In-Reply-To: <20210312103211.v2.2.I4138c3edee23d1efa637eef51e841d9d2e266659@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 15 Mar 2021 14:48:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U6xNaTLaP5Hz4EVTd3EY-ptTCaLJ84X6=C_6E9Gdq03w@mail.gmail.com>
Message-ID: <CAD=FV=U6xNaTLaP5Hz4EVTd3EY-ptTCaLJ84X6=C_6E9Gdq03w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc7180: Add pompom rev3
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 12, 2021 at 10:32 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> +       linux,keymap = <
> +               MATRIX_KEY(0x00, 0x02, KEY_BACK)
> +               MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
> +               MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
> +               MATRIX_KEY(0x01, 0x02, KEY_SCALE)
> +               MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
> +               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
> +               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
> +               MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> +               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> +               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
> +
> +               MATRIX_KEY(0x03, 0x09, KEY_SLEEP)       /* LOCK key */

I don't think you want the LOCK key. See <https://crrev.com/c/2719075>


-Doug
