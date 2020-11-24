Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E9572C2029
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 09:38:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730647AbgKXIiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 03:38:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730546AbgKXIiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 03:38:00 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26323C0613CF
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 00:37:59 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id i17so21090661ljd.3
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 00:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2H8XWRLs/cbmJeRBTAh4/48CwYXMne1DsJ3h7TEz2GM=;
        b=j82cKN347mqaeqLKt04crgSBJJhiSMO8zoQY1YHiSWBV5gT/+AAOjpGTyfh+o9Q3mc
         KHFXiUvWy4L8mloe3qazA7AGbiCOUmr9MI79Q8Qorm6PeTTm7W3gZgRNltxjOQjEyIaV
         4yfbQpXwQYNq0j0PqKL1VReBP4VB7paculjpmhWTKHB/ToDqwDyfAMXNgYE7uGXZilfe
         kMDoIaflhclMeVnN++SvYryLZ1aI9eBBg2U4nzuo2aMqgT4KwU/L0BiEvKj/Gh4JQwfY
         hrsNjQFpooCvU9CbZVDQUeFqZLbna0MQ08epM/Lx2YIiHqjlHEYsRgzvYxyfT11OnGue
         MOcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2H8XWRLs/cbmJeRBTAh4/48CwYXMne1DsJ3h7TEz2GM=;
        b=PnHvALTXcuapzrF0sO6U3sHs6MQ/cspZ5w/gIQ6iF4l3detAlZ13fvjRk3fhQnl3gt
         zhiGGho2lBphNRT4NuH3fhmQN59pT+Q3dwrO/sddp8VN6lxQDTuOVwqbgUwCocj+t+vH
         LJgsCEZv5DHXBy4AcJejMb5lvhf6zRMHQ0Ke5YM1vKRN2XzTqNh8rOnNZmy4h+5MLJyR
         eCvN+nnNJVDySECBfyZL/C6nuyHOhzajogXe+Yac1PmVdWmtPV7hJB5kk6qc1K91DpjX
         Bdzu1ilIyohw/2WyAmn1DJGKhyWl1j3ZjR0MTn3blzU9Sk6jsqI6jTyMerMZkaCBNkar
         Fphw==
X-Gm-Message-State: AOAM531xdCumDvAl2L5hFFgHi9IkewB8REAmcxQ1DS6xTLUk1ONNWek4
        Pe0tOnGtsH1BbFRG1itAq7xFGqwT1WcZhcBLZZKcrQ==
X-Google-Smtp-Source: ABdhPJxGrELU+sr+1kgkl/qdZ/XZwXL4XRm5dMDFIKZ0RZe+Cq1K9uCu5AlgW+v6i3cT7KOpEXWCGVfu8zUwNKOSIdo=
X-Received: by 2002:a2e:93cd:: with SMTP id p13mr1323677ljh.144.1606207077648;
 Tue, 24 Nov 2020 00:37:57 -0800 (PST)
MIME-Version: 1.0
References: <1604570192-15057-1-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1604570192-15057-1-git-send-email-rnayak@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 24 Nov 2020 09:37:46 +0100
Message-ID: <CACRpkdYcdrC+xbaoZ6dEePtRcD3hqAdotQq=jddOC8=OMa6EFw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: Add sc7280 pinctrl bindings
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 5, 2020 at 10:56 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:

> Add device tree binding Documentation details for Qualcomm SC7280
> TLMM block.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v2: Consolidated functions under phase_flag and qdss

Patch applied.

Yours,
Linus Walleij
