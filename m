Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D58963F936
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 21:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiLAUhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 15:37:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbiLAUhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 15:37:06 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B101BE4DC
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 12:37:01 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1441d7d40c6so3501812fac.8
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 12:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E1Ndzf/70Cu56cOOMzXW9Zrj43ga/wYG1emkxeajc3g=;
        b=JamvVIVtdsoGlM+BOqJP3KKa4sY9Z5rQ7De0WenRyizpkYEEk4wCg7ZKuy6I54HWN6
         FuTkSDTgoeLu0Fmg2HK9D5JlBOaJ5KXePrLfca0sM0oUrbrttBiY2TUTcEWsQpVNtyhw
         dP/XMM43cvFfbuvw0RX2HgAWqHvc8sHpZvIJ33Gzyd5p5AuiboDAbzG+808agDoAG/Zn
         kUsbuEnzuNddVggXtQs2gPexNdGMI5mZDvEz02VdjoJaOOjbrJmtkxreL/xGKpK3oLXB
         qhjTDTIj8ndLca9KmLe/YdPnUtNALgG20ijUBOpQos89OpeGmaFSzwDYEi9TN9OvMrNY
         Wilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1Ndzf/70Cu56cOOMzXW9Zrj43ga/wYG1emkxeajc3g=;
        b=VKCTGDX2ibRPZSKbdefQ9jf+kUnab/S+0SwTF9uazQeAFt3JF5hWcL49HGD7Hpcsax
         ggPzvAVpbT5ajYqXknuz9FeXWbAmRC/euV/wSWK7PdtmX5tHPOJXeauWQnmbzmHAg/DO
         v/XhG/GputT69HVWWJ2g7U6SZvFTzQPO0+eYuNGTYgPoZERkhxaJDTQMIrf4w0w9A8ln
         0oTWyNM2yT5lVKHEnSLra5c+yHXBu4YBpweJlilr2Yt5ipGV7FMFZcNSo6WJEGn6NSuT
         SZ+gskWPBkRhrf36MO3DpcP+7ZHxE7qxrrXhxsm7aBcmiqe7dPGgkqGqto6nivCkTKp4
         5A3w==
X-Gm-Message-State: ANoB5pkaS5zXdG3a2sg0rDK9nve2XHcxUsgcjgt8Gnt9iiDQtH/LA2pQ
        mv5Q3J6II16eirn6lQ4IMUI=
X-Google-Smtp-Source: AA0mqf5Fiavuu01H6gA0wqobdOMOd9vhUDu1vgG+v78Y6oCz9iMPw8upmMYGBTKyEIYiRQMuK7OLJA==
X-Received: by 2002:a05:6870:a44f:b0:142:87f4:4140 with SMTP id n15-20020a056870a44f00b0014287f44140mr30818833oal.235.1669927020321;
        Thu, 01 Dec 2022 12:37:00 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:36:59 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Miscellaneous fixes for Odroid Go Advance
Date:   Thu,  1 Dec 2022 14:36:51 -0600
Message-Id: <20221201203655.1245-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a bunch of trivial changes to the Odroid Go
Advance to clean up some errors in the dmesg log and make it
easier to support with alsa ucm.

Chris Morgan (4):
  arm64: dts: rockchip: Change audio card name for Odroid Go
  arm64: dts: rockchip: don't set cpll rate for Odroid Go
  arm64: dts: rockchip: update px30 thermal zones for GPU
  arm64: dts: rockchip: Update leds for Odroid Go Advance

 arch/arm64/boot/dts/rockchip/px30.dtsi        | 33 ++++++++++++---
 .../boot/dts/rockchip/rk3326-odroid-go.dtsi   | 41 +++++++++++++------
 2 files changed, 56 insertions(+), 18 deletions(-)

-- 
2.25.1

