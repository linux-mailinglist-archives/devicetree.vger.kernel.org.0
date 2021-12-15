Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FA4C47505D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234407AbhLOBO5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:14:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233867AbhLOBO5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:14:57 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB018C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:14:56 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso22923804otf.12
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=rvS5Q7EKe3K7SH+q/7TxnRZ4mk0oTjNYj4sraDpnvVQ=;
        b=CZT3IbRiD2MvCjx0qHT4sTFKxwsdrGCCCpkAXj0IeJItopkMNKPboAQvR1EQQcqZ5j
         q31acvqoKbiz8GrnFtbfxuvYrVuM9+ICcoBMwTEeXwF/pydYvqxDIggpRuKyRd1m+WML
         x0F1YEeVVnwQdWO0wWm9zBFc+Re6m0nRqrsas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=rvS5Q7EKe3K7SH+q/7TxnRZ4mk0oTjNYj4sraDpnvVQ=;
        b=d3cv5NPGlgqttnywxd4HOW86vv/80TxgaQITa8gIYup9/Irip0t4oNHiOH8FUGmneO
         yRCiE8NB1WIKCVO5w6xjq+NnO4ULFo+ziszHbKm0VSAUpy4g1PpR694X61f9DQHWYUAP
         z6//qI+HjP8zQ+rulRC4xqeI7NRjEZ+FYCwjKRoXAmOwwAFxsGT0EpU3rpiHuSd1bO9n
         HPYA8OvyEJNj21Iky+sU68TfrdPP1QiJeWEO8dEy046pAZ5ngYZsqz3Kyma3QUkJwsR0
         F1qhTqfcosT5JX1lL6Ce4o+p1ozwDfeF+p4IGbY49seIbm3buWMZLC+/W6ElSQ3Sd7u5
         lefw==
X-Gm-Message-State: AOAM533j/NPe4jxchPhFmPURFFeY4vGk9AhAg21NdehZFRAWRrm7ubyq
        NuBkvhpv+rIQTMW3hwp25DbILdpKH9TXWPu4WS9+vw==
X-Google-Smtp-Source: ABdhPJx7028jYOaNEpoZd0AS4FVdT4oIZk9aqcqUNRaJv/zvWQG/ilJjZkmBI+4nrhRf7mZashH1c5tb3sRIANYvwDQ=
X-Received: by 2002:a05:6830:30b7:: with SMTP id g23mr6767021ots.159.1639530896121;
 Tue, 14 Dec 2021 17:14:56 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:14:55 +0100
MIME-Version: 1.0
In-Reply-To: <20211213024057.3824985-3-gwendal@chromium.org>
References: <20211213024057.3824985-1-gwendal@chromium.org> <20211213024057.3824985-3-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:14:55 +0100
Message-ID: <CAE-0n52s8wH7NmfBSBkN_90cAH_=VyUmMg5jN6XGKEbUj_167Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] iio: proximity: Add sx9360 support
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-12 18:40:55)
> A simplified version of SX9324, it only have one pin and
> 2 phases (aka channels).
> Only one event is presented.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
