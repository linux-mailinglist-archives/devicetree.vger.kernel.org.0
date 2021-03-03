Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD67832BF9E
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579156AbhCCSaa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:30:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1842792AbhCCINP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 03:13:15 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDD3EC0617A7
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 00:11:56 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id j12so15682414pfj.12
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 00:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=9n+Zinjl0qrRlhLQJ3kox3JVyOJ+LY+SQ8xy8eg7UZA=;
        b=lrKSoM/fcC9FGDibhl4xmu9mx5VwViqMBDN+HmGwdrs8mWhaZajDhdAIOLtdWS0EuR
         PAkmz3/djfhZbl4z2ZfpSrOoruedd3eXx33RisAfpW2FLyKWIWfmk6vQU8tAfvMsa13L
         iboWrjJeLAp9OKb+AuYK7HoNsNVztJnIai1xw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=9n+Zinjl0qrRlhLQJ3kox3JVyOJ+LY+SQ8xy8eg7UZA=;
        b=qytPWas8N4J0WsEVashVoz0oYyGWXS4Rw0EQt0s9OHmaH7ojqGmMGfYPRz48SeE4Y8
         x7lMuZA1Y8f/IgfidgFXeMHJVJikGwcDO0KLQcnKXrgtJzol+BierDESiLz1MhfNQ8pF
         oe7j5YANX44RYbfu/EBKcD3te8uvgBzLl6S7W916XkxrEreYMjV+NbSNOStXp0VDcEnW
         /ER4ywKiTJoVRvm9ZIquoPD85S5+pgJAH87KIfFCFxx9x8j9mxC9MpW3iOIgKXDKBwp2
         YJ7s2vecHVKcNhIB7dh4fqXeshESyrjp0xWsBdPwJB3jlswVBssVdhMJrJqtSnUZfbAf
         oYbQ==
X-Gm-Message-State: AOAM532d+nEzYrE+yVjIdcvDk+U5B8ChUHwfFPiOrkoN6E0OKzZ+Rybo
        YsbZvz2r9a951QEJFCwtqjcnb1USpYIXjQ==
X-Google-Smtp-Source: ABdhPJySgaqqAWmRHQaJcs0BJLHO5t09Z28N0vKpoEMrCLP47EYRMlmOCpX2BffXc3jemDYBicTTjg==
X-Received: by 2002:a63:140b:: with SMTP id u11mr3329553pgl.436.1614759116376;
        Wed, 03 Mar 2021 00:11:56 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id z137sm25279263pfc.172.2021.03.03.00.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 00:11:56 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <55416e116dda4aad977bb050451d328b1f6b00d3.1614669585.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1614669585.git.saiprakash.ranjan@codeaurora.org> <55416e116dda4aad977bb050451d328b1f6b00d3.1614669585.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sdm845: Rename the qmp node to power-controller
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date:   Wed, 03 Mar 2021 00:11:54 -0800
Message-ID: <161475911453.1478170.5422364146851783803@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2021-03-01 23:28:02)
> Use the generic DT node name "power-controller" for AOSS message ram
> instead of the protocol name QMP(Qualcomm Messaging Protocol) since
> it is used for power management requests.
>=20
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
