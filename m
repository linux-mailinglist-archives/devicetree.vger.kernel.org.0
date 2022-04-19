Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E16A507950
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234867AbiDSSiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357488AbiDSShf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:37:35 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506824E388
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:29:09 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id s137so24906412pgs.5
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V3T8OEv3+9UCPUAV4HePdqnlpBuz6HHAUg/FVfP4RJM=;
        b=V0rNvk/wnWYdllmSVPZdalU2z7Dssxp3E5BnURyBoQze+63YTqt5DS0A+CQbEhxHa1
         o6PqtnMSRQussIFWpRo17I1P0hyiVbIesrE/f6oyzt3KXtaRxj9BuGe2xX/cyb/2rIDt
         rO0NOXVdu/pyntrEI9fIf5aXdO6iGxpd21WrDijaD7eREAZZXMXEZRkiw3OTCxQjV+x8
         0JzZDgy7PuWmyJpe/jzBPkX09X4vCja7okh9Z112hiEWhECmQoUL/E+DxZh8TpKwSBJD
         PSSK/17wDxdbmfN1rBXszV7yBgDTOS+7/BDiiU+KupGDu9JIgFvlpL6XdB4ArsASUd8e
         DPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V3T8OEv3+9UCPUAV4HePdqnlpBuz6HHAUg/FVfP4RJM=;
        b=f4KVe3ffYkfnf3R18e9ZNywD0dtnXumsa5XsmOWB5wHcFz/GN3AF3foxgfgal8e5w5
         LGoSUW6oyWDA028zodgX1RRrbzXQcM/zMMV8ERbXR559SwmQHwDcBCRzhAa2lKiV/X0Y
         KSyqlnD0BjVcSBVOzvzu0geb83PB8yP44EBApZOGMSR8ae9YvGWrVkzFMJ91Z43ODTou
         SxVF6ANWtPoiIrRhgWQLIDy4gIuWBtk4u246/DNKDbqi5rXxQRVsNOweDZYRsmnD4qq7
         gs/7IbVncW9j79idenuhYwlBUu1p68uYQsO75jTpCqOibOdKY0RUL8D64TpFyeCilrgR
         Msqw==
X-Gm-Message-State: AOAM530qemU8W9HDxwBN6o8qk1psg+KT2bC3ewOLDaXntnXNCqEQRR9f
        TV6StT11zIQbL1Y6obfRv5U=
X-Google-Smtp-Source: ABdhPJzkL9v4zXLFNKhTwl4lydobOIwqTOu4f2WLo69SDlVtoCDUM7T7ffn3F7OH6wsvnfe1Uf9RuA==
X-Received: by 2002:a05:6a00:234f:b0:4fa:f52b:46a1 with SMTP id j15-20020a056a00234f00b004faf52b46a1mr19288846pfj.32.1650392948822;
        Tue, 19 Apr 2022 11:29:08 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id c17-20020a056a00249100b00508389d6a7csm17562188pfv.39.2022.04.19.11.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:29:08 -0700 (PDT)
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
Subject: Re: [PATCH 6/6] ARM: dts: bcm283x: Align ETH_CLK GPIO line name
Date:   Tue, 19 Apr 2022 11:29:06 -0700
Message-Id: <20220419182906.176640-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-7-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-7-stefan.wahren@i2se.com>
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

On Mon, 11 Apr 2022 22:01:43 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The GPIO line name ETHCLK is not aligned with the other signals like
> WIFI_CLK. Recently this has been fixed in the vendor tree, so upstream
> this change.
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
