Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8B363DE870
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 10:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234506AbhHCIaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 04:30:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234238AbhHCIaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 04:30:14 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BA7C0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 01:30:03 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id u25so27330144oiv.5
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=qc7HAdPRONVWENwTqJYf7+UMMSlQb2ByVT4mMiCFve4=;
        b=atniL4rhfuMh6gdc26n1GvfP7sZL/FB3VeVzJwfpY3ZGDBRtqPlRh8TAUzQHQzJSm/
         /TAFPpVODr/K2HLBx9M2k1bqu5dqDmNoWVhI5FM2RNcOOvWy3OaTrLLkDVxzuF1pJQfT
         hJESjfs/EKjU9yKmWxkJ54YnAp7MnMTfqxSmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=qc7HAdPRONVWENwTqJYf7+UMMSlQb2ByVT4mMiCFve4=;
        b=GRbcQPW5hBLYaMnS3LHAjw8z4oGkCpI4NDEP5BKhbn+ved4BCwTQvn7iWYmLUGxthV
         KTYsRSvrLfsF7Rjc6fJkg5TbAgXWcajoeCYz3x5x8vflKIYrumCwN9rmKFtHkomatAkv
         gnY1d8haFXGdM7fpzGbdUiS3Z1Rg5LE9eFhsMVkckaWmEkIJLBQEbvAlKzgp+DYk+rSc
         CuCvO9snLx7ZqYRF8zvGtlJ7sSWJ2BbLSwO1nueIp3oFC8hiC2aq0ag2i5bO8aYPy/hr
         hmrdKxnDW5mrb+Q1eEjIAwQRdeUQ5i4qYaf4vI5j4ADE6MsUmuPNdfVV6Q2VFt6EBF7m
         GL6Q==
X-Gm-Message-State: AOAM532CxsQPyL0BFERtO5hQVvuh3NwxWZheijHHnMoYhQcl4qXoLpVX
        9hSkSqM0QWFHBWxzs2TIYOOnSHYRuIZ+d2YKal3uTg==
X-Google-Smtp-Source: ABdhPJyMfyu8cQDBZHg3QkNLeM3oPRsMes4cknk00JW9csASaOxHnvSIllU0nbXxTj7snFYSblRyiaUzf1SeDpf6mDk=
X-Received: by 2002:a05:6808:619:: with SMTP id y25mr2337150oih.166.1627979402806;
 Tue, 03 Aug 2021 01:30:02 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 Aug 2021 01:30:02 -0700
MIME-Version: 1.0
In-Reply-To: <1627897145-28020-2-git-send-email-rnayak@codeaurora.org>
References: <1627897145-28020-1-git-send-email-rnayak@codeaurora.org> <1627897145-28020-2-git-send-email-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 3 Aug 2021 01:30:02 -0700
Message-ID: <CAE-0n51fti6NQbU9=P-ooPxwc9zNUcV==jaWGnRB7CvCBT_j8A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document qcom,sc7280-idp2 board
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, skakit@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-08-02 02:39:04)
> Document the qcom,sc7280-idp2 board based off sc7280 SoC
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
