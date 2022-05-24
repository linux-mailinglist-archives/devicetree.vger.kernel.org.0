Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD3D533319
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 23:44:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237659AbiEXVoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 17:44:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232887AbiEXVog (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 17:44:36 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA5FF7DE00
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 14:44:35 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id t28so9755270pga.6
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 14:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tdwGjLIYtWqSmu4a56WsblDf3vmkiiXdBBRqZtk4IQA=;
        b=CuE1tQFSmFVJONeZAL2ThFeB1vwnSfXzq20k9Ovt4tQxLU7TJ23JFm4sQVvfgfOHpO
         Sa+5HkQjHK3IdvBheLqRfLW1kI03jDepbgOkcxI9o+lvYjSXo2zrKOUfAI3T+u4CxO+b
         i6o/oSBBJ0Jnzvgq8zHo2W6K+MEnlXla0lLQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tdwGjLIYtWqSmu4a56WsblDf3vmkiiXdBBRqZtk4IQA=;
        b=yd/Ru8HFmZLtJhhuqWfO1lJqlkYt+v0BDU/E6VNZ0pYk25d5cKpgbbQMWVzWgOXOna
         Tx8Xy6EGzEeYDz+3cbXsff//To2pJwaWFvjxOa2U0oPNawHh0xo+0Zq/4eQMZoLoppNH
         Y778eeavcsjodE4DGqob26PywgiBb7lQKqXRwQj/uq3W5/B++NLXfV44GIEa4aP439pD
         +dXha2+JceTEBcOynjoyVy/KCvLFqoQkCQ09A8rfCnoc7HLKUwf2KsOT8bnXaATZJntO
         h5mhMltNdJXO1SdJVlG3f65yUrQ7iAKxqyORklOrT3F4zYRx2x4zQXYRS07cbpQXqbAj
         NFxg==
X-Gm-Message-State: AOAM530fAHBrY0XOM77KaywW3pnjaL7LM0pYDMiw13JUGdQDONbQk7Ta
        IV+z2dN3P4wNatLKFWAvLyiqlQ==
X-Google-Smtp-Source: ABdhPJyJSoSMADvSLYVlL/2kUNvKx6n1UYhKgAQ/pEqNXyseFU7Q4J/kE1GmzKPcau1xYFh10SCG7g==
X-Received: by 2002:a05:6a00:a8b:b0:4cd:6030:4df3 with SMTP id b11-20020a056a000a8b00b004cd60304df3mr30432733pfl.40.1653428675455;
        Tue, 24 May 2022 14:44:35 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:4d83:f549:9abd:427])
        by smtp.gmail.com with UTF8SMTPSA id e4-20020a170902e0c400b00161947ecc82sm387777pla.199.2022.05.24.14.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 14:44:35 -0700 (PDT)
Date:   Tue, 24 May 2022 14:44:33 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Tzung-Bi Shih <tzungbi@kernel.org>
Cc:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org,
        chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 5/5] platform/chrome: cros_kbd_led_backlight: support
 EC PWM backend
Message-ID: <Yo1RwaTYUtWWfdDg@google.com>
References: <20220523090822.3035189-1-tzungbi@kernel.org>
 <20220523090822.3035189-6-tzungbi@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220523090822.3035189-6-tzungbi@kernel.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 23, 2022 at 05:08:22PM +0800, Tzung-Bi Shih wrote:
> EC PWM backend uses EC_CMD_PWM_SET_KEYBOARD_BACKLIGHT and
> EC_CMD_PWM_GET_KEYBOARD_BACKLIGHT for setting and getting the brightness
> respectively.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@kernel.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Tested-by: Matthias Kaehlcke <mka@chromium.org>
