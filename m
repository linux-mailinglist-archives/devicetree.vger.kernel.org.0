Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DF1332268F
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 08:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231910AbhBWHoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 02:44:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231865AbhBWHoH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 02:44:07 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D3BC06178B
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:43:26 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id e9so1326453pjj.0
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=2twvVjicMyNNCpSgmcLEudmSx8y+klw/u8V9ariMKdA=;
        b=UoksV0KOhpu+dR0oTgA1gV3D8jT9FPWUVgOxpH7Eckcj+IS4Nv4j9tDotUdTxerMYS
         loygdc0u+zV6jJ2mu59fZLlHcRX8mByQIWygprk73Z+FPPFEDXusQX73RILUHFbwXH59
         wgAjf/YHUTtth5zhoGioTlRd3rZ5H+qcEJObg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=2twvVjicMyNNCpSgmcLEudmSx8y+klw/u8V9ariMKdA=;
        b=J0zGFn/ei88GbVo9mHfSBYVoq758u6QEscOCisNVlAa8R3olyb/QNih5VM4R4/DlwG
         3bBbHmfX+F13IkpYuwfRzN0oCZNqXQK/pc8w5yqJMRudAEYCv5hbKulNjo7Zo5yf8h70
         do8amPdZumTcjuo0kPVkm1Ndm+BiLZx9kf4Ruz8P/v2ECRrE3u7hMi9nXcdOHTEHB8EW
         Q3gHomTzeD2qWZ+8/7n7rBUNEiRQ46mMX8P0dWR4TvUWPxaqq6yrcZqispu0iRyoiL4F
         90y9QmlLprk33Lbb9mTmg7rnn+5xFO2XXdmkSsz23axSZZYycaYJIjJ+S/etWVt8P/Kg
         zoyQ==
X-Gm-Message-State: AOAM531+uejgN7qWROE155AcQdrZtYDtsFrjy447eVycOBxuysDzLM5m
        ai6SbfjnhtXyy2kczTtA3649Qw==
X-Google-Smtp-Source: ABdhPJx8a4leQU3Scg3ZY1pwKuaZMRissgGbv/pQFsAh/V9Tpk0mRQ9YXJ6+5gM/Asp6JsYcvpEepg==
X-Received: by 2002:a17:90a:eb02:: with SMTP id j2mr28258219pjz.226.1614066206537;
        Mon, 22 Feb 2021 23:43:26 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:68e6:d68b:3887:f216])
        by smtp.gmail.com with ESMTPSA id d10sm6216079pgl.72.2021.02.22.23.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 23:43:26 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1613114930-1661-8-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org> <1613114930-1661-8-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH 07/13] dt-bindings: arm-smmu: Add compatible for SC7280 SoC
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Mon, 22 Feb 2021 23:43:24 -0800
Message-ID: <161406620483.1254594.6953681573838729589@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-02-11 23:28:44)
> From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>=20
> Add the SoC specific compatible for SC7280 implementing
> arm,mmu-500.
>=20
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
