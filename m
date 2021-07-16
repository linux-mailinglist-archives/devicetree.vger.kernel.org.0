Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0F43CBC85
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 21:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232896AbhGPTav (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 15:30:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232803AbhGPTau (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 15:30:50 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC125C061764
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:27:54 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 59-20020a9d0ac10000b0290462f0ab0800so10967381otq.11
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 12:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=WvfR1EWSjDcJ24IvuaATgTh4IU7RndSDBvf6tZ6dESk=;
        b=ZGYrMn2K0Zen2/chitsaSiJybVqzxLtV7eGnqeJEXBnSeiFR4Eoowli7W6TIDTjT66
         px1T2IThviECAxK3vJhbUqdEwZPgaFL4sVn43I6UeG9M4ILbA3leE+/BFILEKqjaXdH9
         Gb+9juv4u4OUVaWRtRpyeCOYSh7WA9v88d8C8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=WvfR1EWSjDcJ24IvuaATgTh4IU7RndSDBvf6tZ6dESk=;
        b=l8PXn0yNUDrz4ber/w1PdLiRoavq3l4K6jB9swASuPXfFM8FgqbGcI9KSDrYD3CGb7
         MupF76lR9Dcq5tX2nh8ys6aIpsXPZ90uhHStUoN2voYmuu+fLEuk4Qz0iPe5MZe8+XmH
         qutgXUd8fa8ab+A7rqpXfwCnvezCplAoJHSgy+YxybH7BZ03aEAj18oz/2/RYPZudxsI
         0JK4KxYipMRleQS9B5bNzWJxElOyIdZA8fg4c0RsyaLrT/iWoE8uMM/GOoRjH8KKrERN
         7PQ9L7p8RFVDtpNd01q4WLxoY1sSJ7EuofL7sOFrRviTP7iqZRZTjhBcFtochhFSqvTN
         kmYQ==
X-Gm-Message-State: AOAM533FgV3yYvH9KmrlJWkziiDYaTCC4EGi19eaJ0Ru2kyCR31YR5bv
        k92haC68eFp6KF1SU88WKZKNWW1PJDwwXBBqu3fej6SiBbc=
X-Google-Smtp-Source: ABdhPJybePdTQVheSU7I4BGrZN5KWLlkqMofOQCp3PADsNt5bK8OYflJN4jUdORZRMfwv2tvQMtdZYqRafi3L6wNdqA=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr9472592otf.25.1626463674176;
 Fri, 16 Jul 2021 12:27:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 16 Jul 2021 21:27:53 +0200
MIME-Version: 1.0
In-Reply-To: <1626443927-32028-2-git-send-email-pmaliset@codeaurora.org>
References: <1626443927-32028-1-git-send-email-pmaliset@codeaurora.org> <1626443927-32028-2-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 16 Jul 2021 21:27:53 +0200
Message-ID: <CAE-0n51g66F7A7Kuz+GQwnYfEX_BXKQR7YD=4PhJAEGkBu6AsQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: pci: qcom: Document PCIe bindings for SC720
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-07-16 06:58:44)
> Document the PCIe DT bindings for SC7280 SoC.The PCIe IP is similar
> to the one used on SM8250. Add the compatible for SC7280.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Any chance this file can be converted to YAML?
