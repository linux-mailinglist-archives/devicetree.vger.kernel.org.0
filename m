Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1E9E50BD52
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 18:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1449802AbiDVQqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 12:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1449792AbiDVQq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 12:46:28 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC5D5F277
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:43:32 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id y10so17444269ejw.8
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=RiEO4zZamQGG5SMMgDVcQPYTfMS+OHWwLyxPSkJbTUg=;
        b=eRzeKgLnPmzo//vWRiR9PbqQdWIzIrsMA9yo5FP5RwZV3ZvSqz9ySo08Kk6KQrb+Dz
         LxTGHQy8ajCw7toJJ8APhixFbekcV88bU0PzWlfhYb6WcyES2E/5dCWLuvEBYaEDuVhn
         Z6j9P2LAEV1khpHdkiYtvon52q9RK82F1dOzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=RiEO4zZamQGG5SMMgDVcQPYTfMS+OHWwLyxPSkJbTUg=;
        b=GukiX9MfEQqxxHPZOu0F6jVWDn51L/VYn3ZgHlRJfYIvwskrOOeOFybEojaXeieYTk
         Mmy/BhvFnhCn5JxaZdkgYRO0UVhwy4UdE4goVIjrp/UiBAxM6BinzMdTDWT8EH+8jII9
         Jl3CSOHwOuRJLRrumLqBjP1HVkjp//XdAH3d1i9xsi9Oqpj4PTFzqXUDGg6xemWXrToV
         EoaYDR+5RSgSBHRh5rqShWhVhU47FxjVVuUsgWh1Cc0LGXcNEnkXdbcKguPTQoqeAUlF
         2bko/atenpd4mhbXY2mYsQGieXwXFH6ifYSJ/pojdCQatPzhnXLj35FGnPPdEzO/m3lt
         mJvg==
X-Gm-Message-State: AOAM533R7F+Y4LJdH5nsYTXkokv+EekdBAxjK76iXT8x04Uhf8yYRUTB
        5pOt5o4f+dfKTdpz7fSIvQ5Xcg==
X-Google-Smtp-Source: ABdhPJxqTZotCRjXIS4vrC1dXDIZmDp8YaKiZEC6pmSPJlCwJUPWdQpSpFlx+ZHm9ZqQ4gM5cyjCog==
X-Received: by 2002:a17:907:6e90:b0:6ef:ef41:ac10 with SMTP id sh16-20020a1709076e9000b006efef41ac10mr5184554ejc.187.1650645811291;
        Fri, 22 Apr 2022 09:43:31 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-56-163.cust.vodafonedsl.it. [188.217.56.163])
        by smtp.gmail.com with ESMTPSA id m3-20020a17090679c300b006cf9ce53354sm900935ejo.190.2022.04.22.09.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 09:43:31 -0700 (PDT)
Date:   Fri, 22 Apr 2022 18:43:28 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Subject: dt-bindings: usb: usb251xb: add documentation for boost-up property
Message-ID: <20220422164328.GA2263442@tom-ThinkPad-T14s-Gen-2i>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,
Sorry for the really really late reply but I forgot it.
Is about https://lore.kernel.org/all/20220306184720.5350-1-tomm.merciai@gmail.com/T/
I check that others property don't have the vendor prefix on the property name.
Maybe I'm missing somenthing?

Regards,
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
