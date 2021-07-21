Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 630573D084D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 07:32:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbhGUEvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 00:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhGUEvg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 00:51:36 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA8D1C061768
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 22:31:49 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id t46-20020a4a96f10000b02902618ad2ea55so315783ooi.4
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 22:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=iRPUyrruWY5GwoLCx2fyzi5QyJrWlyLr3Fr1E55Ngd8=;
        b=EpcA5f3AHsurgT6qqruahYyDxEmLckPfsqTtDMJ1DaZ/LLtjF0nHZXQx4E7JyPuOpG
         q6DX0VFKM7uI5ak8eqMnjYLd8bJMW8O3hHh4wCy2DDZcovcVqUYBPozeMaahUyk0L8jk
         H7QN+up8rw+cRxD5LV1c0A5sNEdBRJIsm6c2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=iRPUyrruWY5GwoLCx2fyzi5QyJrWlyLr3Fr1E55Ngd8=;
        b=FjQdkTJKlZwbwGHnM8oj7WxHKD9R5WsxyEqGXa/n38HAeQIsIlaR2gJ10k4cSGB7Qe
         dPVHBb6WhxHTfsciJAzwSwSO79SigZNCvTdTLN0HJmazIWFNaDfnERscIP1FtM27oF3f
         3/ymHeFbUF2IwBird0tC5PpbgLSm4jtciiN5QFT4zKhnrngm165itEuT6BGcaN0/7VcB
         JnRRbAEVXIizBSYLHZyVqQLBp2m2slghFkY0LmppYCTtlpn1a6NxeuXI3lJ8CCj1YzYZ
         yRwbB6rNdSHuZVOqsCyGFDrVjpr3KqlWDLYM9Vh5c/9G1vVHQN3P68q+BLjuDRWj7Xbt
         rrmw==
X-Gm-Message-State: AOAM532S/6ccAj2s5fEiElatdioDFF8dkjzaZBJkwVf9vmDc2EHfL8gP
        q2umElSqomz+D9jdriiBvzCUgbhEIw+t5IxjH9NAPg==
X-Google-Smtp-Source: ABdhPJxEN4rB7s7W8R+0MjeKeH9tRLHXIQkKLHUFOBtwz9Bh4/yLDdVVegY5XDhlBibHzB6n0GbWiPdws64KBoYnmQU=
X-Received: by 2002:a4a:e206:: with SMTP id b6mr23349411oot.16.1626845509094;
 Tue, 20 Jul 2021 22:31:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 05:31:48 +0000
MIME-Version: 1.0
In-Reply-To: <1626755807-11865-2-git-send-email-sibis@codeaurora.org>
References: <1626755807-11865-1-git-send-email-sibis@codeaurora.org> <1626755807-11865-2-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 05:31:48 +0000
Message-ID: <CAE-0n51G-gYm=yjkF_rzCRFmhCVhxws-FtgGNbtetrJZHJwU-A@mail.gmail.com>
Subject: Re: [PATCH v4 01/13] dt-bindings: soc: qcom: aoss: Drop the load
 state power-domain
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

Quoting Sibi Sankar (2021-07-19 21:36:35)
> The power-domains exposed by AOSS QMP node are used to notify the Always
> on Subsystem (AOSS) that a particular co-processor is up/down. These
> co-processors enter low-power modes independent to that of the application
> processor and their states are expected to remain unaltered across system
> suspend/resume cycles. To achieve this behavior let's drop the load
> power-domain and replace them with generic qmp_send interface instead.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
