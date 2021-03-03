Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E088632BFBA
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579187AbhCCSaj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:30:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239663AbhCCIPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 03:15:07 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF53CC0617A7
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 00:14:25 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id q20so15714522pfu.8
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 00:14:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=P1dtltEjETKu3sTEniyo9zPnCTLC+x4yGC+jPDmiEdE=;
        b=DFjBbYW4i7nCNY+8nO3JLdXqK6DlITs2S/fUluYL7jQmvOks/+LOnBODIJkfkcbrr3
         WQ/a9PQ72NTSPxepkYLKTr7fwq61U1oCn9Gq9Dd/KfASm/mJc9Rmw2JQzDL234Q9TQP1
         tmUSLG/OQQXqYjZ58xZTB9603sXSqWsQy0rqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=P1dtltEjETKu3sTEniyo9zPnCTLC+x4yGC+jPDmiEdE=;
        b=nTyFmURuPrmvxwEKmBWL7YsBvUdzyqCyu4QD9vqNANmyJawlNgaoFY5dZJxccEnrxJ
         TcmQ5AIrdeQqDqx7sjK9NCIRSSnzxzXn0O9JiD2JbnoKoQTXiAr1W2dPpdTwiwTEQh7b
         pfMBwnnC56jKCKjEjJycLv4yt0oxNt6uoH1CSmBOo5Hek47lMiSH/+aUfiujRl5yXb47
         O5T8NxB2VXO9/KTPMpg69XBGEV0iMNXENhMjatXwZ8Zr8RVyWqkelNKKDuat7Apct7m7
         5iaUMvstixqggelu4lRGHe8a2hocYt9lJwYQEJ3oZ64IufI+oSqKq02vPPwWpRk5QN/C
         HN5w==
X-Gm-Message-State: AOAM531OhkovDM+YFYhJXUEYZeByIvGkFEMoJiLhg3TquDADPgm31nFI
        RYDskMDHOzvBWdYF5y93QKxCTA==
X-Google-Smtp-Source: ABdhPJxNhzZMc6gB6O8kxv/u+g9OfQs7Cdr1qTVz0+CIRmAneXjymSzwnIP3u80l2INlse/RgyrUJg==
X-Received: by 2002:aa7:87d5:0:b029:1ed:b85b:1420 with SMTP id i21-20020aa787d50000b02901edb85b1420mr2004823pfo.17.1614759265611;
        Wed, 03 Mar 2021 00:14:25 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id r31sm16414439pgm.11.2021.03.03.00.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 00:14:25 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210301133318.v2.3.Iddf6dc8102aa4fbc3847936226fc7bf2e2cd315c@changeid>
References: <20210301213437.4165775-1-dianders@chromium.org> <20210301133318.v2.3.Iddf6dc8102aa4fbc3847936226fc7bf2e2cd315c@changeid>
Subject: Re: [PATCH v2 03/13] arm64: dts: qcom: Prep sc7180-trogdor trackpad IRQ for new boards
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Date:   Wed, 03 Mar 2021 00:14:23 -0800
Message-ID: <161475926359.1478170.7064077548869689969@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-03-01 13:34:27)
> The trackpad interrupt got renamed and also moved to a new GPIO on
> newer boards.  Let's do the move in the "trogdor.dtsi" file and then
> undo it in the two old boards.
>=20
> NOTE: since none of the new boards have device trees yet, this change
> looks silly on its own but it will make sense after more boards are
> supported.
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
