Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD7555DCEB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239781AbiF0R2J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:28:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239302AbiF0R2A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:28:00 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B508A12AF0
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:58 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 184so9687388pga.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m1OEWLo7eyIVk9GrgqY5RRs1fthum5I0YiIdC7leIVE=;
        b=Zw4qo+2kyXM9GmYCvrHjC5NTAVh9b7xEuwkvH1hKjO8oYywnvANk5iTtAUwRMLwpBy
         kU+CkW+3hLE71IFM47/1HjmVZfhJvrxW817xol7YMoeQ46/OBHmK27Zq8F2wfUX5Lmxh
         eIUghV/oWEn3W0oyQ80/fUHHfApy3lkJgeskJ6UO0R48R3H3oOeBylUaVpdbwsWoo3bA
         UsCIXeIul9PE1i+wU58/xmOiZRNW8DE2s+0p2cGn3vDC6vgLLK3cpv5aEHRYFEojat/W
         SctSn17zMEEWuSN1Ly4sMODjsMQK8vshZ4REisYAtma4BJ3lQTyVL3CRIKtoY8PZjygt
         tfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m1OEWLo7eyIVk9GrgqY5RRs1fthum5I0YiIdC7leIVE=;
        b=mDMyTtyl9A1S8/p3/wRlHbdNl2GHZyM+bZ13V3k/PD9bwsLtA1UL8SIyK4OI8vRpzF
         dZq+KFhc8gp1w/eUifA54sa7JyTRHrjH4PeMqxIPtQhd/CasSzaj2C2Jbjw9EQphKHhB
         ul7nAPHJZJAzDiLGu+ieUTD1R/h09IWAKIYblKV8yCIdTbfCoYjApJHsGMBPhu8lMAaI
         eMuf4iJKRiXrGHgGR1YvSDcs3Gv+QqhWMEqqXkmN69b7hZIBzlRmtKvCGUr9wS2M0jVv
         rbhKZkAplCCzcEVeKMRfZk66GBx/5N1uHzzBpYtqyeKL+U+3sIDvd2UiGUv77dV+hugS
         Y6oA==
X-Gm-Message-State: AJIora9pyQKUFwjrqfw8XSfR2af2rtkHvMx5dXgbeS2S5pRGR1NLfbLc
        jakSoqNsT19rd2wPuqE27OVKV6vlMH8=
X-Google-Smtp-Source: AGRyM1uN1V1yb16ewNLwNP+HhSRJ1jH4PX+jckWLzQck4ULx+KIsUH+LgI+wbVJqUUSXtzepRg7p9Q==
X-Received: by 2002:a63:7046:0:b0:40c:af8d:a6 with SMTP id a6-20020a637046000000b0040caf8d00a6mr13724101pgn.38.1656350878177;
        Mon, 27 Jun 2022 10:27:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i1-20020aa796e1000000b005259d3cb176sm4012969pfq.77.2022.06.27.10.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:57 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
Date:   Mon, 27 Jun 2022 10:27:56 -0700
Message-Id: <20220627172756.2173309-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-10-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-10-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:17 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The macros in order to access the ASB registers have a hard coded base
> address. So extending them for other platforms would make them harder
> to read. As a solution resolve these macros.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, thanks!
--
Florian
