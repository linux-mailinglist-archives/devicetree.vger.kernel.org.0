Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 95B129A983
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 10:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730532AbfHWIAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 04:00:35 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:37982 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731700AbfHWIAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 04:00:32 -0400
Received: by mail-lj1-f194.google.com with SMTP id x3so8016582lji.5
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 01:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2MWurloFC424CUmSqLbHj0wb/3z06n1cb9tNRKzCOz0=;
        b=sA3b4HdX77h7s/fsgrnjxNpZZL2Q2H0A0yDHqxZ97wKFl/4wY6a1hIV5EQoqmrzZ7r
         f4Z8cqeST9COrJKBqhuaiYdi+KUCmgfbGSP1wKpdmxquge83gpeW3HfaT5SCIGS5uwVG
         3veKuafvjamg3UGf5XlzSwsesSMNOTzddh4Ge5Tqp+I26zHMONWLgzNiAq0o81va1Jc1
         emEV0eUjqLBewyOer5y+Dho936IyFhHQSxCZlZqIw1KZGcbRpXPMFujKyY+ryczpp+Yx
         sISvmhOjokZhZ62yOeO8PFUTc2yZ4Hf2TWU69qgzlCyG7Oq+xQhaGlB5ijax6S+LsHQL
         jClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2MWurloFC424CUmSqLbHj0wb/3z06n1cb9tNRKzCOz0=;
        b=dDxBUS9V3dGC0ybmbjd6CbVdW8W7Dy0HyPmD3wDRMRDcFpbF0KWFQrg/3kFBAUyNyp
         oWihAwjHFdNyp62+SJbAIy9xr1ZjuxqVlRmA62qhhZhZNsNweHKqPReHIiKj/2N8D1kh
         zoR9UnJc8+uCp03hk/w6k33FIYuQyAZJMsrSmUKJTkZbkgQMN3yDzkCZNUg/StSG6E2z
         gp1wyE3v3ssHITqnViTpHewuw76dFkNhhpfuFf2PsNgcCPglvtSJBEZcvFdt8lYwUxEv
         qbBupfzVzlViGmv+J4BKyhhm97ilcQgI3c7//z2bsW44DkJfMxNvFwm2VVM2G3k8FoEe
         PxTg==
X-Gm-Message-State: APjAAAU7gz6umiXzHP6wIXdfImcikc4HrQCcCXR7txVf92AgBLvEY0c3
        8cifKc8h8PoFYQsuksU1jXIkvt3fbm4u9lN9JcBjbg==
X-Google-Smtp-Source: APXvYqzLQ5ClEUlmAOPmQjblokk+7eUHmNQEQGStJEPG0CbEku6phix8tVMaf7PE4m+a0XscjlciF/e0C/PJmTAj7dk=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr2091021ljc.28.1566547230567;
 Fri, 23 Aug 2019 01:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190814123512.6017-1-vkoul@kernel.org> <20190814123512.6017-3-vkoul@kernel.org>
In-Reply-To: <20190814123512.6017-3-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 10:00:19 +0200
Message-ID: <CACRpkdbANSzMbO2dDGrfFK=KP_ZCkoaOA7xG4zirhzo7hHG_ag@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: pinctrl: qcom-pmic-gpio: Add pm8150l support
To:     Vinod Koul <vkoul@kernel.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 14, 2019 at 2:36 PM Vinod Koul <vkoul@kernel.org> wrote:

> Add support for the PM8150l GPIO support to the Qualcomm PMIC GPIO
> binding.
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Patch applied.

Yours,
Linus Walleij
