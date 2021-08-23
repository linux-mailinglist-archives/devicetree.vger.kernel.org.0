Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6453C3F51EC
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 22:17:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232353AbhHWUR6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 16:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232307AbhHWURx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 16:17:53 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC9CC061760
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:17:09 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id y14-20020a0568302a0e00b0051acbdb2869so32862529otu.2
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=hVoTBJgxiKrAAxs2kw7pKYP96oVapuaGPjHNMkt5DsM=;
        b=nPAUVz1zgsicbUYoh1+uu07rJW/yYYJnyQm6mv/Lf1y+TZRUYzlBntQIOSf/m9UCgS
         pgMMqimYDwdwCK8xIw+ec77wUdXIbZzcCmp/lonOm3Gfs88Y26DCoL8WJCNcifr/yHwn
         ST5zJ9+uslgeY4qfI9P11vfKySi53c5VQ8o3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=hVoTBJgxiKrAAxs2kw7pKYP96oVapuaGPjHNMkt5DsM=;
        b=JdDKV8mAGFRE6NeP/VlUgKzD8x41Y3r5ZDCWSLjduD9vavMPwjXe6yv2XrVEdL6vGm
         bLRjgtZDC1mPTKfFF2TeaixQ+siXArv5HYrUeZp0KfsgSh8WwSJn1JuX9bw2I7yzyuuA
         zfqWlVfeyViGdaGPIvRwwZJMP5jye9P6QD2+BBBpagAZfBvMA/A43Ig+tcaW2BGEOsOl
         NfOgXpPq22mwX34e5L3MIhxXwd4xJuZdwFRhmXHeDT8RD5qyB+I2Hx9IHjXMl646k8td
         5MPkZE0ZEsiF+Dsj70BJ6dWSk/pnnKbpudkfvsksZymLHf8S898ry5RTPiHGhfDLbNK1
         LZ0g==
X-Gm-Message-State: AOAM533dZdMIdiEfGiEdZNsFHth6qssUAIKHhc/fbBBgY3dBtQVVO+Bq
        xSYs+QtzZTXVlljarysco8+2H2JGWpulEVEURgQH/A==
X-Google-Smtp-Source: ABdhPJynbPwA9l4zM0sKHZxjgU5UhlLpncIQzB/q85jP+MW1t7Vxo8yeQ+Un7WiJHwAqDBlBF3iPLQgltj28BRCVUhw=
X-Received: by 2002:a05:6808:180e:: with SMTP id bh14mr251263oib.19.1629749829301;
 Mon, 23 Aug 2021 13:17:09 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 23 Aug 2021 15:17:08 -0500
MIME-Version: 1.0
In-Reply-To: <1629342136-3667-5-git-send-email-sibis@codeaurora.org>
References: <1629342136-3667-1-git-send-email-sibis@codeaurora.org> <1629342136-3667-5-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 23 Aug 2021 15:17:08 -0500
Message-ID: <CAE-0n52ujxNX-qT1oQJup+iHA6dSwmKoMK0eqdSg-=ZTRXD1ZQ@mail.gmail.com>
Subject: Re: [PATCH v5 04/13] remoteproc: qcom: q6v5: Use qmp_send to update
 co-processor load state
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org
Cc:     ulf.hansson@linaro.org, rjw@rjwysocki.net, agross@kernel.org,
        ohad@wizery.com, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-08-18 20:02:07)
> The power domains exposed by the AOSS QMP driver control the load state
> resources linked to modem, adsp, cdsp remoteprocs. These are used to
> notify the Always on Subsystem (AOSS) that a particular co-processor is
> up/down. AOSS uses this information to wait for the co-processors to
> suspend before starting its sleep sequence.
>
> These co-processors enter low-power modes independent to that of the
> application processor and the load state resources linked to them are
> expected to remain unaltered across system suspend/resume cycles. To
> achieve this behavior lets stop using the power-domains exposed by the
> AOSS QMP node and replace them with generic qmp_send interface instead.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
