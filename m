Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8494940B7E5
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 21:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233172AbhINTVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 15:21:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233310AbhINTU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 15:20:58 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37067C061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 12:19:38 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id n27so773182oij.0
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 12:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=p4aiHjSt5PydyNP4yCr/hWcE1rXRRolEI3z5GimQKiQ=;
        b=Zemn43lr2poy4K8eggMpxhiOpG05mXAnw6FKV5/fQpfVV3R0AX5iHJXV2trQPx/v+h
         GrHzzWRSC+FrWUts3+o6/A1W8eml1SPP7QjzKKfuVEEHI2zM7uuY3Fx09b5usr/lkkjb
         me6dmDPyffxPNH2XUIY2b81uaer96asbwB1cQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=p4aiHjSt5PydyNP4yCr/hWcE1rXRRolEI3z5GimQKiQ=;
        b=qqenuBR7Hw07o8xsW/zuRKVn+xVubrgPbmpXNJOOcCw3fJzzD2/Q/+KFKTf/M71bG2
         gqqeE5/ZHqI/0eh2gA8C8cIBysVVow2WGidjd1SiadbQXbM3EKDz8gwoNtAqxf+SUVkV
         X29/GtohXj03oxuvqvlW0YnKtxlnf0gxoTroK35pq4Z1n2Z0B528HcFjFa/+eRG6UADX
         VGhXT7Wc9JbW2z3QuiSEFfxv0OcE/PAwzSRL9boYKHod0H+QTeNXFsCHf4dto67PtGqz
         mdngNCRf2eNbvNc6392sZc0/X0RQpXin7AVQoOd4JFdHVHUM/ShlIWtFb/u/ni8MHQZj
         fO/A==
X-Gm-Message-State: AOAM532aC2sv8iQov94/QQbKLou7WNmK62J+hUTKQk9z5BjTJGeXo5lu
        7kKyGbD11KXnTzg6DA7nX8JpnNkjgI4aH8kO5UcBZw==
X-Google-Smtp-Source: ABdhPJwW/rk+97bzsU+oU4ww0tVefOIdv/mV2ZiRt6IYFcucdG8dUrd+urFcvffUJbLKgBn39LtA+b31lg1iRxykZQE=
X-Received: by 2002:aca:2310:: with SMTP id e16mr2706663oie.64.1631647177562;
 Tue, 14 Sep 2021 12:19:37 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 14 Sep 2021 12:19:37 -0700
MIME-Version: 1.0
In-Reply-To: <1631643550-29960-3-git-send-email-pmaliset@codeaurora.org>
References: <1631643550-29960-1-git-send-email-pmaliset@codeaurora.org> <1631643550-29960-3-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 14 Sep 2021 12:19:37 -0700
Message-ID: <CAE-0n51vOW4avQ1beq0_RSNHGpxF_2CP1SbqstWqQTdvwYmxdQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] arm64: dts: qcom: sc7280: Add PCIe and PHY related nodes
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-09-14 11:19:08)
> Add PCIe controller and PHY nodes for sc7280 SOC.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
