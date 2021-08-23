Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 159963F51D3
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 22:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232236AbhHWUPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 16:15:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbhHWUO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 16:14:59 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D30C061760
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:14:16 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id i3-20020a056830210300b0051af5666070so29891453otc.4
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=TngxpKOqHyiFNvNt+d4zJ7KjMao3ugf0Hy1vQTAHJQA=;
        b=ForlFMkfhRw3yADgfJ9NwDwZ7hfaZlMvpYJHU1pOkK0fdhqBOjKqSpzR6lzRNGaqvR
         E7dSfG3jlD0wy2M8pazICgH/qVcQcs1utgcS8ZgooKoyX+v2Y2Rjj3mn0PCzkDKt9T4j
         v1Kl0BMjLPcMTJhxKqS4yt1m+fJGIFVyK5GXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=TngxpKOqHyiFNvNt+d4zJ7KjMao3ugf0Hy1vQTAHJQA=;
        b=N+o44QVLQhLCUaeP7Y2LBXPnBw9fW+rqgkFHZGJfXKHXAkyuW5eoHZhx0KhG8bMCnY
         dqDAvRQfcmNsBAuFTKTE/vMEkHFoyswuaSCzW+w6NED9fuP3cT8hjC+sP3ZmkeRr2aiH
         dYNMFPUsDKJ3XhpvvXatSt71Jw5wVuyKrTy8ujY1UpbOFDjFTHJmd4x55zydBu/3fYCy
         jIJOhh/1jEokeoENgwzQM6HVRKC0ybggxmUTYEUDB9HNJSN6PYeI2CjGMN3xdlRZ/Cth
         OOlMFTFfFJdsNIODeq3hY3XHDYCvwJX273p8MG1gmwXm5rN+2MxgrWZZL59aGXWvKBVj
         ouRw==
X-Gm-Message-State: AOAM532e2TkGyU3bLSRbuVkNgpRw0twasKWSWKZ5JNKCR15QufLo61UZ
        4iRGCoKWR/Yb/B+FpL0PSdJ4aLB9U+TSLV4DlpJMXA==
X-Google-Smtp-Source: ABdhPJzisd6wkOv8VP3EiiFnuLYPOzWwdTHcMUuPi0eL8twDhZeeq5HPrLV4aGCPBkz0C8n7x0246zhO1PfURaXig+c=
X-Received: by 2002:a54:468d:: with SMTP id k13mr236255oic.125.1629749655968;
 Mon, 23 Aug 2021 13:14:15 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 23 Aug 2021 15:14:15 -0500
MIME-Version: 1.0
In-Reply-To: <1629344185-27368-4-git-send-email-sibis@codeaurora.org>
References: <1629344185-27368-1-git-send-email-sibis@codeaurora.org> <1629344185-27368-4-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 23 Aug 2021 15:14:15 -0500
Message-ID: <CAE-0n51ZtuPeK+77YUygOBOj4YAQjq=0CX7bH5udu+8HQw55gA@mail.gmail.com>
Subject: Re: [PATCH v3 03/10] dt-bindings: remoteproc: qcom: Update Q6V5 Modem
 PIL binding
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org,
        saiprakash.ranjan@codeaurora.org, will@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-08-18 20:36:18)
> Add a new modem compatible string for QTI SC7280 SoCs and introduce the
> "qcom,ext-regs" and "qcom,qaccept-regs" properties needed by the modem
> sub-system running on SC7280 SoCs.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
