Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41C8D3226A4
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 08:51:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231997AbhBWHug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 02:50:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231998AbhBWHu2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 02:50:28 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB84C06178A
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:49:48 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id c11so8254437pfp.10
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=vs+Po/qDl+LMilqgZYSJdN00NlVMDFdkH9R9v7dPCJ0=;
        b=XZ+C6W4OOQZh/kFBb2huxk3/wpyfdWB1ChY7eVghcoLCrdFpJl05LzNymU7oK5e0gr
         ZXu6O4X74LTzIh+Lc821uFUc43B1csV/zndLv15FGMC6K4Uk99lbEwyDcPvjil2iwZpL
         MAswBicxTLaavccxaZwGzdkG6WR6jjIQijEAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=vs+Po/qDl+LMilqgZYSJdN00NlVMDFdkH9R9v7dPCJ0=;
        b=brZv2/buNP4T/07DQSQ2fpzyykBC9sUZWDKkwpNFZiOgebwXfkoY/AZPy56VEooki4
         LKock0o17s+8Jt8jkmEn4MEEW3XufxTU3hqUbANb1BYmP8laYw+Y7SLYonK85iFgpCBj
         +oCoel3DvouFbLg1Ur7X5H0qQWid+kcymbxqAVATE29bn6jcg1X5uT/ZSI2NYZW0ejQ9
         X7HdLDU/Zyr8hNxeqNDhDPlUuR5qIQCTdJmsqfMBc31EO5tTa94F9iN5SVV2Y1mFYNI/
         tLcKaHEnRXcqfEe5nJADtfJZLlkBsazlDtvn+xdsmzat3m03e3nXrNrMaGjkNxfkN5pe
         cCXA==
X-Gm-Message-State: AOAM530n7IrDrtmuNh9R/XP4HMsa0CTX9e5ogFAvfOTmOIQdo1HtHrJB
        FTFGFjxwFb0LN+3dBsqZ3DFcadoRCpZNcg==
X-Google-Smtp-Source: ABdhPJxGbMGJrV4PwG5EMGdsmKoBx3keygbgbAJ4uJhqxUNj+HFibldW/FYkZbmo2+XGEjikappoFQ==
X-Received: by 2002:a63:2948:: with SMTP id p69mr23230491pgp.15.1614066587989;
        Mon, 22 Feb 2021 23:49:47 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:68e6:d68b:3887:f216])
        by smtp.gmail.com with ESMTPSA id 137sm21405427pgb.80.2021.02.22.23.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 23:49:47 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1613114930-1661-2-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org> <1613114930-1661-2-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH 01/13] dt-bindings: arm: qcom: Document SC7280 SoC and board
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Mon, 22 Feb 2021 23:49:46 -0800
Message-ID: <161406658623.1254594.9002506853157482065@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-02-11 23:28:38)
> Document the SC7280 SoC and the IDP board bindings
>=20
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
