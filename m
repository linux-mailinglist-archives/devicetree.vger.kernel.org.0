Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C02F412A63
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:39:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233087AbhIUBkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:40:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232245AbhIUBjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:39:23 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE1A6C03D755
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:45:38 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id w64-20020a9d3646000000b0054716b40005so4103011otb.4
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=0lMjcJgjA5p0L+B4D8/C49hBGj5m1tcUAQw/zX+WFkQ=;
        b=ksyd34+2zy67ZFy+o9RsD8ZuJRMj3wPjZFUQ6wD+1poORRNPXvC5/IJtaDVf3siH5X
         9NKyFWrUDOB21pvuk/f9kkoRQPI6c6C2dsP+nEEGCL9rfGOljX2aWJjhv80Dyel5Iit+
         RR8ZuyTwyd6sfYEPuvyIi8mjc8o7Z7DNeTwPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=0lMjcJgjA5p0L+B4D8/C49hBGj5m1tcUAQw/zX+WFkQ=;
        b=5iJAWoy6sIxLoEjhPMtYAfnFZXdQDKZnnKNPPwTCRS7SelWjcypsW7FsCCHPebeKVe
         8fdnF+QRHj658Ixcxo//npdUeCdwvmJg80NZFr28RaDcO/lOt0Zd4qplbtYxfiiPSKoA
         R1RVYJN7L0FZCbbmE1zbIkFG97GMBHuYZymz9lc0qGS48i0ENfueCDfKypuYk61+DoHX
         ist/OzGHOVS9fZoosnxn7m4Vx69NvtnPmVGVYQ3WKxrMbCnvo0LDhgDsGpaMoGxcErUG
         eRpABCar9R1bKAnVVzXCNNEOGQhsdCZI9+dRZCX6ny1FR7na43L8wCGu71l2SC72Qksl
         tgpA==
X-Gm-Message-State: AOAM533g64BjjlMopOmURVAoL13qfOWuw0uhC88xjSEJ8heidAI/Lg+X
        XwyFCUEoDCx0SiFgQ+P33wmg6AM7Z6WqKtlypetSEw==
X-Google-Smtp-Source: ABdhPJz3P613FgQ878WOniCM5odr0R25PCsqU/V2RNIJbHTCJFwHFka52ezTdPmQNIkSOMpsdSkh6167RS1bPhrp3T0=
X-Received: by 2002:a05:6830:708:: with SMTP id y8mr2313750ots.77.1632167137966;
 Mon, 20 Sep 2021 12:45:37 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 12:45:37 -0700
MIME-Version: 1.0
In-Reply-To: <1631872087-24416-8-git-send-email-rajpat@codeaurora.org>
References: <1631872087-24416-1-git-send-email-rajpat@codeaurora.org> <1631872087-24416-8-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 12:45:37 -0700
Message-ID: <CAE-0n53TxT9zkMuGHRsg6HUk-hdDAz3B14JODFP9kbb+qFa+QQ@mail.gmail.com>
Subject: Re: [PATCH V8 7/8] arm64: dts: sc7280: Add QUPv3 wrapper_1 nodes
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-09-17 02:48:06)
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
>
> Add QUPv3 wrapper_1 DT nodes for SC7280 SoC.
>
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

With the same cs_gpio node names fixed

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
