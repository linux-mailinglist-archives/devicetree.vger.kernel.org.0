Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D88240B859
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 21:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232012AbhINTud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 15:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232995AbhINTuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 15:50:32 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89DE8C061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 12:49:14 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so127450otg.11
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 12:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=v3c6E6MMQg7r5oBUq1m5l+3onlEbo8USrY7KqxJROCA=;
        b=d82STJplqEDvwvwojrzgiDLySxHC1xT1ThA3Ss936NRBXycfFJuLyM8brNvGk8Q0BZ
         RfBmUa9WgZiV5/lphxebcR9MMFlYTDzmZFqlnn1xZL+BdktpnYJhU6VO5vbPEWNE8pmP
         0O+noFpedvkPblcENKaTnLBR08KFvN7bCh7tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=v3c6E6MMQg7r5oBUq1m5l+3onlEbo8USrY7KqxJROCA=;
        b=cnkWYTXTVqXEbRyf8eVx2qp5NTH6NmZCLOyOCP4tv5cyaKWoluJGMRuCeVhPKY4Qat
         h8LQfBdOveBo7SAADDpII6XMNdpSsF4k3Mx2554/n44ZKvqCtpQtYtRZIIGe09Sp//dr
         YbJroqmS+EMdgwMk3I86Gfa8ClamH/VJ+ccE0JNA2SF9XNmNDPRMgQ5Sizp5Bics24CI
         LKuTexsUVFk2mCHbyCdvKNjojVmCqfn9MsqvTNF2QNswMSVQVeV0knkurYGJ9RlY14Rw
         fe99ewb5Kmbh24hLJWM1j4QtxO7FFGZgKiWWxgKNnhGHvMuWVoiSOTVhbZsgD/yY6Z61
         9s2Q==
X-Gm-Message-State: AOAM531CBrZJzkB9ara4ji0M/73bgc8YLFfTxick1xDjBC4dsqDbdMrj
        8h6c8FmrBo6uKZ66y5Q3iegnoun3UEH11S5vkSo74Q==
X-Google-Smtp-Source: ABdhPJxmespo1Jy0mHteRtDveO8RQ+I+51B8KS7gLjSxy7Zo9ipn42budJZnsYHGhJ2GXe/Dp851pqDqSjKJs8/Nhqk=
X-Received: by 2002:a05:6830:1212:: with SMTP id r18mr15731034otp.159.1631648953925;
 Tue, 14 Sep 2021 12:49:13 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 14 Sep 2021 12:49:13 -0700
MIME-Version: 1.0
In-Reply-To: <1631637901-11603-1-git-send-email-khsieh@codeaurora.org>
References: <1631637901-11603-1-git-send-email-khsieh@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 14 Sep 2021 12:49:13 -0700
Message-ID: <CAE-0n50R1wfw=V7o19N20YOqSrRZKR7Zd4QLcRcjYQNsdf3QHg@mail.gmail.com>
Subject: Re: [PATCH v4] phy: qcom-qmp: add support for display port voltage
 and pre-emphasis swing
To:     Kuogee Hsieh <khsieh@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     abhinavk@codeaurora.org, aravindh@codeaurora.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, kishon@ti.com, p.zabel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kuogee Hsieh (2021-09-14 09:45:01)
> Both voltage and pre-emphasis swing level are set during link training
> negotiation between host and sink. There are totally four tables added.
> A voltage swing table for both hbr and hbr1, a voltage table for both
> hbr2 and hbr3, a pre-emphasis table for both hbr and hbr1 and a pre-emphasis
> table for both hbr2 and hbr3. In addition, write 0x0a to TX_TX_POL_INV is
> added to complete the sequence of configure dp phy base on HPG.
>
> Chnages in v2:
> -- revise commit test
> -- add Fixes tag
> -- replaced voltage_swing_cfg with voltage
> -- replaced pre_emphasis_cfg with emphasis
> -- delete drv_lvl_reg and emp_post_reg parameters from qcom_qmp_v4_phy_configure_dp_swing()
> -- delete drv_lvl_reg and emp_post_reg parameters from qcom_qmp_phy_configure_dp_swing()
>
> Changes in V3:
> -- add __qcom_qmp_phy_configure_dp_swing() to commit swing/pre-emphasis level
>
> Changes in V4:
> -- pass 2D array to __qcom_qmp_phy_configure_dp_swing()
>
> Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")
> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
