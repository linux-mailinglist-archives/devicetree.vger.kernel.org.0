Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D0614B305D
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:25:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354064AbiBKWZT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:25:19 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiBKWZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:25:18 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D71D4C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:16 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id qe15so9274107pjb.3
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TyiRNPXzYuufNzc+eJL9yfq+WQejmY0nq5p2JKgES3U=;
        b=LFx9jruK9x49CkTy2FO+U+q03Lchcp/iDi5AZdP84lGfOdxLhPIEdC/FVtaMFo3jKk
         Jg2TI5YQ6vmeOMjMgfRj4liNYXJbdhQ+r1akrYzOCGDMQkfmkghoTWFoHmtSmefCWXFi
         4K1m+qNQLwFNhqAt3LpfISLKL9y4ekGiHyRO2ms+H4w+ClSEWjTjUdRbpWXqOz3mSQLq
         uwa9WuCDiNIrZvVS7F4+6hAsY77w6v98gqDPRn7cwYmPgE5gQauoN0roNa5D8s2NBKBI
         UkiQ+iA/EXBcKAnYd3AHzbIAoDwAqQHSSlIw8iBHbFW9iERHtOj2L4LLypKombiYVhta
         RRQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TyiRNPXzYuufNzc+eJL9yfq+WQejmY0nq5p2JKgES3U=;
        b=pGhmszqm5Zgo1XHwTLf3tWUvUFZbp9mmJbm1+xn3Aof+fqP1LwqWo9WqtMpa4cwJ2L
         0BFFhseH156AR6Ti8Ci4VuRc7KZ8dvipvykp4x3NjHydnf9TEqYdXqDKyJsVyOlXFu+P
         uqrOEYVUR1QouGxrkJ+Eh18aOB1ttIO/zmLfaRdVJoH+l7OzarkgGIiF71OxBTUPnw5T
         O4ub9rejc5tI3u+RvP8rUJItkzb6eiuY+n5Hdx+1i1WHRgv4BU3w65Ij5V9CK9/wAFlD
         laNeB69X9ymFqa4hFkkAI14gPrUhnO6FgVjItlCA/u3/OeMSCwq8Fg/NkItK7Yfba2q6
         ud1g==
X-Gm-Message-State: AOAM532MVOXKuwA3D0aqd+JAFKEIiSGwtG7C27IvXzR3E0jPcI07hCZc
        GBsplmdN71FYmPo11dob9f4=
X-Google-Smtp-Source: ABdhPJx1I7TYhuDCZSSIiQRrjBpcpad2P8E/J+ZRSwaVKzIJa0BhvqVvAEfvl6CZE/mUUbA66R4eYQ==
X-Received: by 2002:a17:903:186:: with SMTP id z6mr3628161plg.47.1644618315655;
        Fri, 11 Feb 2022 14:25:15 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id n13sm6288513pjq.13.2022.02.11.14.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:25:14 -0800 (PST)
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
Subject: Re: [PATCH V2 2/3] ARM: dts: Add Raspberry Pi Zero 2 W
Date:   Fri, 11 Feb 2022 14:25:13 -0800
Message-Id: <20220211222513.1145210-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1643736467-17764-3-git-send-email-stefan.wahren@i2se.com>
References: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com> <1643736467-17764-3-git-send-email-stefan.wahren@i2se.com>
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

On Tue,  1 Feb 2022 18:27:46 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The Raspberry Pi Zero 2 W mostly bases on the Raspberry Pi Zero W with
> the following differences:
> * Broadcom BCM2710A1, quad-core 64-bit SoC @ 1 GHz
> * Synaptics BCM43436 (reported as BCM43430B0) IEEE 802.11b/g/n wireless LAN
> 
> Contrary to the Raspberry Pi 3 boards there is no GPIO expander.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
