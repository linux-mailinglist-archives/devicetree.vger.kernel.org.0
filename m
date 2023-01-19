Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36F506746EE
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 00:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231129AbjASXMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 18:12:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231130AbjASXMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 18:12:18 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F2F53E5C
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:21 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id a1-20020a056830008100b006864df3b1f8so2125432oto.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i3Jm3hFZNo5z8bfeqahjJFhHVybeUAHAxq92W8HlP58=;
        b=EaOJVS18vr+oAvWemNb4t06wHZNfuo+zezeukYrKLAjLlmNuNm/yCZpJ23iJzQT9tw
         HheGGlVNxT1quWtyiZtB3HlztcM2ktKR/rpLthGr7lV7PxajpY9spwqsbX5PFh8Qf/Rx
         gu++MgwNyNaB1MBr5Kcf/puCxr8bXJ3lbOYdyE9n1CQ+mr+uhafJWqXYEd9hOFnjUtRR
         Sou7oXaP/wKnFYRDI9+0krb46Ed+52S0a6VbiyHUmpFqVnQ1dpjPayBzPUl92LJBWDZC
         ihoE8Zj6w4GjGB3m7SEuinFMUkj96Y9tXlQOs6mMTkxnteEgIWGQE+DqeTsHujWxS4P1
         NE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i3Jm3hFZNo5z8bfeqahjJFhHVybeUAHAxq92W8HlP58=;
        b=NHQ3XShnmGt8FbD3jt9v/njwdyIqeNs06abFJ4Y8N7s+4SCl0F6i3KlRQ3J2Ow6seY
         YqE5v5EeC7Ez5xpoYOkwWRcDcjvmdE33WMZaLZXhkr5q2DyIldROmLJrqdZqyZsLCcE+
         P1ADsNrb+659xHBtKc7+4+ZIf6TD23jdzpCFUi1DN/m8Tl0Rn1A6BmdTUxomFN4YhlSU
         7a+a84vW9mZjSkVDLB/YmMAilVd9JiQ+0hyC3ei2K8ELwZwdk2DDpe4twSySUHEM0L8u
         f4cdUjEzrlIdiLaj7ViCYqmMtxYX7uE/ZBpNZeNQE5auVqgiLCkQ94ICbeiOv9lW4D/Q
         q7Ow==
X-Gm-Message-State: AFqh2kpZtg4+pNMGG1hMPcrHiJu5uj2Bpv4x04aNoWhy/6fzv8r/u4qX
        eBh6cXNZn/UbhImqGhZIgrIIwE7EbNk=
X-Google-Smtp-Source: AMrXdXtPbPBrwtQmEZRjUhoEB1ESAp6Nz1k12sB5atje47H0YyfvQ1Pt7GIagBYN3sSzxcRbm26g7A==
X-Received: by 2002:a9d:66c:0:b0:686:419c:cb10 with SMTP id 99-20020a9d066c000000b00686419ccb10mr4149861otn.38.1674169460911;
        Thu, 19 Jan 2023 15:04:20 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id bv10-20020a0568300d8a00b00684e09b43bdsm9254034otb.13.2023.01.19.15.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 15:04:20 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] drm/panel: Add Anbernic RG353V-V2 Panel
Date:   Thu, 19 Jan 2023 17:04:13 -0600
Message-Id: <20230119230415.1283379-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
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

Add the NewVision NV3051D panel as found on the second revision of the
RG353V. The underlying LCD panel itself is unknown (ST7703 is the
controller IC).

Chris Morgan (2):
  dt-bindings: panel: Add compatible for Anbernic RG353V-V2 panel
  drm/panel: st7703: Add support for Anbernic RG353V-V2 panel

 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 102 +++++++++++++++++-
 2 files changed, 101 insertions(+), 3 deletions(-)

-- 
2.34.1

