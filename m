Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 682EE75B770
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 21:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbjGTTHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 15:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbjGTTHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 15:07:48 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 214632123
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:07:43 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fb7589b187so1774091e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689880061; x=1690484861;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YAm3I2W6xmEBSuO17GToW44o1MBPeOESCU3v3yuJkbM=;
        b=JzhpgZ1+/jGFhh6NxqVeG1rDjXHbOX9YWKTOVMAoMBZLOrJlC/gNXqv9raArt3IlcT
         mnLQl1zHdB9KANTUO46sYP7uCQR5uXOZ2Qznki1BBdNMyBCDkDQaj8IeuGcM09YPedbX
         GP/HysflatDkMu40Duf20b9eN7QK7oitZKLrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689880061; x=1690484861;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YAm3I2W6xmEBSuO17GToW44o1MBPeOESCU3v3yuJkbM=;
        b=QCD/DmoO2Ql/A+eaiLbNa/Z7bpPsuJEOIdu0UJ1CR8dT4OLrzLTPjQX/KBKtmzhLTn
         VXA6CEj9WMew0HJA985DGjN28LK76CRVa8hlYrC8EuI+TOSlUX3uOjAA39FyKthXDb0p
         2f7NO132Acf3S5/zrvmLn0QS5URbliehum6QRx3ae+LkXcCVALqz2lwOPZ5vkOiaInWc
         lzyOLoUXBYWbCfRy76hk0WEug3BJRlgbX6Mv1Uw8xkKEMg9FCNeJFo8W+ewUX4nspnMA
         2z//VBXPUqzacWeD+uFu5IKNuSQp+G+Xj+2FBudndZVJwdhBu4Eishifnub8cQpjIV50
         /Afw==
X-Gm-Message-State: ABy/qLZrVTiLKQIZZrvgTfiom3lP6lYApQNo1hwd64biYuXYgYeSMDvq
        qcQzxOfBtFYHgwV+4StBkARQy6pDkkTu5ktwz3Z7KTlA1o2Bhs1PpfjXYw==
X-Google-Smtp-Source: APBJJlEcaU9lce/qPo5+3WDqEbxgmhaifCJTBzC/fTwkI04sB/UhmX08LUDY2HaxATXFvezPde4kr6qjlxeC3zZ2pkA=
X-Received: by 2002:ac2:4d9c:0:b0:4f9:54f0:b6db with SMTP id
 g28-20020ac24d9c000000b004f954f0b6dbmr2536045lfe.13.1689880060449; Thu, 20
 Jul 2023 12:07:40 -0700 (PDT)
MIME-Version: 1.0
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 20 Jul 2023 13:07:29 -0600
Message-ID: <CAPnjgZ0=ABfzGTZ-qczMgY=q1ksG+crN2ko-0mGGjTQ8i8-qBg@mail.gmail.com>
Subject: duplicate '$id' value
To:     Devicetree Discuss <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

With 35e8aba I am seeing lots of these warnings:

$ PYTHONPATH=. tools/dt-mk-schema -j dtschema/schemas >processed-schema.json
/usr/local/google/home/sjg/cosarm/dt-schema/dtschema/schemas/chosen.yaml:
duplicate '$id' value 'http://devicetree.org/schemas/chosen.yaml#'
...

Am I doing something wrong?

Thanks,
Simon
