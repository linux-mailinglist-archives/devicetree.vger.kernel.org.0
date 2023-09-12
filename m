Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3376C79D866
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 20:09:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237360AbjILSJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 14:09:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237346AbjILSJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 14:09:46 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC29F10E9
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 11:09:42 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bcde83ce9fso99960341fa.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 11:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694542181; x=1695146981; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWTM0f5/i1QnClAjTECf9BeOt/psp+zCb1GGDraYASQ=;
        b=czfZb3j/SidR1NgJ7VYFOwQeFooWtDYkf5TwjrOApqlX9hDSDvzAixN3CbccRBSGvF
         9c4658dXFrpeA/FDy5TWv2NUdpIg4W6MZjwJKn+DL6/91dQ9hSFiUOI4V5jF5z5ERGKu
         k/PyAe2URtdinroS4Xh2OlZUMkBD6YLaG5n/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694542181; x=1695146981;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWTM0f5/i1QnClAjTECf9BeOt/psp+zCb1GGDraYASQ=;
        b=QdJVum5xrfqgtdHCck0xIVWeYyTzgW9rPWX2vGstaJq7BQZw0qe9SA+36nmiQ4FvE3
         4CRsjaFzAohBSb6VLlhL6VvGkx5gRzyyms1u1GwcS5MPP+PEjsh+O9GeA2ZGoh3Ig9wP
         um1nav6dQjdl3yGLyrN7KrPza0lq/Ccd2S2OQBC+kN4e93hbDN2BcGouMy2qZk4fxcbG
         WL2Nqe7N+QXb6LAC81pYjQrMzX6yaN9h9ZsMKsHOeSWBoiqmhJyogcYLD0kvc5ORdtAF
         Je13+yrSGYA6gUu62mLfrfIH/P02UJaH4z3bfMo9Vn8oZguv1mkTgjcQ5vVkELGeB10V
         /W8w==
X-Gm-Message-State: AOJu0YxPWWaTZdaEHtvRZgUcKPYZQ60cesKLfY4OPvjv1TvoZtpQNwuQ
        0r7R+Axh34I7lq3dNfpWFQTXHb+LVOggW2an9BNtUA==
X-Google-Smtp-Source: AGHT+IGqBTcsw26+laBvJf/I/isoneVHzrJJ9T+K2yk5azRK+zEfUSmcs/ggygm50ClDleB1KaELGwFCQfMOnw2KkGM=
X-Received: by 2002:a2e:9dd1:0:b0:2bc:e808:e735 with SMTP id
 x17-20020a2e9dd1000000b002bce808e735mr525680ljj.21.1694542180860; Tue, 12 Sep
 2023 11:09:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Sep 2023 11:09:40 -0700
MIME-Version: 1.0
In-Reply-To: <20230912071205.11502-1-david@ixit.cz>
References: <20230912071205.11502-1-david@ixit.cz>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 12 Sep 2023 11:09:40 -0700
Message-ID: <CAE-0n50rUnwqPqDmskdaUOYc8qUPYpNoJxwsfShgsc9ha6XuGg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdm845: Fix PSCI power domain names
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting David Heidelberg (2023-09-12 00:12:03)
> The original commit hasn't been updated according to
> refactoring done in sdm845.dtsi.
>
> Fixes: a1ade6cac5a2 ("arm64: dts: qcom: sdm845: Switch PSCI cpu idle states from PC to OSI")
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
