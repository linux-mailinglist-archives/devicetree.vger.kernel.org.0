Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D34404DA3BF
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:09:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351557AbiCOUK5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:10:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351560AbiCOUK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:10:56 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 661B93B573
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647374982;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=cVuRUCzWQ8sHp4iijGuH6jG3CMenp456hE40B3rmy5w=;
        b=WTWxPsBNVgrjsNcItL4TKpbs2/Jd47s1zOx/cZOi0lKbY0gdyxu8kxVl99Z3BmzJGcWtDN
        OZ2vTN9JPIfupI8MLVF1SOW8HSH79esBcjK1pWwSzT9iPD3RAukhmdc8tzAaGDFCBvOk2s
        mV2HytoCqCVzzq/blVnwPr5jOdsilZc=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-119-KsNTIP9CPrqhZOdWTNrOvA-1; Tue, 15 Mar 2022 16:09:41 -0400
X-MC-Unique: KsNTIP9CPrqhZOdWTNrOvA-1
Received: by mail-qk1-f197.google.com with SMTP id h68-20020a376c47000000b0067e05dade89so246123qkc.2
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cVuRUCzWQ8sHp4iijGuH6jG3CMenp456hE40B3rmy5w=;
        b=SX4lHSUJFWxV2fRVJkynHctJxLLQyVF+5hdRZ/vPWrEgM9lWk183k3pEZFgYWptXki
         89aHo/4D2jW/IDFFJ0sL1DUumtRzViSbWAo58IKcrcN8WOKE8LldmoDOArCTG5VPsA43
         zo09pHnlhN9GtRu3yLrbkhKHbIapehw/d++jBWaVW4HNyIsnP/qXu0Fm071T6yMWKrkO
         9j/bJkjvxG2fwJk/BupD53U1wss47S04ZVOh5d+gEPSwCqxZkiupBGulOrwjAbRZKkbg
         IYzSKF9KrLYG2IvKdtilod8pF+lb9Fn/uSt8q829Hc7DRqUmtR7REqg0Ppx5KpBH1dEn
         VpsA==
X-Gm-Message-State: AOAM532qZ8WfXf2a0XsqTEjrtO+7E7zhP08nbtWWqc9FYNUe8ouECTgf
        +mcpg7bN8y2oWLA63cNtPSNe4olQ/9Nt6fgbR2dCNGSKYnBXnpBY6xobUIBD5Phqt8wKrXf8jRY
        hHZ1Wx8U8bNI9ospx6eYfVA==
X-Received: by 2002:a05:6214:2689:b0:435:be79:a17e with SMTP id gm9-20020a056214268900b00435be79a17emr22493336qvb.35.1647374981037;
        Tue, 15 Mar 2022 13:09:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzuPkjuOo9bT0rnQm4l+mCvOeMmKIO0U+oT7rObYdgyQ8gKGTTXcMrZp9grdWrNFpk95GFfDA==
X-Received: by 2002:a05:6214:2689:b0:435:be79:a17e with SMTP id gm9-20020a056214268900b00435be79a17emr22493322qvb.35.1647374980830;
        Tue, 15 Mar 2022 13:09:40 -0700 (PDT)
Received: from fedora.hitronhub.home (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id 197-20020a3703ce000000b0067af869ffa6sm9582433qkd.127.2022.03.15.13.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 13:09:40 -0700 (PDT)
From:   Adrien Thierry <athierry@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Adrien Thierry <athierry@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gaston Gonzalez <gascoar@gmail.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        linux-staging@lists.linux.dev
Subject: [PATCH 0/2] Add support for bcm2711 in vchiq_arm
Date:   Tue, 15 Mar 2022 16:09:27 -0400
Message-Id: <20220315200929.74952-1-athierry@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The goal of this patch series is to use the bcm2711 compatible string in
vchiq_arm for the Raspberry Pi 4. This allows using the downstream device
tree with the upstream kernel.

Adrien Thierry (2):
  dt-bindings: soc: bcm: bcm2835-vchiq: Add support for bcm2711
  staging: vchiq_arm: Use bcm2711 compatible string for bcm2711-based
    RPi

 .../devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml     | 6 ++++++
 arch/arm/boot/dts/bcm2711-rpi.dtsi                          | 1 +
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 5 +++++
 3 files changed, 12 insertions(+)


base-commit: 09688c0166e76ce2fb85e86b9d99be8b0084cdf9
-- 
2.35.1

