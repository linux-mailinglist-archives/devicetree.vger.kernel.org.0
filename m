Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FE3D641A2E
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 01:51:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiLDAv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 19:51:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbiLDAv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 19:51:56 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E055BC91
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 16:51:55 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id h28so8169250pfq.9
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 16:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rAIdxB/uhWaqluy9p1yExqxU/j3lY8YtbD1rShEtynw=;
        b=cKMxtbJnpIJEqPHXyzAbx2pJ5Ikfa8MkbHc9Jm0g8oe9tiIw7/3lE+FufaAtWhDSYa
         5huOrqN2dzcWyMfWIao7Oi/6tu3OLdn5WlEreeS4YsvxwunaKVDgMJFVe7zNi9AdqBWB
         VkhcWF+myAhT6w3OthUYkb9Bzpf/RuNmB2ofg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rAIdxB/uhWaqluy9p1yExqxU/j3lY8YtbD1rShEtynw=;
        b=Y+T98kKdzVuJUGyehZATBSbVkNDpbfrby7OcqpVbJ/M6WfcVYMmj2BwKlLttNvRkMx
         PG0Q5Ufs5J9gCE4rXqGxUJoTV2Ik0t4vymHp5J0Uviti+hswL8tU+Rrpu3/GD/0jLp4U
         AKOsROkDa1nUsZMaluOVtaXCv1ZtiP3UTqEI0nDmg9FckPpbfXlY6M1vq4ZrbHBKmZgr
         My13ACJU7C36XA0X8ktyt1b7NeYKqqHC+T5llx/mV/j1JVyQCfq3d/jrEW7deWkZWYEh
         083fZ8U2VrXqJ1wJSCjc4jWoSo50GUV7ixpKH6IecDTVdbrDxr347V81A/0r9qWfAj9O
         Jr1Q==
X-Gm-Message-State: ANoB5pleoFp3xQRl8Yvt6hKHXUUnDUazk7+WJD1Dpl1idFc8XFFz20Xg
        nWoD2pYjohIgx3L5AbFqYe73kA==
X-Google-Smtp-Source: AA0mqf4Kt49GMYnoKU8LCS8WR0zqHaeAoF29MwClPOxS6l1UBCVn1hOk6L+c8RK/tabnPMtMqc+/QQ==
X-Received: by 2002:a63:f346:0:b0:477:b53d:19 with SMTP id t6-20020a63f346000000b00477b53d0019mr46174630pgj.166.1670115114419;
        Sat, 03 Dec 2022 16:51:54 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id 24-20020a631358000000b004393f60db36sm6058977pgt.32.2022.12.03.16.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 16:51:53 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Russell King <linux@armlinux.org.uk>,
        Lubomir Rintel <lkundrak@v3.sk>
Cc:     soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 0/2] ARM: mmp: PXA168 timer fixes
Date:   Sat,  3 Dec 2022 16:51:15 -0800
Message-Id: <20221204005117.53452-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series contains a couple of bug fixes for the PXA168 timer. The
clock wasn't assigned in pxa168.dtsi which eventually resulted in a hang
at every boot after the clock was disabled. Also, the timer read
function wasn't waiting long enough to capture the new timer value,
which resulted in erroneous high CPU usage percent being reported with
CONFIG_NO_HZ_IDLE=y.

I don't have any other MMP systems to test with, but I suspect the timer
read delay problem also affected them. For example, the OLPC XO-4 kernel
disabled CONFIG_NO_HZ due to incorrect high CPU usage reporting:

http://dev.laptop.org/git/olpc-kernel/commit?h=arm-3.5&id=5bd2520f8f51fc44911ec7a86b84f41a1f3e384c

CCing soc@kernel.org because I didn't receive any responses when I
submitted these last time and was hoping these fixes could get merged.

Doug Brown (2):
  ARM: dts: pxa168: add timer reset and clock
  ARM: mmp: fix timer_read delay

 arch/arm/boot/dts/pxa168.dtsi |  2 ++
 arch/arm/mach-mmp/time.c      | 11 +++++++----
 2 files changed, 9 insertions(+), 4 deletions(-)

-- 
2.34.1

