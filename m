Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13765325756
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 21:11:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231895AbhBYULJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 15:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233597AbhBYULD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 15:11:03 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D36C061756
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 12:10:23 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id d12so1821481pfo.7
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 12:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=swyMy5/0Rp9qCosdNVcZdjaUALxgy3MHRytEm+vRwrQ=;
        b=VXOp7z900xqaqjf/pwL8dQdzm8m0TcozQ2K/c01FbS80t90yBrY/27ME8755vqgl72
         BbdEsBi6x5d8RJf+NUMIY8B7ipJsyj6DyqqN6/nZ3vJWkjo3DFsbTZRkaMR4BiRdDTDO
         tThdmBJec5ENzOg6Q4kiByjAP/BYre73vr/Mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=swyMy5/0Rp9qCosdNVcZdjaUALxgy3MHRytEm+vRwrQ=;
        b=QJUSNr0/sbZ4PaOK8EPmd1eaKtAVqa5cxdHkr3+jcRay7T9WDcnvhx7eGn7BKTYWh6
         DRJmNSV8ufRLvvKaKXnuu4+QheV39J46y0c09KfzoD4b76cZzw8WYvRpz6n5TVVQ6PTi
         3J/uf5zCthHQj17tij/IzVWLIH0vujL2abigZ5MpNOgZ0nevQ0h5Uf/ZHVuy+8PmzcFb
         u0E/o2GhOaOxpHItjnkp5eVyGVbx249Rzjo6W5pZQqaMPtsamPko0ick6C6snZIgD2YA
         Um/QrBpAF9WFCGlSmoehQelrgZREQlsqM17+LuFZIoGfwxZJCYzT+kbkq0XrcZ6mJ7M9
         3O0A==
X-Gm-Message-State: AOAM533rSrW37VlsHu0OHh/ghB9OlU/M1gEGZnsIkM2NeidFKXg1Ju8B
        /NIDaTXBYHOh9I1o7nXkL+wHHUIGWriCZg==
X-Google-Smtp-Source: ABdhPJylGmX26FSNU4yW9cKMW6aPGHiyhtycnQKq1zZKMV4KrnbPf4L5DcnAptWYIhgQLhVIH6kXmw==
X-Received: by 2002:a63:d601:: with SMTP id q1mr4442742pgg.417.1614283822348;
        Thu, 25 Feb 2021 12:10:22 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:b942:93a8:e68d:5a90])
        by smtp.gmail.com with ESMTPSA id k11sm6629386pfc.22.2021.02.25.12.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 12:10:22 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210225103330.v2.2.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
References: <20210225103330.v2.1.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid> <20210225103330.v2.2.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sc7180: Disable charger thermal for lazor
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Date:   Thu, 25 Feb 2021 12:10:20 -0800
Message-ID: <161428382042.1254594.15382294447104869744@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-02-25 10:33:35)
> Lazor is stuffed with a 47k NTC as thermistor for the charger
> temperature which currently isn't supported by the PM6150 ADC
> driver. Disable the charger thermal zone to avoid the use of
> bogus temperature values.
>=20
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
