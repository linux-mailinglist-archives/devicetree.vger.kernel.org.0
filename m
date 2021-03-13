Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7624433A171
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 22:38:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234815AbhCMVhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 16:37:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234808AbhCMVhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 16:37:23 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B58B0C061762
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:37:23 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id ga23-20020a17090b0397b02900c0b81bbcd4so12442943pjb.0
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=ootG2XrOkhMQLJHEpBH+pCeYeVaDGS0iuqljiy1oEb0=;
        b=A/0VnEWGHMYZAnW1lvGJC4Q4hCEQdFv71QUITCN2/3XxvAWdOSDWejWUWpa7lNpmDn
         il2nQR9kjLzsCBlcyGdHWrsgrbF6SnBKTlVyO6jFv8/Q/SSArQxM+vhvxOkGgWhoLEZh
         J6PwBHCJNyITXX6zxm6fXwzbl/jTyA5YitWMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=ootG2XrOkhMQLJHEpBH+pCeYeVaDGS0iuqljiy1oEb0=;
        b=foBYZm5/gI4zxRMAMaQyvFqqydy4gnUN1pA4LOw1/0gSCj2XGGyU1G/7AT50jFgAcO
         x19r3BVhQWJn0JsP1LeP29Dpq6fX4RvK7C3c0QnWahE0WDrl5hnZyNoZDHzeKeNEXWbb
         2ul+mWBodiYlBNxGL3EI3bDnMmJuC90JNFKsx2MNMZ/FCNSKpXwM/tzNXLDGlrqz+1zP
         fykK32Yf9z3oBvDV7vNkKoMzq6sc567phrlA013oHNgg/NTXv9YgbG59urbt7Z37Nf3l
         8HRJlYDy6RULkGKISVyJbmuGkX1ewsYbwQ4NF4YGo8XzkDq4fEoIkGpSypw36ONGufdc
         SjHQ==
X-Gm-Message-State: AOAM532Y3q6bH3QfD9Swni8LGCInM4ysRUfSMlY8TOuFmHGo5lDhoBEe
        hS9eR/OO4UEz9t55D0188UTCDg==
X-Google-Smtp-Source: ABdhPJwM9UUOMdwRLcwgdvW79ILsoIhMlIz8vXaekFKN5Gs5x30titgi8iXP8HdUs3xiaTbVwnYphQ==
X-Received: by 2002:a17:90a:5b0b:: with SMTP id o11mr5368406pji.18.1615671443334;
        Sat, 13 Mar 2021 13:37:23 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:e859:c7d5:7d7b:5ed8])
        by smtp.gmail.com with ESMTPSA id w18sm5908370pjh.19.2021.03.13.13.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 13:37:22 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1615269111-25559-4-git-send-email-sibis@codeaurora.org>
References: <1615269111-25559-1-git-send-email-sibis@codeaurora.org> <1615269111-25559-4-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 3/6] dt-bindings: reset: aoss: Add AOSS reset controller binding
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     agross@kernel.org, mani@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        p.zabel@pengutronix.de, robh+dt@kernel.org
Date:   Sat, 13 Mar 2021 13:37:21 -0800
Message-ID: <161567144139.1478170.5287677329522581215@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-03-08 21:51:48)
> Add AOSS reset controller bindings for SC7280 SoCs.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
