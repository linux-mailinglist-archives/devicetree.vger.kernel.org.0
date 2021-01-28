Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA7D30718A
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 09:35:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231842AbhA1IbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 03:31:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231791AbhA1Iau (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 03:30:50 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FEB8C061574
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 00:30:08 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id a20so3441464pjs.1
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 00:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=ylVX93kG0pfKLjOK+VyaAAnOVEasqsi8+AYeDV5CIVc=;
        b=m1b089FNnXo/FIiunebnJhh/k60S/WpehXj3Sn+4cJjvq7c7gjsn3qu3e1LmwBksDI
         c1uj3sQjem5jPatGk0juLcrRCEyooTxLT869X7uL5VkZRiITvBItmB0neRIuYzBqVhX+
         ewZGSlmSnNBvkKwWR0vJTGCrtbVA/WUvXlyBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=ylVX93kG0pfKLjOK+VyaAAnOVEasqsi8+AYeDV5CIVc=;
        b=Z4WdAmk3FmhSB6yzN3+o+a3WPdS8ZEMMZ8W8XIMHIKXNeBuJYcwMCSqtixPsNMien8
         APbW8uOkmMiR6a+mN1W0cAGe/MPY6oA+BHtyq+vzoXSLrG7L0Cegu1S9Cn0wRyswr9nf
         EJkqS69YA7yFGv6JXZBEfLtH4TrmZEeZtnuzEG2ZuWdbCLzq0yNn4iuwznAGcFJ+hhC0
         D7hh3me0hCCahPL0d9P6OsWqdnv5Xp7Ks8V1//XlidRd+VVKUO8P95lX0bUdw/PDc/wt
         hzAeBuXH4bV5RjtYe+K6L/EiNBfy5uerrAcn/Dcg0twzC9cKZdUGLPpcLKXRUbUCVoDY
         EcIQ==
X-Gm-Message-State: AOAM532g4hXehCR75YC8fnKVvPYAqguu3IpmobWCbOY9Zjg+AcFQtBEQ
        QBwURsvUkoMZbE9eqEPg6GAQ5A==
X-Google-Smtp-Source: ABdhPJxv0VGQQsxMPwF5kTuNuglyyXV6LtQH2Bm9BpqAnuekS43gpU7rJFA5oCN9CaT2gYItOLy3cA==
X-Received: by 2002:a17:90a:df0c:: with SMTP id gp12mr10171448pjb.3.1611822608072;
        Thu, 28 Jan 2021 00:30:08 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:304c:5453:303a:8268])
        by smtp.gmail.com with ESMTPSA id l190sm4813102pfl.205.2021.01.28.00.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 00:30:07 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210128021753.2560931-1-judyhsiao@google.com>
References: <20210128021753.2560931-1-judyhsiao@google.com>
Subject: Re: [PATCH] drm/msm/dp: trigger unplug event in msm_dp_display_disable
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, tzungbi@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Judy Hsiao <judyhsiao@google.com>,
        Judy Hsiao <judyhsiao@chromium.org>
To:     Judy Hsiao <judyhsiao@chromium.org>, linux-kernel@vger.kernel.org
Date:   Thu, 28 Jan 2021 00:30:05 -0800
Message-ID: <161182260580.76967.3767678954967498619@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Judy Hsiao (2021-01-27 18:17:53)
> 1. Trigger the unplug event in msm_dp_display_disable() to shutdown
>    audio properly.
> 2. Reset the completion before signal the disconnect event.
>=20
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---

Fixes: 158b9aa74479 ("drm/msm/dp: wait for audio notification before disabl=
ing clocks")

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Tested-by: Stephen Boyd <swboyd@chromium.org>
