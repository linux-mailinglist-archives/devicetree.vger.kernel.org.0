Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED16166A2EF
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 20:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230264AbjAMT3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 14:29:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230312AbjAMT2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 14:28:49 -0500
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C869892FC
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 11:28:30 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id j15so14397439qtv.4
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 11:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sv7SyVCWJXYauSnplyKPw2WIblH8Gd7PrFkz8FBMgHI=;
        b=BxMb3OS7dvhdymFMBo30wfAISAiO3Uiuf4f784iYUv5pn/da8DASsWzGp5G61Kqp/9
         bnqnOJfrw/qRhk1Y5UeEctO1J43qgnj3iXiHo4hW/1hCRtuqOiO0jrSRnb56nBsp7BMN
         ZOiDyOipFEzdh0VcCqcGJODp5FykzFrkVo4oJenpV1PaBYH7vZo+43KkVwRoSgE4iWQV
         HInWVBLPG73cPUom5itmvRW9PnwlvoLhIUvRsUl9qg7R/FIJBOKdIIWsqb6ScUNy1kpa
         x2urZBlyTS3bCFiiy+DwpywnzYjqWyImLmSUq06HVfQPWF7AOGGXZdgh9ojSHK0t4B6c
         pMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sv7SyVCWJXYauSnplyKPw2WIblH8Gd7PrFkz8FBMgHI=;
        b=LH7LjGQbN60zCG7Zuvys+xZWay/m6JOgJ7SCicpJsLZSDw+DEp6Q3sLv6+QQ6jTjlK
         UgynXCzs0jXCE1s5DXB+VxnOKTOSvZGjmo9FfLF8HnRfRrAY+d6kfj3Kbmsf3+DiZ0Ve
         Vy3VXAaqhXJkVObz7dAEb+VzMIlnWP6TB6bWuPnyLCMka8JKIsJlMsLLFVV/sYj9Rafe
         OqtNg4kiV5zng98JO10d2XseDMUFhO/M2I4GoyobUWvxgpF/F3D5CQSIkS0pMTuNxwAt
         7ht/xY5IGzok2SL64g9WVdC9HI3xKqEDmG8u4Dd+HlywWAuoY5TDuiE35nniViKj81R5
         cfEQ==
X-Gm-Message-State: AFqh2koy7jkDFMdosQKfptpcJqp6apDrbz2eU40rEGro/jfErCBtfsYU
        2uFcN/jD9t5DTWKN9LufkgRlGJ0U5vw=
X-Google-Smtp-Source: AMrXdXvx3aKCgYYV84CfWNAHCBcL2hFe+KgLAS9PxwVBFKfAcBbdu3fV96lXwsQUXXbPq8v18PpOPA==
X-Received: by 2002:ac8:5749:0:b0:3a5:3234:cc7b with SMTP id 9-20020ac85749000000b003a53234cc7bmr30143309qtx.65.1673638109491;
        Fri, 13 Jan 2023 11:28:29 -0800 (PST)
Received: from mrbigstuff.yallywood.com (45-22-66-152.lightspeed.tukrga.sbcglobal.net. [45.22.66.152])
        by smtp.gmail.com with ESMTPSA id m20-20020ac866d4000000b003a6a7a20575sm10969317qtp.73.2023.01.13.11.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 11:28:29 -0800 (PST)
From:   Logan Blyth <mrbojangles3@gmail.com>
X-Google-Original-From: Logan Blyth <mr.bo.jangles3@gmail.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.org
Cc:     jon@solid-run.com
Subject: Add Support for SolidRun Clearfog CN9130
Date:   Fri, 13 Jan 2023 14:28:22 -0500
Message-Id: <20230113192823.6301-1-mr.bo.jangles3@gmail.com>
X-Mailer: git-send-email 2.39.0
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

This is the first device tree patch I have attempted. I have run
checkpatch.pl. I am happy to make modifications as requested.

