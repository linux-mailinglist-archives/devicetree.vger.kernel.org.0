Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7E82F2614
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 03:09:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727328AbhALCIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 21:08:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726672AbhALCIT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 21:08:19 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555E5C06179F
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:07:33 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id g3so558021plp.2
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=aVeUh8oLgwumv870papM61ZoYA2IKqyoVhrUv1Nrg3I=;
        b=E5yw152yQc1HAbwbMZIXYML8+n2NC7lgOxKiG74ckRS6aW+VFMFTLe7dUxrfD3nfDK
         +pO90RkRGb4jzvxRWKz9th3gXIJBMciKRR4puMgdytZy8DErD0LZNy83s5rfNTpncGq/
         QkluC3Q/1XnEjjMJrIGu9DHHa8aNoUXJN9pQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=aVeUh8oLgwumv870papM61ZoYA2IKqyoVhrUv1Nrg3I=;
        b=WYQS8RqBo2uppMy07nOCNJy382sc/zW9jvnzlj5xO9qnwpVbJE706PTkkJ7Rv4waae
         UIvCo4wLDqsHhw9r+Y7+yin3Ifm36e+Er9sYIetKAUH+DgoUhz5D0DxWKFIyFTjuzovM
         hEbN+K/63Q4UER+NAcMT9EfpC8KomQIkUZCCvWENXJRqxGteMTTHvozjQgxmlZSxdSMq
         Nz4m0o4BDJzX/ZqiQAoxqfLCFRWm76a0S3ovYprh5UoO8usl5Fo7zA8zGhhtqkz1xB3C
         w4dgVHgNIETg5/cphpRLbpPcQ0uQZIOuCB3fnK6kxGHP0mRzFKhpiA9KgWuoeFaTPevR
         lrTw==
X-Gm-Message-State: AOAM533vS9NBQ+s7cF9frEwFhppfaLLdjqKJpDoyBjEoWII/3Jbzkkpc
        iVbXIJI9n1w+eGCrXW4O6dW84w==
X-Google-Smtp-Source: ABdhPJxBt4xpPuKHxbB/yK775AkbM2f5kVQ19itSmzHInsKUXH6xm2WVWKvqiwwFsoyLMzWFIqF6DQ==
X-Received: by 2002:a17:902:848e:b029:dc:b38:98f0 with SMTP id c14-20020a170902848eb02900dc0b3898f0mr2790998plo.82.1610417252978;
        Mon, 11 Jan 2021 18:07:32 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id e68sm945328pfe.23.2021.01.11.18.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 18:07:32 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210108172316.v4.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
References: <20210108172316.v4.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid> <20210108172316.v4.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
Subject: Re: [PATCH v4 2/2] ARM: dts: cros-ec-keyboard: Use keymap marcos
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Mon, 11 Jan 2021 18:07:30 -0800
Message-ID: <161041725044.3661239.4848052699046966461@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BTW, subject says 'marcos' when it should say 'macros'

Quoting Philip Chen (2021-01-08 17:23:32)
> The common cros-ec keymap has been defined as macros. This patch uses
> the macros to simply linux,keymap in cros-ec-keyboard.dtsi file.
>=20
> This patch also creates an alias for keyboard-controller to make it
> easier to override the keymap in board-specific dts later.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>
