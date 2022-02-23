Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE3C4C1B54
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 20:03:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244090AbiBWTEH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 14:04:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232675AbiBWTEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 14:04:06 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC0F76561
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 11:03:35 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id l19so16272400pfu.2
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 11:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M+ikUS2HXQGSZdemxaJfX0vveKZ/5VeOycL6B465U6E=;
        b=GG7/aPu3rWPLCrcqfX/MtdHF1OgXJCOXAwRiVoJcrxEu1fdnzxPDQI3T5It2uKeMfu
         Xq3t8JExNtHKemFUykYPQ5cRZ/qpX0dT02vKxwZCDebDvAxG54+6sQRqBAZs6xHTB7xT
         zyjbK//LuqfHL11h2ogaay2bS/XLvwLC9Q/eWNnQ5w4MmGVY1qIfXVAizMoBXK+/Ktkb
         3bKtqXNBei0Z1Orn0y7x5sXMHb0DGkUKeD4/oc8VHs+VubXCutNOrdW1O9xphbBdGSvV
         pC8e/dtqH9R8VDCOB5fUt4DWsNbIyVKppYJwuJLS8Bb8UOCcbJUBd91FR92YiYZfGsj4
         XK0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M+ikUS2HXQGSZdemxaJfX0vveKZ/5VeOycL6B465U6E=;
        b=qiDQnRL8CqFL8Ex0kPUJ2huBGTwrf1SPXocLMJQh4lf40LRYAIWlsmNlMoaH2Cdb8U
         jZbcaW512uBLFpeQmW6sRndMoqbN9JbVFyZd6GVeDJJs4JfQ6zDCFQsZTUOHRdTl8mOM
         gc6xVbeLR1ZAbl+iBxxf2KX0czu0lxceWQWaGMT0T5tbxIYQ9ODhYjcEF2Us6MiZJWud
         eeWIZ+MfS4anY9QEgSkQIKeQJL8gMWCdloT843VSgd93v4RspDc3Att9i5uuNaCaVrWb
         cy0zWilL3LzeOiSvhLIds4ktiyKpU/kc3dVF3z1yEAfASmqFCYI89CwzHhvm6nR9kScR
         IIkg==
X-Gm-Message-State: AOAM531GI+7EFGm5zjZNy076UqcEP6tEn5iurskoL3gfHsuWqlNNaXBK
        OuXf2QkwSqGkgkYElhSPrEQ=
X-Google-Smtp-Source: ABdhPJzIOAHE404bN7qZ0z4kLUHr0Uo2twhFBe+78QJPo4jSfLDYpDIPmIQ+q7rYcfgyKoomzbUDyQ==
X-Received: by 2002:a63:e744:0:b0:370:25a8:bfed with SMTP id j4-20020a63e744000000b0037025a8bfedmr812276pgk.432.1645643015401;
        Wed, 23 Feb 2022 11:03:35 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id p2sm215516pjo.38.2022.02.23.11.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 11:03:34 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] ARM: boot: dts: bcm2711: Fix HVS register range
Date:   Wed, 23 Feb 2022 11:03:32 -0800
Message-Id: <20220223190332.3791516-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1645272475-4096-1-git-send-email-stefan.wahren@i2se.com>
References: <1645272475-4096-1-git-send-email-stefan.wahren@i2se.com>
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

On Sat, 19 Feb 2022 13:07:55 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Maxime Ripard <maxime@cerno.tech>
> 
> While the HVS has the same context memory size in the BCM2711 than in
> the previous SoCs, the range allocated to the registers doubled and it
> now takes 16k + 16k, compared to 8k + 16k before.
> 
> The KMS driver will use the whole context RAM though, eventually
> resulting in a pointer dereference error when we access the higher half
> of the context memory since it hasn't been mapped.
> 
> Fixes: 4564363351e2 ("ARM: dts: bcm2711: Enable the display pipeline")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian
