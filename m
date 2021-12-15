Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5990F475046
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:12:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238960AbhLOBF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:05:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239206AbhLOBEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:04:53 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC0EDC06175D
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:03:47 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id n104-20020a9d2071000000b005799790cf0bso22964856ota.5
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ZKQQy+YOvLBBZMbtug479K7pxDYFArd8y1/laB7D3DI=;
        b=lwiId9WZTQgfibEg0ojNz7xGBNrxurlOBbuacrxx7RPna4A4ksa5yCkcMraFM9UFD+
         RfrvGzSl0Q78kQhB8P7H+usmPVbMyFdI3pqQjueDW+lgqvq92JnqwAeNQQkn3MHpz2Jg
         /TSiRlJBbEz3KHwmex2KoB5zV7HtDBqPZx05Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ZKQQy+YOvLBBZMbtug479K7pxDYFArd8y1/laB7D3DI=;
        b=3A62N9QXtIMAAxXQB49NVUkeEuBhwsx+FvZ/OFeUS/2MQNyKxPF6i8Z3+LJM+CqjFN
         63fSAiIAFJQgGOtiSARZ3iel4hZVdsOCW8yCndDpJP6xorpUwH+exE/Yfilyw0iz5cwX
         cQm7ZZZs61ZM9znffIcB02GiHoy2Cm3auyNVxiLdjh/lyRbw/txpRwaICtOz23GMMxTp
         cOb0lb5EOfLaRJoWiEhxQiWq4CKzP0lQI5/IEKEp0XEUE7lTHhTeCzyEKKivnjtXAt/h
         /hOZcP8HFwOQS7+0RjYuVQ3VzQhH/cKuA2GoJs5D2/yuTa2WkjUFcmv8jYz9P8ZMbL6Q
         O01Q==
X-Gm-Message-State: AOAM531IACDl+ZSGgz5Bex28FvlKFWZ/rcX01X16DvOlEGXumqmiY8g+
        NJU5B8YnCUmi+20jjlRRWh2ZO8PZ7Gf7aOzCN9Mv3w==
X-Google-Smtp-Source: ABdhPJxgQB+wpjHFaW+E1+QdAZ0kvEgzT6Ilxp55tRA6GKubEVjBc+YOf5sT3QPN0edcDr8IWUs7oEbdlylt3s1AJc0=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr6811626otj.77.1639530227336;
 Tue, 14 Dec 2021 17:03:47 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:03:46 +0100
MIME-Version: 1.0
In-Reply-To: <20211210192328.2844060-5-gwendal@chromium.org>
References: <20211210192328.2844060-1-gwendal@chromium.org> <20211210192328.2844060-5-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:03:46 +0100
Message-ID: <CAE-0n50MKqqk_WZZ+vo7-AqrOwqLvbM+sr1p=_jW-i+fv7a4LA@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] dt-bindings: iio: Add sx9324 binding
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-10 11:23:27)
> Similar to SX9310, add biddings to setup sx9324 hardware properties.
> SX9324 is a little different, introduce 4 phases to be configured in 2
> pairs over 3 antennas.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
