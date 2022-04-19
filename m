Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC99A507947
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353356AbiDSSi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356068AbiDSShW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:37:22 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D3D94D638
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:44 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id c23so16636894plo.0
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YRrH/uc5sIdB8SGuQUHL78HX8x/wiZhubYCq2dSb7bY=;
        b=bZQuVhzSyCUOLvtrHDXAdLbxfOm6NT35nltaps85pBooLZ7CtdzNDpmruSi/xIYZru
         8eNC6G80AtlRzVOJQnLChi2V0Zf5x4BnhDmViRiTV/La08zBFCHmkh72y5ssCdwy/Rpt
         BOvN5pR2sdGkfrsh942pL65GBqb57C1BV8GlrbkS49iKHAL53/bdtCApOKr393Y4sJQx
         KnVh4xL4O1rhEEod+9XgddU73sQtIo5s4BkuTwiO5ikWRT5n59IgR2D9WHg7aGsZF9RA
         I4iUKTlBop5N/owuSm/oIRSS1OO9YKlhOyEQJIjsRTehQIBMVO4e0oBIvfIlTzuRdYnR
         YEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YRrH/uc5sIdB8SGuQUHL78HX8x/wiZhubYCq2dSb7bY=;
        b=c8m9lSMsBr5Gy0MwUxIyrfwqvA0112HeQ6gZwN7sxEP/gfjyc3TupFUET2bPGTXQXQ
         3LyMGESbIZAbGgAhtINvn8rkmiTVlul/zU5q2lS+u+SAEUfY3ikAmbZL4PhCscfkWOHs
         ENLa2ysOA+aS8hLuZFOEjryAiz+Ld/L9VR7Zj1CV9Ttx2I4QHusr4Ko9s/Uae7UMgUxC
         p6P8o3qdUykLFZHKJZ+n0oQMZW6OC2MrA+LWO2QHQ+egCF8gMZ/Girkv7RCd4iF52/GH
         nKUUHzUJ44gLKCm8kGEmvLn/Fr7kfyxFVnCimwyleTgrHGUycJ+/0eqb+G8aiIu700sG
         hl/A==
X-Gm-Message-State: AOAM531RolhktKISGhFirzU5ZVoaNznaTCLpXa8ewrd47GDLE7KDZrj2
        8Xu6OJVzm21YNeZrU0SiOak=
X-Google-Smtp-Source: ABdhPJxegZKel2Z+oPPsCt7YiafFVr92hU3iSwzsEY2Ys/zYV8K+0Jo+t50ztdZGZyzOsy73MeOnGg==
X-Received: by 2002:a17:902:d714:b0:153:2e9:3bcc with SMTP id w20-20020a170902d71400b0015302e93bccmr16942384ply.83.1650392923822;
        Tue, 19 Apr 2022 11:28:43 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d8-20020aa78688000000b00505793566f7sm16752864pfo.211.2022.04.19.11.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:28:43 -0700 (PDT)
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
Subject: Re: [PATCH 4/6] ARM: dts: bcm2835-rpi-b: Fix GPIO line names
Date:   Tue, 19 Apr 2022 11:28:41 -0700
Message-Id: <20220419182841.176421-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-5-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-5-stefan.wahren@i2se.com>
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

On Mon, 11 Apr 2022 22:01:41 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Recently this has been fixed in the vendor tree, so upstream this.
> 
> Fixes: 731b26a6ac17 ("ARM: bcm2835: Add names for the Raspberry Pi GPIO lines")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
