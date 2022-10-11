Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2530F5FB0B2
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 12:47:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbiJKKrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 06:47:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbiJKKrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 06:47:49 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0733B8C457
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 03:47:47 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id a67so10164174edf.12
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 03:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bm0vCUvRXUXTyPVG9rvtYJqDscULcDdbAZsk07pw+2w=;
        b=XCUnxajqQljKqLb2FP32MTUIhwkvknmybifA0uRJFNKIYtKYH/Gd3+ImmaPri98VBS
         WqzjDq1+O0POLeP0bBXldSD0zBOPmrTenK740BgQYqtqdD9KVF6YpaHJNHkln5nAfw6g
         LOaUCJJL08lwbMR00kKLrIy8AL5MhRHSJzHn0RKtRVg0/VTExdvjfe8gpz7b9GZDOxaP
         B3awjICHjZAZ0hXQEtgUGiIkha/c+XcmhB67YVqoNgmz09Ttc75e3Atb1mqizlw4zMzU
         ttg4HcVqgN8KoSd4fzmkrpsRYpW5YMmibs5QBR3odsBC+CQ3NlX4A/xQaHqLhpS+KE8z
         iTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bm0vCUvRXUXTyPVG9rvtYJqDscULcDdbAZsk07pw+2w=;
        b=QzBsAZ/CcD4e6dAEMi5urKNaZWNYacA5KQXLHtFK8fWkVp6M3s83MW0jQra0jewu8H
         dG3lWpOWHuSFWomfMUg15GIStHUhkvUWZ59D7bMDyWs5bCOUsQ68wrMxncnaREutPyTC
         D+2JJCZR0scohv1YKKlHbUFen2z2PJFDadRLFmPbenY4GOHYXn0yHPj8PnLn5eL7dY4m
         DBs4tOdbkjb6IBUaH8f/NuDv2oFLUgmkDqs2McDcbzwUvzsiXaQaPtljjj1LopfRzwCW
         bZbzTYLFTdgseZ/IvRJnlaU8aIixaKVNHkkcSXlLFvTwpAwie3z5BgqY6N+2vT0Fj4b7
         Ut1w==
X-Gm-Message-State: ACrzQf1fFgHf63Cxy9VAGCzd/P3ooSOSZhZ57XgTLzOcNxPjBCMbXHtK
        njOUmDj4zPS06v04s3RTxM0GI4cPq1QQXKh9
X-Google-Smtp-Source: AMsMyM5/D6rPX8LK9LxJ5BGCLc9jZc1399KPD5dP8bLjM0/WJX5PlwEzbZqhR+4a71FmqG+rnQHL4g==
X-Received: by 2002:aa7:d5d3:0:b0:458:814c:6d57 with SMTP id d19-20020aa7d5d3000000b00458814c6d57mr22456276eds.186.1665485265305;
        Tue, 11 Oct 2022 03:47:45 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id mf22-20020a1709071a5600b0074136cac2e7sm6753081ejc.81.2022.10.11.03.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 03:47:45 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v2 0/3] Add devicetree support for max6639
Date:   Tue, 11 Oct 2022 12:47:36 +0200
Message-Id: <20221011104739.53262-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These patches adds devicetree support for MAX6639.

Changes V2:
- Fix dt schema error.
Changes:
- Add fan-common dt schema.
- add dt-binding support for max6639
- add max6639 specific property

Marcello Sylvester Bauer (2):
  dt-bindings: hwmon: Add binding for max6639
  hwmon: (max6639) Change from pdata to dt configuration

Naresh Solanki (1):
  dt-bindings: hwmon: fan: Add fan binding to schema

 .../devicetree/bindings/hwmon/fan-common.yaml |  80 ++++++
 .../bindings/hwmon/maxim,max6639.yaml         | 116 ++++++++
 drivers/hwmon/max6639.c                       | 255 +++++++++++++-----
 include/linux/platform_data/max6639.h         |  15 --
 4 files changed, 388 insertions(+), 78 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
 delete mode 100644 include/linux/platform_data/max6639.h


base-commit: 0cf46a653bdae56683fece68dc50340f7520e6c4
-- 
2.37.3

