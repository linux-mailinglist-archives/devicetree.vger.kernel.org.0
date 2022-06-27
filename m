Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB81355E04E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239618AbiF0R1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239196AbiF0R1o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:44 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3F7C13DEE
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:33 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id r1so8767859plo.10
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=94XDn1XGSZ7un6jfYqJlqomLFBmV/TzG1op3bYpW6J0=;
        b=pQGP9hXCx0xuP58PqI4L6MmQ+hctpBs+pV4Qu9QyLyyeI5oP3tn5PDx6qpU+4mvGHL
         01s7b5kLS4fzujnHouwVEOBD3NojRIa7FzuyVRVou0P4xBX9sKJ20wNPkbCNSbv46if4
         8ZSt+qQZVWeeXK3+5ovrgIh/znepc+ORxia2oqSJCWWQf+BWMYA5sQzR64ok75NRavin
         WrL+k4E5BBS/stndjgQMeZ4ptHPOJLD8wqjQB//ZqHcceCM5EXNDgZ1fuWt0bTuDEGSh
         7COqb52PKAgdjcBnpFIXHTmBIjSUzNJhx3mNZSlMRJzw5e+s8a4lh5Mrj+ic+5Eo+OmW
         2yXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=94XDn1XGSZ7un6jfYqJlqomLFBmV/TzG1op3bYpW6J0=;
        b=2XcHcsJJh70imS8W8Cb5uaq3yAauq4KHlETn3upljMp5KKgOd+v5KoJclev+qJtwto
         /JxBMz6j4JyyesPNE82Upyzq/7RJkqgk38ae7OC2Epw8nD3zDKozYUrOJnOAWLBzPhIw
         MobNv1mJRKMfmBud0ZBtS1vfEukUy8K9Mv/ZGabAAly4AuwYdpQDbOiuyHt2ZixlR7ds
         paWN32rUpgwh7xjLR9NcU8PUcUl2PLNbzxK3PVqxRkSOpAe6NaWOz764oiY5mlpLqAZW
         qiWpd5cJ6uKqkAsD1NVANC4klIBRXovc17Z4PG9y7kM31/ku3Oue5HhAH1N4/yzeP7n8
         Bb+A==
X-Gm-Message-State: AJIora+tZgHwNxEb1zc/B9AX5vAoPa+JhZr4T33torjTQvazVyOKJEWA
        6TDbvstIDnsLKC1QOdyFyr4=
X-Google-Smtp-Source: AGRyM1totWZH5nd2Q2btmPpXSxXCmvBPS7Hd9q1gd+O33o9QQNwaSBCanZxJYbs9AChK1wSRwl1yCg==
X-Received: by 2002:a17:902:e889:b0:16a:6c64:aa50 with SMTP id w9-20020a170902e88900b0016a6c64aa50mr452094plg.142.1656350852993;
        Mon, 27 Jun 2022 10:27:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id t7-20020a1709027fc700b0016a2a8cc4b4sm7573121plb.140.2022.06.27.10.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:32 -0700 (PDT)
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
Subject: Re: [PATCH V4 05/11] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Mon, 27 Jun 2022 10:27:30 -0700
Message-Id: <20220627172730.2173050-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-6-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-6-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:13 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> A new compatible string was introduced specifically for BCM2711, so make
> use of it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
