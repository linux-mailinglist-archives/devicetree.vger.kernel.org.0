Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E93CC677FD2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:33:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231626AbjAWPd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:33:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbjAWPd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:33:28 -0500
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03CCD113D8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:27 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-15eec491b40so14268918fac.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oOMdJJ7tO8g5HvvXc6ajeDiZ3m3enYXQGn3XKeh4WI0=;
        b=H3zDW+X7s4GrSEkOXPHxnWYms/gQgjvuK02PB10V8mML6AdIY4lxxBqpNnkgZKvk1j
         5/Do9SDQuElV+O/e5BMoFZUr8to+7/gei49HuFjvqVIgmOmZOwt5CUP+USWEUFgf2N5l
         MxYzr9tL76IzjkOOtGQ9C0Wkh+2vhP4JN71L6eW2Qbgc76QRy3QtQYW5QNX2r0f/vBGe
         LkyX2Gd96ErsiqWRAUROrn0GDMzTJK1gIOEikdiZ4nDvwuuIiTDrmMEF5ceKlg+gaKpy
         a4Iaqv/CHmrVmXQ+loyW4HMgMgwb+JLrhhkpQjq9OL8m6lKQ85awxXOkUYhlj9w2rCup
         6mlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oOMdJJ7tO8g5HvvXc6ajeDiZ3m3enYXQGn3XKeh4WI0=;
        b=cDzc4m5ZyczvLSGuNx149tFiCKFn9iFv8DxqYWsawbq1mDu2KdM942EYkkDamzWLn4
         rHG6FX1nhR6lZWPn6hX7k9PJulkHAt8nM339YfjU2Er/QX2DN+b7elnpyDOfBC+Z7sG8
         M+yJlGxSv+tO5Nn6Ms8+nhmxNTa0Mi6jSe4zOlTw/oMWJlAHGC55IhDVNuoLDLz8th0h
         K+sHr/fVSM8sE9bi4PHIAVKYnys6+qPCJuuxYUfYy1Q/AgweEFYgxzOsjSuB9j26LNHi
         IujplyWomQ4h7m9+pf4n0ayP6TmFpLaHDlz51aXopYLTJiNxSCGEbJxvFQvFCm2keDab
         MZqg==
X-Gm-Message-State: AFqh2krVz7c0I7ojmot8PBv+scHzWkn84e2DQEcfF2r9tNzk+P0/gQ6T
        rMhPLSj/Et1ytS5NSyn1m+o=
X-Google-Smtp-Source: AMrXdXsSx/1HctSWiZWDWFHYaTiZF40ekgjRm6MkVVZWtWC188AQ/W7ESw6clYKZkXLD/01UU3uucA==
X-Received: by 2002:a05:6870:9a07:b0:15f:bcf0:86c5 with SMTP id fo7-20020a0568709a0700b0015fbcf086c5mr5814078oab.56.1674488006238;
        Mon, 23 Jan 2023 07:33:26 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v1-20020a056870708100b0013b9ee734dcsm25459182oae.35.2023.01.23.07.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:33:25 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] drm/panel: Add Anbernic RG353V-V2 Panel
Date:   Mon, 23 Jan 2023 09:33:18 -0600
Message-Id: <20230123153321.1314350-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Changes from V1:
 - Split redefinition of CMD_UNKNOWN_C6 into separate patch.

Chris Morgan (3):
  dt-bindings: panel: Add compatible for Anbernic RG353V-V2 panel
  drm/panel: st7703: Rename CMD_UNKNOWN_C6 to CMD_SETECO
  drm/panel: st7703: Add support for Anbernic RG353V-V2  panel

 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 102 +++++++++++++++++-
 2 files changed, 101 insertions(+), 3 deletions(-)

-- 
2.34.1

