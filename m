Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155A659CCE3
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 02:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233927AbiHWAKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 20:10:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231894AbiHWAKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 20:10:53 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C44545041
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 17:10:52 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id d21so5031697eje.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 17:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=wtdfqbZe7Yqg0E36IxP5GFPPnEzYXx7jrn0J5cWeV+g=;
        b=WZLujeZU/A8oWf9ITCV/CPWdkSxuunX2RshL7iiStC0FrrH0JLIPut5hG4nXk5pgWJ
         xZzYKoeR6YSeS+7DCjfiyfPh31Kru0h2u55qpjJX0uWVhQMvNiws7uwvAGeoDMqS4TNP
         yBYG2Ucji4b7oIKIdqOHZm4IWZzRVyLHbTy34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=wtdfqbZe7Yqg0E36IxP5GFPPnEzYXx7jrn0J5cWeV+g=;
        b=74PEUPmAk3oCyuLZWM0EQ073VkmTJej5i1P6ommMvqySQv5QzF0TFrrSMqXYaJquGh
         EmUt3lMj5+wTFHBcy/GP0TSAQoKyVBYl0nOhNkZc0w8c9TMOW1j+3ZEwrMyiwiUrm+lY
         UsyiLMFTpVHPFjAqVoIwc9wSYc2U4ZwgSURmGbzDK42Vna+sw0BgqauaGVkWKkCLnve3
         wCs1q4SJmWwtePdqw388YwUJ3kAtFFkMYPHmDXGOYUEN66dN8JINEpWnyBbiLFru2uS6
         QByVxRSGCNlGZIyjzd6LZbPM3agvDWA0AJxZ/DBPhLLW3ofzWYHyfF/OhCkCdPyPAFNO
         xXDA==
X-Gm-Message-State: ACgBeo3/YykdBhidjgl6ixFrf+dosP17UVQBD/0YDcxHGkJSXq6o+ohR
        kM5NfYmi1Y9mea+aqIsZNVSTaBmf2I5X2pRkna0=
X-Google-Smtp-Source: AA6agR4az7LbvQJJu7BWj9FV00o/s+eTKh+xew+35ad+WsIzHhDrPY7XZaBaTTAYE6ko2wL1EidAWg==
X-Received: by 2002:a17:907:16a4:b0:73d:6d5f:3e3e with SMTP id hc36-20020a17090716a400b0073d6d5f3e3emr7551774ejc.24.1661213450571;
        Mon, 22 Aug 2022 17:10:50 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id ml17-20020a170906cc1100b0073d6f5ca3b5sm3305833ejb.162.2022.08.22.17.10.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 17:10:49 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso6859531wmb.2
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 17:10:49 -0700 (PDT)
X-Received: by 2002:a05:600c:5114:b0:3a6:1ab9:5b3d with SMTP id
 o20-20020a05600c511400b003a61ab95b3dmr393833wms.93.1661213449063; Mon, 22 Aug
 2022 17:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
In-Reply-To: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 22 Aug 2022 17:10:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VJ7GxRstF06aCSJH4mCdqWrLtp8_VhyhkMkxhkP9nL-g@mail.gmail.com>
Message-ID: <CAD=FV=VJ7GxRstF06aCSJH4mCdqWrLtp8_VhyhkMkxhkP9nL-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob
To:     Brian Norris <briannorris@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 22, 2022 at 4:45 PM Brian Norris <briannorris@chromium.org> wrote:
>
> The Gru-Bob board does not have a pull-up resistor on its
> WLAN_HOST_WAKE# pin, but Kevin does. The production/vendor kernel
> specified the pin configuration correctly as a pull-up, but this didn't
> get ported correctly to upstream.
>
> This means Bob's WLAN_HOST_WAKE# pin is floating, causing inconsistent
> wakeup behavior.
>
> Note that bt_host_wake_l has a similar dynamic, but apparently the
> upstream choice was to redundantly configure both internal and external
> pull-up on Kevin (see the "Kevin has an external pull up" comment in
> rk3399-gru.dtsi). This doesn't cause any functional problem, although
> it's perhaps wasteful.
>
> Fixes: 8559bbeeb849 ("arm64: dts: rockchip: add Google Bob")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts         | 5 +++++
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 1 +
>  2 files changed, 6 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
