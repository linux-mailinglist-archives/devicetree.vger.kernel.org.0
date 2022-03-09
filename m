Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 263514D2D09
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 11:22:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbiCIKXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 05:23:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbiCIKXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 05:23:33 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E30312ABF
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 02:22:27 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id qx21so3783754ejb.13
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 02:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2odQ8BcT/g6/viXEFNUwFkg3kRO03GusUQree4/idl4=;
        b=gB1D5iAHstQ4FMKJ2Z+OdC9l9VGqi3TNU5WVlVv7sKQiNF7WpP17gkR3SmIQGhNB+w
         GwkkXj77UIzJlez82vVFsMrYJx/k+Mrpn1iq34D8MHg6h7ChNsyCPMPpyzt+0ewkTgcd
         gqRtFv46x7tXCBpEQEOLGqY4pAtW3E/i9kpMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2odQ8BcT/g6/viXEFNUwFkg3kRO03GusUQree4/idl4=;
        b=O+9KrG9rGCH1ztCvsrK/vsLw9avh1HcxQupujpdTP1DGb1FWbk2riDPloEtsHIAMbv
         iW3vDuv2EOL7LyVWIwm3UlqNhaqMcLWpfOJ6gYk+UxdYF7XE8XW6j/Cam5AGcjRoxWfR
         hBufR57mD5zfE3mBAM4EF1+2DNNZBrn6c9Yh5Z3AG7x57zpYO88LYOGZutYr6aNMLMHC
         pJ3EozQrps4gJdrcTbP9UGKeDRdUT+KcOWgGLdakxy1oXhlUe5HfC+NlS5kJFLIP21N0
         Mi/QcvJxaJ/+0hLCk2wu7AN3h1Bn/nZ1vaLHYXlw/jpZfSkmXQQE0ZPPfNVzMLF+XYX9
         AUjg==
X-Gm-Message-State: AOAM532i9iFa1ybHIKv1mcNVgpm933IWtSBLriVd4B80RPoN9W3sKJrN
        BGLbcbyHeXmnsh4uxXK3+kLILS2YPyDyxA==
X-Google-Smtp-Source: ABdhPJzBaINjSnu8B/ToCFyoFs9YNPJVA6iciWRJZrKtEPPTUfNw5yM+5A3knsvtfaMxjamnUP8JRA==
X-Received: by 2002:a17:906:3a55:b0:6ce:c2ee:3e10 with SMTP id a21-20020a1709063a5500b006cec2ee3e10mr16118362ejf.210.1646821345411;
        Wed, 09 Mar 2022 02:22:25 -0800 (PST)
Received: from tone.k.g (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id ce12-20020a170906b24c00b006da824011eesm547229ejb.166.2022.03.09.02.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 02:22:25 -0800 (PST)
From:   Petko Manolov <petko.manolov@konsulko.com>
To:     linux-media@vger.kernel.org
Cc:     sakari.ailus@iki.fi, devicetree@vger.kernel.org,
        Petko Manolov <petko.manolov@konsulko.com>
Subject: [PATCH v5 0/2] media: ovm6211: Adds support for OVM6211
Date:   Wed,  9 Mar 2022 12:22:13 +0200
Message-Id: <20220309102215.891001-1-petko.manolov@konsulko.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v5: Moar cleanupm, adds the ovm6211 bindings.

v4: More unused header files removed, use media_entity_cleanup() where necessary
and some other minor cleanups.

v3: As usual, not everything is perfect, hence v3.  The patch set is now merged
into one big patch, redundant code was removed and the end result tested on the
board.  DT bindings are coming some time later.

v2: Removes an unused function (ovm6211_set_pix_clk) and this patch series is
now based on media/master; Didn't receive any comments about the RFC version,
thus i assume everything is perfect... :P

This patch adds ovm6211 driver into the staging directory.  It also creates
media/i2c entry, where ovm6211.c lives for now, to mimic the generic media
source tree.

Petko Manolov (2):
  media: ovm6211: Adds support for OVM6211
  media: add ovti,ovm6211 bindings

 .../devicetree/bindings/media/i2c/ovm6211.txt |   49 +
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/ovm6211.c                   | 1018 +++++++++++++++++
 4 files changed, 1078 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovm6211.txt
 create mode 100644 drivers/media/i2c/ovm6211.c


base-commit: 2b891d3980f6c255459d0e1c29ce2152ec7cf678
-- 
2.30.2

