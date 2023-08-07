Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2E4F772D2A
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 19:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230182AbjHGRmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 13:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjHGRmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 13:42:13 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED8BE74
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 10:42:11 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-d5869d96657so425610276.1
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 10:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1691430130; x=1692034930;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X5ConTVMYR+hNcMKRuWPbZSogz40TLZhvQ4LLanWWLY=;
        b=RAT7y2a133VHxwiJScPfFsisXfuI7fno1W2Z3q9AsaRORe8ocqCcCWLw/g9tmhzrFg
         ZKHAdX8MZ3hLAAx1PfSZgredXe8V+pYLth/RHEovl1MYWpC3ZTve3m9/XWo7n8F1Uv4e
         mbvYEMU3Fe/2y598IqCwZYEF+e+BqFzv0P4pBIYwVLkuypS0hJxcKPx5MPFWlRWJvYMR
         JbL53v0VKu4uefDeeN9yzX89WD8+uxeaYKuVznKBKv/f3oMJREXVzD6SiTG8TGCk0SFX
         hDDeYPkxzb126hW+NjpEqCRUHmUwg47JXynkFT01kTK2fpN4nKAm8c+TKaWXeqqRM3fw
         EJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691430130; x=1692034930;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X5ConTVMYR+hNcMKRuWPbZSogz40TLZhvQ4LLanWWLY=;
        b=jL29+Ku5fEHgzG7ieRRTvxh3Qk28h8O1hOiUuZUyMD7B+B9YtKUKPxAkoTTr/45vjD
         WUnyU7yXhmSeJoyNkFcFOwpwaDDu0kaQwm+aGh+EcimvPDdXyu9lSHdraDVbcqbGKds5
         Pjxxm/rolZ1N02zCY6wEZyAFPiR4TOQx2v7it8C4AAGPIw/D34X6zEdypqScbsP5EUfF
         Y8BMga91nUvNelipn6/ymP3dJKdtpgmTg/x9xqTfmSqbwmG0YvXqABiEiQIoApJ9mxs7
         Uq9AgFXBYsEYg2a2lnEY0pKFlFFfWm79lGkgtfTVnDg/VZPDpadg/DvfE9ODrhCOGXH9
         +JCQ==
X-Gm-Message-State: AOJu0YyM4zWrj7bysJY4JbGZ9PoI8qctwFfJMBeBVJMo29CZ3X7AG2nk
        F+eUW0qH2PQ7noJ6eTCBMlAgn7HmBCiD
X-Google-Smtp-Source: AGHT+IGbyY46WAJyJv24wxW1G8C4LbGmW3k7HY5BA+NrlR8eH0GezNgjnv1MmldYGMBKleameaE7yuDVE8vu
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:c7c:f93d:372a:1641])
 (user=kyletso job=sendgmr) by 2002:a25:6990:0:b0:d47:5cc3:9917 with SMTP id
 e138-20020a256990000000b00d475cc39917mr51184ybc.9.1691430130498; Mon, 07 Aug
 2023 10:42:10 -0700 (PDT)
Date:   Tue,  8 Aug 2023 01:41:57 +0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.640.ga95def55d0-goog
Message-ID: <20230807174159.1140957-1-kyletso@google.com>
Subject: [PATCH v2 0/2] mutiple selectable capabilities in tcpm
From:   Kyle Tso <kyletso@google.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc:     badhri@google.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

updates in v2

dt-bindings: connector: Add child nodes for multiple PD capabilities
  - revised the dt-bindings

usb: typec: tcpm: Support multiple capabilities
  - Added missing cleanups in the function tcpm_port_unregister_pd

---
Original cover letter:

In commit a7cff92f0635 ("usb: typec: USB Power Delivery helpers for
ports and partners"), typec_operations has two new ops .pd_get and
.pd_set providing selection of different PD capabilities. This commit
implements these two ops in tcpm.

To support multiple capabilities, new dt-binding properties need to be
defined to create a tree structure for the driver to get each set of
capabilities one by one. The first tier of the child node under
connector is called "capabilities". Under this child node lies several
2nd tier of child nodes whose names are in the pattern of ^caps[0-9]+$.
And the source and sink capabilities are placed in these nodes.

Kyle Tso (2):
  dt-bindings: connector: Add child nodes for multiple PD capabilities
  usb: typec: tcpm: Support multiple capabilities

 .../bindings/connector/usb-connector.yaml     |  80 +++-
 drivers/usb/typec/tcpm/tcpm.c                 | 419 ++++++++++++++----
 2 files changed, 390 insertions(+), 109 deletions(-)

-- 
2.41.0.585.gd2178a4bd4-goog

