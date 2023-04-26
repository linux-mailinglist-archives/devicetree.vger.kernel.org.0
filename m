Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 517ED6EF678
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:32:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240500AbjDZOce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241414AbjDZOcb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:32:31 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F3776A4C
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:25 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6a5f21a0604so5312799a34.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682519544; x=1685111544;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ewicOSm/Md6u2eDxSk7+ZrJEH2xL0s7qttCd7YUUbyQ=;
        b=kPWH7EqBzHgD4AgAXYv4J+ipkQ5fkKnsbupCBPv5XQezBcmJgUvzUFT/zYU0rsf2Mf
         INiNHmQx0yExBXkG726tLzvInhh0Ui6xo26EVhhq+yEjIiJD/5XMUh0Au+D7085n6hUQ
         bw6rGQOJZUZJgPOLp0kJq+NJ/QWGwtrXz61WfMpsJcM9lJsjFjtnEPyVSQK0qy+5OuWB
         UDhaqNY0X2lZ/eTp49OJvnacaNJi9C00dKSrMhzgND6YylfjeUFNgdZwg5XN/fxz7lAB
         lJZYxBuLjd8tQCuxrb0EKpll8hABQVgxCcaGIkZ7S/aIdnc+m+jUzglsrTw+zzY8gUUr
         vJjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519544; x=1685111544;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewicOSm/Md6u2eDxSk7+ZrJEH2xL0s7qttCd7YUUbyQ=;
        b=CfZ7k6wZbFfnH0JXSCW6TUIyBvi3ne/vA5x3c3xkYZ2+/8zhIteItZGgnSdDol4Ph7
         HvWlEprgDGeS+KfWPWakq0f6h1qhzltMJGkSh/adUgwt5Oi5QeDeOk8zFYUP8NkEt89t
         AfLK7AXVLjK7ZrF4bz0yscWQv3EZoowLFBy3GWKfnYjA8yZEdVqN6d8wwoGKdIMs1NnE
         tMSaPZ6IVYviui9lU/M5JuTmKVLgemZdn76G8GRYc0dy75HyL7NKI5SADDtkXx5FpBTG
         CGgJEgO6u22PJf3VcjU22yF+lxNCq8HvtdDEHN7MN+uKcCVoq6pJ6ffDaJRTh9zSqUOH
         fMbg==
X-Gm-Message-State: AAQBX9ctqB7WYZqKw4Y9e2lNruoLx7MAAnK9hVdbxJLHJ8IbGQEcLnhZ
        rntqF57fmpkPxsyGS6rDD+4=
X-Google-Smtp-Source: AKy350Z8JjuE7edVKfQpAUeUeHAnJ6DqTt7NO9EO77LTIs2EHSPh44Bv+wrapiZWsIvH7k/UVVo7mg==
X-Received: by 2002:a05:6830:3a95:b0:6a6:4226:f2f6 with SMTP id dj21-20020a0568303a9500b006a64226f2f6mr7660574otb.20.1682519544585;
        Wed, 26 Apr 2023 07:32:24 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z18-20020a05683010d200b006a32ba92994sm2613502oto.23.2023.04.26.07.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:32:24 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] drm/panel: Add Anbernic RG353V-V2 Panel
Date:   Wed, 26 Apr 2023 09:32:10 -0500
Message-Id: <20230426143213.4178586-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the NewVision NV3051D panel as found on the second revision of the
RG353V. The underlying LCD panel itself is unknown (ST7703 is the
controller IC).

Changes from V2:
 - Rebased patch series (to address removal of dsi_dcs_write_seq custom
   macro).

Changes from V1:
 - Split redefinition of CMD_UNKNOWN_C6 into separate patch.

Chris Morgan (3):
  dt-bindings: panel: Add Anbernic RG353V-V2 panel compatible
  drm/panel: st7703: Rename CMD_UNKNOWN_C6 to CMD_SETECO
  drm/panel: st7703: Add Anbernic RG353V-V2 Panel Support

 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 102 +++++++++++++++++-
 2 files changed, 101 insertions(+), 3 deletions(-)

-- 
2.34.1

