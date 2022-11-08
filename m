Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E219D620797
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 04:38:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232270AbiKHDiT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 22:38:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232060AbiKHDiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 22:38:19 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53F2A265C
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 19:38:18 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id j25-20020a056830015900b0066ca2cd96daso4164853otp.10
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 19:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bVUIaTm2OcnUOvq/e1AMBLhwaobJk/dHNcseM68nMDE=;
        b=4OTwbz++S2lFBd7p9YbgqZf0sJToGBdu3t/CABE1wTgwp1vmdIHgZBjZC1HCYKRvao
         xcry6ozi7giXxKk+OMoO0Oatgyp9OrJ161JlyzB6P6Th9N/uHKR4v1sd+IQ6KX6DuxVM
         TKFeJ7KcSGyiqL4Z1JouGzRtupDb7OR813DRAGWmz/93p6mkZdax+rKynp/E3IigvAmf
         e/vSPFzuYkGL7eakdo0Df8ekL+b3cOwyaryMwflVEeqnIYwwTl44Pf0rPd6JPl+ZeQl8
         NCUweQxw2s+MNpcxXhdmIz3+n9qS67vUGOtZ4jAdl6kK+A5tM7jvEPZIdXt48i6s+Yrl
         7hPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVUIaTm2OcnUOvq/e1AMBLhwaobJk/dHNcseM68nMDE=;
        b=wjBmV9s5KmE3K/YsTxS48CrSPQ+9Z4WLLBgm47RFpR+bQkoPgTw0pY4eKak7id8hMI
         sQV3XWDJyTAp+65KwA6pdt+417Mjcc2zBXBauruOSfo+ihphbxpllAWoxh/AV5AYMSGT
         VGqkye2tSa9JX4Ck1kEVRkf5WDCTr1sFeSNoXoyJAjYsgQSt0/OmDrEZLpbhuNJoLmj2
         gG/DH3kiaOqvFMPa8CtxuQbGrvtTgt4DTqhuVGqHairA7f4fi6WWFQ7f1yOW0chdRiBr
         l/IKWq6On+bsmFAaE5RjGVRtylKh1D62tsQFfgpklbEfhEPm0sI8hVDJHQj0MQd3DUFn
         ITFA==
X-Gm-Message-State: ACrzQf2r1F4q/ctrQ779/i9JXd0uTSs6cXJkqdp57nUaeAKMV4zTb2d/
        cUtplUD05RiS7NP2/A6TOR7ktsF+P11r3iE9
X-Google-Smtp-Source: AMsMyM4XzEeMxXUej/QSXp/FJhqrKoMM4ktFvoe/2G4J0R6hsDQm6srV2qNoy/vSnKsbJ9Mg8JDngw==
X-Received: by 2002:a05:6830:4411:b0:66c:96fe:a4cf with SMTP id q17-20020a056830441100b0066c96fea4cfmr9586353otv.187.1667878697296;
        Mon, 07 Nov 2022 19:38:17 -0800 (PST)
Received: from nroth-pc.attlocal.net ([2600:1700:20:20c0:ffe2:ef38:3f9e:dd6d])
        by smtp.gmail.com with ESMTPSA id k15-20020a056870350f00b0010d5d5c3fc3sm4053672oah.8.2022.11.07.19.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 19:38:16 -0800 (PST)
From:   Nicholas Roth <nicholas@rothemail.net>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Subject: ov8858 device tree addition
Date:   Mon,  7 Nov 2022 21:38:12 -0600
Message-Id: <20221108033813.16502-1-nicholas@rothemail.net>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All,

I've submitted a patch to linux-media that adds a driver for
the Omnivision OV8858 image sensor. Jacopo, a reviewer, asked
me to submit a device tree binding as well.

The relevant linux-media patch is entitled:
media: i2c: ov8858 Add driver for ov8858

Thanks,
-Nicholas


