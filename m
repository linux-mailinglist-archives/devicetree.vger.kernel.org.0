Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A56E32C8CF
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 02:16:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346285AbhCDAwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 19:52:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1450277AbhCDAQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 19:16:03 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F55DC061756
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 16:14:50 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id jx13so5277758pjb.1
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 16:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=WnDkAzTyj/IUowE9p3zeyToigi9UEfcbc8xp2RdZtaE=;
        b=Tu8CP/zJ0jJ7ezE4qOvzlmxSjM/31KpsZR8XKTGSxDHbUEAYr94rrtAKgGz/zyzt+h
         St0P1+JkwFu/x6wnMCfBwZzopKCaXOH3w7QcyBn0a2bBxgi60jRxm2ds0udwz3sUooHe
         URVN4NGvYzaXKFDbRuw2fMYV7sEuK31RPyWwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=WnDkAzTyj/IUowE9p3zeyToigi9UEfcbc8xp2RdZtaE=;
        b=Fg1dqi+YqpEnmlEkyciHvoj/41Q481hg/gIJirY18DtYnPzHBhPqSz3d+zHMTCs6dq
         hz3C42fpyfd/n8aO9af/kUEM2RlK256X5QHcgRBEB0nfzG6FUvv7RDzsZ9JceH3BHz9B
         8RahmpJpvUavlH9Kfvy0F488OdvQhY/iGMk4WgO6/CSGmbHgj7y2KslDYuLJtJUrMwmt
         61KcpwUeR4b4o9zBYZuXzMK9CGWx8RSucBKD3EuZkgwrJOPI1ADJGsWNwxuweD4/ycu/
         BC/kmx2NX6f9Z+UGDdQJ4MuTSqdth/VAgZ+uSyowgdQZCk+5RsWNBMaRj6t3ZGrNKH/U
         kBmg==
X-Gm-Message-State: AOAM530/PSvqQsQ43KORsuul6hHRQ64G4M0kqbjwheRJ07Mw7IwrByLj
        zUbOWIG3PcNdNLo8swmeYpI8XZLdwBjF6A==
X-Google-Smtp-Source: ABdhPJytfAGP37LsLT6xDTtTUkZgFZ4NJTu6Uv33YjiVvJxI/rdIe6D6wfoXT6ovJk8rCGuWWpgVCQ==
X-Received: by 2002:a17:902:c20d:b029:e5:c92f:46c0 with SMTP id 13-20020a170902c20db02900e5c92f46c0mr1577353pll.66.1614816890007;
        Wed, 03 Mar 2021 16:14:50 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id z137sm27478939pfc.172.2021.03.03.16.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 16:14:49 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1614773878-8058-15-git-send-email-rnayak@codeaurora.org>
References: <1614773878-8058-1-git-send-email-rnayak@codeaurora.org> <1614773878-8058-15-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH v2 14/14] arm64: dts: qcom: sc7280: Add rpmh power-domain node
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Wed, 03 Mar 2021 16:14:48 -0800
Message-ID: <161481688822.1478170.12018592729047623108@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-03-03 04:17:58)
> Add the DT node for the rpmhpd power controller on SC7280 SoCs.
>=20
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
