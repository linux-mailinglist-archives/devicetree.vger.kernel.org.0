Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B1D9499252
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 21:20:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381127AbiAXUS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 15:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355408AbiAXUNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 15:13:45 -0500
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C5BC0604D4
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 11:37:11 -0800 (PST)
Received: by mail-oo1-xc33.google.com with SMTP id p4-20020a4a8e84000000b002e598a51d60so2847757ook.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 11:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=OE7zpDJ/ImAr/I0egnBqJG8bk650Ar7DpEUyTPdTJtw=;
        b=S8celvhQE9q1bVrsDARpFL2ugWnZwTBbS5TBo3ge8O3ANqZlz/LKKjwmwAAyYfL+53
         BinD7Pbe4Z6hIVUdszsDpeVk4TVKG9cPqzfWIu70VfCiv/4vLUPApzaJZhZ4QPVK91Kd
         CpfFLphYeYEIT62X+JtCQK18CcbJ9Zdm4JMDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=OE7zpDJ/ImAr/I0egnBqJG8bk650Ar7DpEUyTPdTJtw=;
        b=viOwcJ5QCMV9iGpw2JqRMOunX7O2bGx/D8fKDLjfKOVhcbd69pkQ6ZznyEDsDj3i0y
         Hs9ZvRv7elx3y5RkgsYUYVQZ95vgxxTiw1qSork8c1fp1d74qotw08zDAzYPEiM71xb0
         rKI6xoUQxslJocGczVKWll0fyhV6n/Y4O99Vzs6qusAEFCbzMo6WyevaiuoLRK1l4wpJ
         dJX1T33bU/Arzoi4hQQZB5pHB4jtTtt/+NYIkSIQ8H4DC7k50VnEgqf3Q2ZgiMmxhIEF
         gInzwfjhX3Yzg0XDzpRKRNsfLzojd6Gda+sT7mmg5RI3lkJ/95KohrFAYfOz/MVZFQna
         yzZQ==
X-Gm-Message-State: AOAM533Js7/MtxB81lBtcSSNGse+bmNwA/JvtYvEUhCYSsvin+N5Mdn4
        dtAYAyv1xOSL+gHmDmOm7kuORUYi66+g410etTR4mA==
X-Google-Smtp-Source: ABdhPJytm+GOXzINucfGcA+WQ9XKPuPqK22JwGD5fA+K100i2lRiCUy7M7FJjrzhXKMKZjBf8J4ppeFUksmNinWY2Ds=
X-Received: by 2002:a4a:c118:: with SMTP id s24mr7146077oop.8.1643053030979;
 Mon, 24 Jan 2022 11:37:10 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 24 Jan 2022 11:37:10 -0800
MIME-Version: 1.0
In-Reply-To: <20220124184437.9278-1-tdas@codeaurora.org>
References: <20220124184437.9278-1-tdas@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 24 Jan 2022 11:37:10 -0800
Message-ID: <CAE-0n50bTcjL9qAdfprs43fdfn1Ft=cnCRVp9XjQ+iw_f57SLQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add camcc clock node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2022-01-24 10:44:37)
> Add the camera clock controller node for SC7280 SoC.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
