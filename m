Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB09B5371AB
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 17:45:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229978AbiE2Pph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 11:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbiE2Ppg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 11:45:36 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA65169293
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 08:45:35 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id c15-20020a9d684f000000b0060b097c71ecso6231912oto.10
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 08:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
        b=oh4rr95iQh6Mc7BvJW/B5Gu/VJaKNiuu/UnrbEw077vRcURHt7BZTHmB1qHJVuMU96
         gaNrxdhKiJJAnxq3iAYwSTDrlmkgGVkCFjplUP9nlyI5kyMH+/mkUZ0n5KlNeYOE6Te0
         quind0SOn4OrCTrllVVckIXnN7xWRlv67F0eX1tgMwS7NvB7OZ4416OnK38iBQ1s6+26
         ZRM9AMNuqkQK2+wSn9ersPyxHjnp0/eQCADUn0FY12+s7simRtw1VQxruUiNesWNK0Jz
         tiS0ZT2VxCyhFOkXEgL9s2AhzxCfbCvYk/GE0IO9KXRkp9ys70wlMIGrXnbOMBHysMof
         cBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
        b=KCCDiVDl9UIbGqhZNVeX9Nx44+iObFo/T8ViOMsdw4yl9QNT/mEJyVtBfTZ3woZPb+
         4YSi8cpgs9b+epkfS82kEasjsAVKJ2PNAvNu6BtIBRMguQ9rlz663l0nvqsb0KzVpKVq
         qx3Hzu8dubukGi59NLBHHNMDuR9IdaTNL9pcL0ksEP6lw2zXkpUntFd/JiGex1B36l6E
         2FkovY6GU6scopJXRMz42VVwwofoU8dW4SDGWffXrQ8DtAmL3ZA8RqRvbImzsioC+S4Y
         ON1qDuybx/x2V/xsmIA08ZPMHucgI3YLsB8LIswOghbI8rpPzOV2cSPxGw/thuCjTCkx
         iDeQ==
X-Gm-Message-State: AOAM5304FyhfLo3XASti5oTrqvHTtmx5Nx6d6NIfFJMrzkEj36M2SHN0
        3FTQ2yl5Bq93hr7S4f6jpo9Nm40T4Y2nENLn9O0=
X-Google-Smtp-Source: ABdhPJx6tyAyu0y7TsG3UgLqUk/HGZax1wGC55H62sSKLJZUxoEj3IW/wf640WU7RQDWbbYB65lbTVFRufwND9yrlR8=
X-Received: by 2002:a9d:6e97:0:b0:60b:3a60:142b with SMTP id
 a23-20020a9d6e97000000b0060b3a60142bmr7421215otr.217.1653839135217; Sun, 29
 May 2022 08:45:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:560a:b0:a3:6e92:e156 with HTTP; Sun, 29 May 2022
 08:45:34 -0700 (PDT)
Reply-To: BAkermarrtin@gmail.com
From:   Martin Baker <m.evelinemartins@gmail.com>
Date:   Sun, 29 May 2022 15:45:34 +0000
Message-ID: <CAEvQOXT08SQ9UqnD5jrD1SU5-mtxOiKSp8X7nN=Q1a2O9NX4fA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,


I wrote to you this morning because I have something to tell you, please
let me know if you read my previous post today.
