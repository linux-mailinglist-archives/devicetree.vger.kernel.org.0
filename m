Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 417582F86C5
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 21:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388036AbhAOUfJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 15:35:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731339AbhAOUfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 15:35:01 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE428C0613D3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 12:34:20 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id 30so6751076pgr.6
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 12:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=g+YP0bVv1YfQ4vqCqWwoBJPB0DUFQOEmaYfwxcveiIA=;
        b=BF5sTMwQLqTbsyDlqquGDw/KXf1h3FUyEXcOPNi/o1CHl7yHh50bZEqxyLD5QVR4yW
         yWVLAZZkEDY5Gb4yuZfV/qjcTTfWWmExpwev/jTOJm3IKk+6mxWzYp6pt5pZkooUIVCr
         E24D0xxUOsZ3Ile+o4KLzim2rj5RxTUKFslLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=g+YP0bVv1YfQ4vqCqWwoBJPB0DUFQOEmaYfwxcveiIA=;
        b=bnS8w2Fyhyk0rAGi2AITFyVvkd27U0AHdOs/v4+9Mm4s7ZIGWSNtbPGvMGDPm7Lr1a
         QyiYtrQtfdvjouXsLs5XBbtfhk/pWdV7dG5jJ0El9DCG8XjwjK5JofBNq650jkz7JVT7
         v4Bvw10PzbcknvCeWVeNVR6vNeOuTqjLYoWAMxdEWzJY7fFhGpCagpObKmDatvCTFUOO
         1PhBQSGTJVgmRWzGmrZT7tmip68Z3DTmchCnNXWxsZ/01aZ8k4QKaOnP0V/aKsbPEaOd
         96wcc/5f1JPQVpra/Y3UQGe6dmpGUg1WXlY1CAc1KjsCwy/PtfL92wfRSiFY1qcpdhnV
         zzqw==
X-Gm-Message-State: AOAM530+KsmAMlC9hz/SWc9mmc+ApylOpoDNiCHO6WgIjshzBRl/J6FR
        FDJ1bu5vDlIzDpkcO66qAeXicA==
X-Google-Smtp-Source: ABdhPJwFxrCy6unJ9wd4f769/57cihhVD8RvoOwOtvmtOsKd2+BhZR6IT569L9AX8EMqVI2bYQyQeg==
X-Received: by 2002:a65:534c:: with SMTP id w12mr14398508pgr.179.1610742860241;
        Fri, 15 Jan 2021 12:34:20 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id e65sm9118505pfh.175.2021.01.15.12.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 12:34:19 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210115122412.v7.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
References: <20210115122412.v7.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
Subject: Re: [PATCH v7 1/2] dt-bindings: input: cros-ec-keyb: Add a new property
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Fri, 15 Jan 2021 12:34:18 -0800
Message-ID: <161074285814.3661239.12462722802289701745@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-15 12:24:29)
> Add a new property `function-row-physmap` to the
> device tree for the custom keyboard top row design.
>=20
> The property describes the rows/columns of the top row keys
> from left to right.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
