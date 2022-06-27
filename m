Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26E3655C7B0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238592AbiF0R2M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:28:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238433AbiF0R2L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:28:11 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E5EDBC
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:28:10 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id h192so9740443pgc.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j+5XnRkDTN685gCkyCcpRwSnZUHTEV1qz4BY6I14fLY=;
        b=TjveCBcK/UYuMdOs7oLIzgvivY7Wkw/NAm1lMEYrNJN+EiDRmkBHIfsVYcvTINiipb
         bEOJnWjCBQ7gGvG6eK1k6UtfL2y8hoLZa9K7vM133dl4kajxNzWIF5dlGgzW5jxsiWFU
         nXdNv6QxVO8X6QuSpc88i9stfCnNnjLs/NiW6puyfyGMOKMwXBRFfsxXnVRg5MLuTM75
         ZYhTHQDBHmAlruA83uxzp0KFeCa83yGSPI53SZ3V5bq1fXq3H6CYvN7uO+FsTJRnq0fE
         e0dPE+PUz5D93B1t7iZDWSn4hv+P5Ox7/8rC3jBLGB/8EEpou/unYX5AKTvaGIJlC9Kd
         ratw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j+5XnRkDTN685gCkyCcpRwSnZUHTEV1qz4BY6I14fLY=;
        b=eTfSW7ENrZPCNP3ugV4whBYQJfuNK9nOOoyG+13krcn6dJphi5LYT1kDuHCT5XNLKZ
         gv9XwmJhCK9l/ZCSc2iyO48h6MxKg43uuXbijWsIEIgqNCer9RcQnu1KgfC/LZehM58g
         5Cnq6rHLrVmtpQ7Z3JJvQgDEwHR36bWCs4doS0d7h6bfgN1CVOZFsXlKMLxuMwxuCyzJ
         Ed27hjE7ZdJXlLh/AjgLgFmddhYCj5okpkM2A8guN+iJKuVa1CfVgDzhKuNO6gp8tShs
         WFfkXBzoe/3J7iFHBC1GQeCJ4B7hbCHXEEUPjQZhjdRERxSw61NgFdXcC1jbWsqiq3WB
         fAaQ==
X-Gm-Message-State: AJIora+g2pq7iD5CCWY0xRAq9gC5/ltABPXLGpx/eNkvaa7aNa+dmf2P
        Pd/rqnA5yEQGYwbtq6WSMYw4bJMXg0Q=
X-Google-Smtp-Source: AGRyM1sa5Omxu0GmOc297kHlo6fLLEHqqmYi/yLI9yPPA0lP4qmkhOtIcvRo4ddTFA8iHojA5sMFOg==
X-Received: by 2002:a62:ab05:0:b0:525:9105:58c7 with SMTP id p5-20020a62ab05000000b00525910558c7mr12678133pff.32.1656350890213;
        Mon, 27 Jun 2022 10:28:10 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id g6-20020a170902c38600b0016a5f1722absm7506035plg.75.2022.06.27.10.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:28:09 -0700 (PDT)
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V4 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Mon, 27 Jun 2022 10:28:08 -0700
Message-Id: <20220627172808.2173532-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-12-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-12-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:19 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> Bypass power_on/power_off() when running on BCM2711 as they are not
> needed.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, thanks!
--
Florian
