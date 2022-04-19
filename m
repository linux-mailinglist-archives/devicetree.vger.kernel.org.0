Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04A9B50790A
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355302AbiDSShB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:37:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353481AbiDSSgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:36:51 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39CA73F884
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:12 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id j8-20020a17090a060800b001cd4fb60dccso2737950pjj.2
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aD3KzXUElHL0sJka3ZM6Yj+YlrWnEo0gr/RoKaAJ39w=;
        b=XcX4YQJimjRxQZfL62ube+ITMuEFFRKGCizrNvW/gOqyOJtkCJHO6UILmT1hraiYlx
         0YVyoncXiYk30KrQUsf0mabXxdnYhrVjy5uhKSe1nKCFCrzCN8hN7uj241e/RIcRnfsh
         LNescd8Jyal5KpYq7QF1VMmRzvKcHxUtbaEfhCgNtzdCGVk03foh2mp0xypOVHMcraFZ
         dCh56J+h5iatDaJ0L859jk7+imkpCnZnwcQtUD5UIbVAebsczNb4paQIx4jXEWjfTr4K
         ckv36nwjaOlsya1cp6YWp2qNbsOmWZevruPq7I8yDAwmeNLZf5lzg2ffoEHkg5cxBR6b
         0CYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aD3KzXUElHL0sJka3ZM6Yj+YlrWnEo0gr/RoKaAJ39w=;
        b=Bb83rIzjJVHS8zjzxe+XXHujhT5MInIqo5jCBJlBZHmSWVP6NDLx9yA2NRs9LMvg4K
         msx5kkS8GmL1RK9+0FEy7xgq3yxHvjW73EWwBl7JSCrY7tpiCouWyn7e5gHzmsE54EJG
         lH6ouDa2C9+9iN+Ww7lAFe+D/cINM8rht0d2jt+3bv9DK5hxqC7Z7ckNMwipClfd4Ytl
         dzmPGXE+QHN3Pww/tw1pk0ZrpGug+bezi1mTngN7w5UOmwzRXJQbNchham9wAArwER1F
         fQ8nNipiNujiHpFLhYyHytbcyjvPFy2FkwYM+obdifrl2APW+e88B54Nl6Ar8h/YiOQE
         7InA==
X-Gm-Message-State: AOAM531x0XRQA2hqAv2sbBQRWAY5QPLHRgEB/rCmxAYq7rrPSCfMWVLT
        uu49oCyrL0p16YJSrendnrk=
X-Google-Smtp-Source: ABdhPJzWqvch1vMOuj4qv+C7bsPSCCNzbusRDlx0G/PZNy/4MbUUyqIp7muhCzzbPRBhz4u3HggZFA==
X-Received: by 2002:a17:90a:d58b:b0:1cd:65dc:6a62 with SMTP id v11-20020a17090ad58b00b001cd65dc6a62mr25238339pju.89.1650392891352;
        Tue, 19 Apr 2022 11:28:11 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id bd42-20020a056a0027aa00b0050a6e0ccc54sm9270716pfb.186.2022.04.19.11.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:28:10 -0700 (PDT)
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
Subject: Re: [PATCH 2/6] ARM: dts: bcm2837-rpi-cm3-io3: Fix GPIO line names for SMPS I2C
Date:   Tue, 19 Apr 2022 11:28:08 -0700
Message-Id: <20220419182808.176200-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-3-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-3-stefan.wahren@i2se.com>
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

On Mon, 11 Apr 2022 22:01:39 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The GPIOs 46 & 47 are already used for a I2C interface to a SMPS.
> So fix the GPIO line names accordingly.
> 
> Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO board")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
