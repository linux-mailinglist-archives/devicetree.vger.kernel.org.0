Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1036430C51
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 23:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344658AbhJQVbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 17:31:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344648AbhJQVbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 17:31:01 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82541C061768
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 14:28:49 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id j21so63463183lfe.0
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 14:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zsn8elQmbP8+6ym/PKq69oNfHdL0TG2v2qvjNwrDBuc=;
        b=yblJz/fK1RLPblHA1D9kNN0zjYE1gdrBtsTPrVzppwlUPZo9SY/JHaxGzAljQfyJSv
         /RDV723xJI00NZ7/8ldu521UIX1fDxfP8T4/AmZl3U6oCnsPHjZ5diPdaIzQHXDOcTq1
         5PLXBC/zQc5AxXndv+dKb24zbNUfBMt8z9lC2EulIYbkjwH/LIpffNwKHavGJ3TxJ6tz
         2JmSqgWrI3ItNehPnPgiO3HV+BRk27bWvCuxmjv4moLJ9Grh2ll7LBpkN69epI5la6ex
         Zl+8fFXHalYVC378Fxk/fIR1MRC7TB33xFoVcOJjzegK/dXTIByvxES0XF0Xw2OC4Rs7
         /Mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zsn8elQmbP8+6ym/PKq69oNfHdL0TG2v2qvjNwrDBuc=;
        b=4t0iVWx8AV2UlOyYwRh5gP0YgXY1TquAAMZfRnLu25nVyw6KsH+jY4MaYXntFpijN8
         6CtnC77nWBfITavbunqOqd1BSjJ4O9EUn+5hmkhMQ5+hEXoaDZTriJ14yBxuYk5wgGor
         iG304e2WaVqKWBIiSwQBPoevuIfpGFakNhXxI5sK0B7EHk45jCjxpWhPzyssdsmy+Lqs
         ESMG4t4bQF9Ykk6tY0RfcCBZZ0PFvqclGQ9k7hfkMW1RaAEGa6KQ5kX3F0Zj4g0oAGTN
         xN/pFYhT5rmMCrGXQM//uc+BLp6B7nApccIbsluDtB8uk3u2OO9SF33RA1dvKkAZ52FB
         sGqw==
X-Gm-Message-State: AOAM533IM+n1n/YOnw0sptc4a0to6PiGrF8DRps4AzL1EwN6JNRq7TD0
        1ETkQ6H8cuSiv4mVRY56NAqVhLHwF3IOrqvHjV92/A==
X-Google-Smtp-Source: ABdhPJyoXcFF1M1DCOj78D7bnibnBm7cX88CCtFOS+e5aCqqB++ybZwuwO7B7J2XZ9MqFTlv1MsOOwLM6UtgSyEWRMc=
X-Received: by 2002:a05:6512:3d27:: with SMTP id d39mr11858873lfv.229.1634506127737;
 Sun, 17 Oct 2021 14:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org> <20211008012524.481877-3-dmitry.baryshkov@linaro.org>
In-Reply-To: <20211008012524.481877-3-dmitry.baryshkov@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 23:28:36 +0200
Message-ID: <CACRpkdbPV6Ua8cVZksqux2A_ntKRP=OeDjU-u+3JxM++qFdWig@mail.gmail.com>
Subject: Re: [PATCH v3 02/25] dt-bindings: mfd: qcom-pm8xxx: add missing child nodes
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 8, 2021 at 3:25 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> Add gpio@[0-9a-f]+, mpps@[0-9a-f]+ and xoadc@[0-9a-f]+ as possible child
> nodes of qcom,pm8xxx, referencing existint schema files. Schema for
> other possible nodes does not exist yet.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
