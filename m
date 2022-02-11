Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 665ED4B305E
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:25:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234605AbiBKWZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:25:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242658AbiBKWZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:25:29 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62141D4E
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:28 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id x15so16217130pfr.5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1d+w4SSqS8Y2tOHARM/ajphQrcoSLUxKeD6AXDHhS/0=;
        b=YsCS8FDt52cOk5ekqGIBfuEfqZPNtw7TI7w8dio7U2tV3o70vw/jXDwCeUAkODLYMg
         thG5clo3vOPdI0Adv9CnodVEd6x0GM+MIPvyg8Mfq3bCOg2SANkz3R0oNwkuLx1qKLvp
         gSeuLjO7LOPk4sQqdkLIuabmGXw6CBpDPHaqPFMDDOkzYUk/mokqAFen4AIWK6LPMmuM
         9XWTF7SKVRolhq39VJX+IcjbvfEFZEarW8nQimZk+9aV6irw2WONIhKy9gbiXtKqh0bE
         eD9BBrwaBDx5kLZ4X+wiZCFXu1ThWyXi8dwk5J6ydHVTX8WYPAWriivbkNHMaZv3mMPk
         O+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1d+w4SSqS8Y2tOHARM/ajphQrcoSLUxKeD6AXDHhS/0=;
        b=QiE4/m2oYIXhghSwpkGEooeL9oEWn++042yjGHHLxqlKVR93nllwf2WORFiL9bjgSU
         WRkd5lpF4x6eUPFaQBjX6zVfOC0WNA0vi6mjlnv92kMU5IebfpK2vx4e3wAJ/+3p4aFd
         2wqzL7JWXL0dO7a1Ue7TKv4IjyCYBRClpUtBu0J2NMN440bnCSjd8ixCH4PAKlQSVKvh
         RIJlYh2EG6bgHkFf3VH6U+8gIoXGOQ0ZZ81sRXkf1rR0Z33SG6ZwJCph+VLG/Vzz+zob
         DuLVDF+jIRz/Do1YXwUjkIN6biezQfbeAC9XttR4OXwIV8usQJ/CWfwYEdcA3EE9MOr/
         OP7A==
X-Gm-Message-State: AOAM531rECS3NzaviG2CclSz9Ucilu2R8LcJ7tolaPZSHTw6uyz5rwv4
        pzQjx9YIQL3tMp8sjfxxZ+Y=
X-Google-Smtp-Source: ABdhPJwPmCYa33zfHeZb+o5jytoQKfT+eQDK2CrUyESxvccaxoutkNfDdcvsoE3aEXK+7Xq9ovXrgA==
X-Received: by 2002:a63:88c3:: with SMTP id l186mr3056432pgd.326.1644618327900;
        Fri, 11 Feb 2022 14:25:27 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d15sm27521444pfu.127.2022.02.11.14.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:25:27 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH V2 3/3] arm64: dts: broadcom: Add reference to RPi Zero 2 W
Date:   Fri, 11 Feb 2022 14:25:25 -0800
Message-Id: <20220211222525.1145344-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1643736467-17764-4-git-send-email-stefan.wahren@i2se.com>
References: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com> <1643736467-17764-4-git-send-email-stefan.wahren@i2se.com>
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

On Tue,  1 Feb 2022 18:27:47 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> This adds a reference to the dts of the Raspberry Pi Zero 2 W,
> so we don't need to maintain the content in arm64.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
