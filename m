Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4308B4A4E17
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 19:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343583AbiAaSYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 13:24:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355138AbiAaSYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 13:24:42 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6078FC06173D
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 10:24:42 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id x193so28458401oix.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 10:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=htffx+10Rm/s5iM/WFm2qfwFtbfvW8OjkLAv9C5/6EY=;
        b=j2psX3OT4YaDv8W0bAQwHgWsmwnEnGhzT0ktqf/MosWHLpswSPDZ9+RAmKTMD94ERe
         FJ4iDI/Q2f7xa9KBPsh0Lx1Yc6JWISCPJj95xs6q34j5Yl+8s6QV/KBwD3x3WAVEV35i
         oesOj/U8GrYQfIaJdu9B7IaHjsCaWF533+wW958gvVbcgvttBAvuuJBxIS0bZp8VYI+F
         XhfD7Ah9bV6C+MS0cpSQKl9fWvPVcHqt1LcU+K4kSSQQnZSJAp1GCEhmMfpb3CA+vReA
         Wo0ueIB8ht1T40P80XgGHpDw4I8IOUoy0H+Jz6kzsuA8bWscEajSWgkB+QxBcNVzg63R
         lO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=htffx+10Rm/s5iM/WFm2qfwFtbfvW8OjkLAv9C5/6EY=;
        b=lpbkCeH/U0VgqykEjzms8hVjjukIhgykbCfZkZe+tJZ0tJCSzqXA+bYu+38wv1ZOOB
         nGyHaibjLD7iLMMl9CGacvWeUOIYLHAq0cfgAtsDxvk0v7Nf4K7RHBnS+xt6/blPBC0d
         YQzOH0r/uHyjje6Pos7bm+o8Gp+5+YjP1UTZZh0yWI7ZLiB4VdJoFP/KUQtnKyi7GeNI
         rFkfL7u/xyzEmwxMBM7AbUSjJk2AEZZSPVWXHH4S9Ykj3/0iLEwmxiVWCnbWzwLDKGPA
         HPhWtYTYx06zC0MK3cswQX4gsRgcb1pBrlmOMAhzUJmlybgCe4wq/HIuUenh4BFtDLJj
         1twA==
X-Gm-Message-State: AOAM5323kKKjU4uu+q4RBPA3j6dkPAKZeHDfm3oG1S9hWhRmHwaa1vf8
        Z2ieGNm9Unuu5kAMenrQHuKkog==
X-Google-Smtp-Source: ABdhPJx0dUbfgMjXZCr7+k+SOkZ30iWgCphpFy4q1xdv2DB8Uot4LbJR0ii31s9fmvRpC5kD1xTWsg==
X-Received: by 2002:a54:4803:: with SMTP id j3mr19147480oij.279.1643653481769;
        Mon, 31 Jan 2022 10:24:41 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id y19sm3273722oti.49.2022.01.31.10.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 10:24:41 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Taniya Das <tdas@codeaurora.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sc7280: Add camcc clock node
Date:   Mon, 31 Jan 2022 12:24:29 -0600
Message-Id: <164365345128.3009281.9709804910453196821.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
References: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Oct 2021 15:39:22 +0530, Taniya Das wrote:
> Add the camera clock controller node for SC7280 SoC. Also add the header
> file for lpass clock controller.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Add camcc clock node
      commit: 7b1e0a87730e32aac0089182c8cfe3b5fa6434fb

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
