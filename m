Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63C1950790B
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355425AbiDSShU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357372AbiDSShD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:37:03 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91B214CD52
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:25 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id bg24so16218945pjb.1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/o3Mu+8n8vDAT04TOJKODmf7oi60xuAEaVkDOc+z0Xw=;
        b=jDfH2fSPTS+s4H0tOW+OlYcg+B2uIRWA57LFRlDwOKVx0WVdYFaSbzojcRqqaa/5SD
         udFTKT0nFUFsgiBt4figGQO8z+k1nzEVFyG7rnZWkyNVRc4T2JAND2Wg9kFb2bH3Dweg
         2mmZ7BdA3Nj6L3f9uGgn57cSGOEddj5TMHYGCOI/1deys9vJDSiV4QSusVzUMjKqKIAu
         wkW423JPkca9xjTBv3MSXrro3JZp3IOVetIVtHcXjcpUivAHz8vawz+LIbSKw854O6eb
         42uPsZHO3B7J5bFEugvJyLbyFbFZRF0fnNpVlwybFT/bhHLPH/inF7X5ZMt1s9aIDZ6S
         yvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/o3Mu+8n8vDAT04TOJKODmf7oi60xuAEaVkDOc+z0Xw=;
        b=RFy1TxXe0e0iOZj40TXojJ6TW/1uBCydFIaEZKJw7f5ZXfJ0l7XXyByF/ECaMgKOuM
         maOkyDQDzZ4AGFe8Y42D9PmMrTHcjphH6+1l2MZBgcmXq/hNbakwVwpKjrDvH3/ZXVop
         atuVRa89uP7rM9nLNlmKFF4mwlyAQHys4AIlffvJf9PbkVq7bGvMIII10paSeltXnujS
         4xgATd/aSSNT3Ef2wbFZoz4a9DK2rNFnUvfdbmVkjT+KEczpfKqPxttlwFW0Hk6fue3h
         pgFQwGdMZPN8ki6Bo+6tO4znyoJ619aTZy9dq92siBfADfWMffuqcbPGCerJKaPCLkGH
         jNnQ==
X-Gm-Message-State: AOAM532P0ugTO/+vUAniWgC5c40OyHjh0OZ9xfMQ6V0UiNuhTU0/qUap
        sFOnHLrtPtAsX5GOirWP5N0=
X-Google-Smtp-Source: ABdhPJziTzdc2QXuiAnwKmNxkdN8JCCL1uG+xgPm3+f73BELPnXswwP7kUOIhMpdjwvkQzpLjLhAOQ==
X-Received: by 2002:a17:902:ec8e:b0:158:fd5f:2b2a with SMTP id x14-20020a170902ec8e00b00158fd5f2b2amr10506327plg.72.1650392904725;
        Tue, 19 Apr 2022 11:28:24 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id v17-20020aa78511000000b0050609c2438esm16745678pfn.57.2022.04.19.11.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:28:24 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 3/6] ARM: dts: bcm2837-rpi-3-b-plus: Fix GPIO line name of power LED
Date:   Tue, 19 Apr 2022 11:28:22 -0700
Message-Id: <20220419182822.176308-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-4-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-4-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Apr 2022 22:01:40 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The red LED on the Raspberry Pi 3 B Plus is the power LED.
> So fix the GPIO line name accordingly.
> 
> Fixes: 71c0cd2283f2 ("ARM: dts: bcm2837: Add Raspberry Pi 3 B+")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
