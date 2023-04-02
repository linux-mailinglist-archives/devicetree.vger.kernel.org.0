Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2316D39FA
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 21:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbjDBTXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 15:23:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDBTXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 15:23:06 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334366194
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 12:23:05 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id o2so26076153plg.4
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 12:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680463384;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vE40mJuVkISt0zg8IVAmmNvtPq9ArtEbvKSLEgCOttk=;
        b=TwRPnhnCOOAGGbAVHaQktRGBNd5rGhboJlwb8g2O9KZjC16mMprKYOWUW9XavqNu1l
         WLlsy1tJB2TGoEAEgh9LAQfguXiNxulkLPMms9K/HReh9z2cUhMMn7U6WNy8AEuvxicJ
         swL1XeSl8x49Imx48UzHuYyy5ekGX8lakRsN2UxKGPCgt8YUNGYe1wLenJ3GPRAvAMJO
         ad5t82wRD7wA17vilU8g1L9PZ1YF86uocyiLNCUz2ID9Rz0P1KHRO+NC3gRE4ZTWX8P5
         59DZ2oybQNxkYf81/udJipsMVy7HZksSscJi8dBqfPuLpoSZgCvDc6Y52gA+YhgMTnuy
         Wg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680463384;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vE40mJuVkISt0zg8IVAmmNvtPq9ArtEbvKSLEgCOttk=;
        b=JaWC46tnFC3g4rMw/ibF32EHGcevyzNMaLWFxnvjCdyYt0X6RJSscVcQFGFmZ+WEK3
         yflYrFeOF5WjPshdvjPgXVty0iKfypZlgHyXuw85Rr3Sf40TzyoTNCR2ulGB5+nSQn3S
         /a5T5XaqFbt9EXqpWD4TakxHMll80DxrJ2/wSj7/xdAO/vVJTG9hnXdSYYeQ4c8Dn9KQ
         Yr4rntuzsXcUDMLCYWSGwd0BPxymRuxsMF4NwPtwQH9FoO4po6TEuF5rKAEx6yYYjMcW
         OIf8eDCSdhobA142xA3isR7Euy+9UpXYPQkkb3O6wghv2lDE3Gp6J1cjtWYOFaRP+/4l
         WnHg==
X-Gm-Message-State: AAQBX9fsWPlLRZk6qnizUpO7ZafHpUcWtl3KpOr1g6MDlKvBNylpykY5
        hIUS+nFsqCgngOBrRcvNh2DZVDLGXsmQvC6ONrY=
X-Google-Smtp-Source: AKy350Zd+/wW23AwEjuqo3eWsl5u+NrmVu1w/cHtr2A4fYMr3uPvIyZ0HGiU+llgheJraqztaXSsrnRbA5B0F7flqE8=
X-Received: by 2002:a17:902:b196:b0:19f:36ab:c34 with SMTP id
 s22-20020a170902b19600b0019f36ab0c34mr11744326plr.10.1680463384710; Sun, 02
 Apr 2023 12:23:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:902:d212:b0:1a1:b153:bc6f with HTTP; Sun, 2 Apr 2023
 12:23:04 -0700 (PDT)
Reply-To: lassounadage563@gmail.com
From:   Ms Nadage Lassou <nadagelassou@gmail.com>
Date:   Sun, 2 Apr 2023 20:23:04 +0100
Message-ID: <CAJ97MqSuro_c5CJycfAoXjAq=GeSC=8jkbdrHW4t5biPm-ighg@mail.gmail.com>
Subject: PLEASE REPLY BACK URGENT
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        SUBJ_ALL_CAPS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings.

I am Ms Nadage Lassou,I have something important to discuss with you.
i will send you the details once i hear from you.
Thanks,
Ms Nadage Lassou
