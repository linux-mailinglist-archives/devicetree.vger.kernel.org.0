Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C60FE3E085E
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:56:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240186AbhHDS4n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:56:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239643AbhHDS4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 14:56:42 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10A31C06179B
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 11:56:29 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id h63-20020a9d14450000b02904ce97efee36so2574498oth.7
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 11:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=VcqvjU1bhq3QLbhM94VyWBNxMowkTRxB2SS37S2YMHU=;
        b=eow6uihoHcyolO28gBNzCMo+OcLJeolWeLIfML7V5HBkrGBB2+RPREORTfmPViraQc
         Utis+pBR22PU8tP3USQ7Vn4auPnVqU04uhgMtRgeHLloRRdcMsaJTc0wdBSyOIf7hiW0
         jA6mZMzCH/w9Oczg1HXmHbHAvA4Dl7a6lj8Ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=VcqvjU1bhq3QLbhM94VyWBNxMowkTRxB2SS37S2YMHU=;
        b=IAqn35Jp/lJ8DeDIODKQh9mhI5s64HVDIePZ369WmUYf8+b8ZhdUkvt24JpvQqLP7y
         4pB+zsg/DevOx51pS+iGV9x3L9CkbfyEMwkr/gu69V1M8XIketBHFK1sgxwGoHL/xx9R
         mjm6Wn7MjiHv0RkYYk9K5IE2B7k/asJeKfiDm31EkNDvlZKJ1BPGcU01Y5rfenAR/FXr
         HBO+WNK1NgmRcreuCdCLmFNjbhfewQWQer3K5Ae7ZVVUv/XyIFVQd/oIMyKxYHnx8An3
         OXJ2VM9l244hj8pYQ674mOTP7nO9/xcJOPqQYcCF/AbNVQgsu2NwtVPZupghvZtn+avc
         C5bw==
X-Gm-Message-State: AOAM532ucQ42tRWU6NlqHO4S/LaTIydCDKGoKF/4abAV+UQsWic/ed+f
        OmL59h0dQCCa6bFXigSfjdiXScg56lgyi3X7R72Kdg==
X-Google-Smtp-Source: ABdhPJzr7nO7f94SsRcOCzg0xCQZV6WBYtk8lxSr4M4jRgk8usQPXYX9eUO1QierzYm6lnMFOVeugytO9vsj9NDOexc=
X-Received: by 2002:a05:6830:1490:: with SMTP id s16mr850033otq.233.1628103387954;
 Wed, 04 Aug 2021 11:56:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Aug 2021 11:56:27 -0700
MIME-Version: 1.0
In-Reply-To: <1627581885-32165-2-git-send-email-sibis@codeaurora.org>
References: <1627581885-32165-1-git-send-email-sibis@codeaurora.org> <1627581885-32165-2-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 4 Aug 2021 11:56:27 -0700
Message-ID: <CAE-0n53YRQamHMcb1T0oRkSO0_Shhskzpr4oX60UpiEB8ZY63A@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: cpufreq: cpufreq-qcom-hw: Add compatible
 for SM8250/8350
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org
Cc:     viresh.kumar@linaro.org, agross@kernel.org, rjw@rjwysocki.net,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        dianders@chromium.org, tdas@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-07-29 11:04:42)
> Re-arranging the register regions to support per core L3 DCVS would lead
> to bindings breakage when using an older dt with a newer kernel. So,
> document the EPSS compatible for SM8250/SM8350 SoCs and use them in the
> CPUFreq-hw driver to prevent such breakages.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
